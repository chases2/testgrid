#!/usr/bin/env bash
# Copyright 2021 The TestGrid Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


set -o nounset
set -o errexit

topic=
project=
ack=10
exp=24h
canary=

while getopts "t:p:a:e:c" flag; do
    case "$flag" in
        t) topic="$OPTARG";;
        p) project="$OPTARG";;
        a) ack="$OPTARG";;
        e) exp="$OPTARG";;
        c) canary=1;;
    esac
done

shift $((OPTIND -1))

if [[ $# -lt 1 || -z "$topic" ]]; then
    echo "Usage: $(basename "$0") [-a $ack] [-e $exp] -c [-p $project] <-t TOPIC> SUBSCRIPTION [EXTRA ...]" >&2
    echo >&2
    echo "  -a ACK  : seconds to allow testgrid to ack a message" >&2
    echo "  -c      : also create a SUBSCRIPTION-canary" >&2
    echo "  -e EXP  : number of s/m/h/d to keep unack'd messages" >&2
    echo "  -p PROJ : project to create subscription" >&2
    echo "  -t TOPIC: projects/TOPIC_PROJ/topics/TOPIC" >&2
    echo >&2
    echo "More info: gcloud pusbsub subscriptions" >&2
    exit 1
fi

names=("$1")
if [[ -n "$canary" ]]; then
    names+=("$1-canary")
fi
shift

log() {
    (
        set -o xtrace
        "$@"
    )
}

for name in "${names[@]}"; do
    verb=create
    topic_arg=("--topic=$topic")
    old=$(gcloud pubsub subscriptions describe "--project=$project" "$name" --format='value(topic)' 2>/dev/null || true)
    if [[ -n "$old" ]]; then
        if [[ "$old" == "$topic" ]]; then
            verb=update
            topic_arg=()
        else
            echo "WARNING: $project/$name already subscribed to $old." >&2
            read -p "Delete and replace with a subscription to $topic [yes/NO]: " answer
            case $answer in
                y*|Y*) ;;
                *) exit 1
            esac
            log gcloud pubsub subscriptions "--project=$project" delete "$name"
        fi
    fi
    log gcloud pubsub subscriptions "$verb" \
        "--project=$project" \
        "$name" \
        "--ack-deadline=$ack" \
        "--expiration-period=$exp" \
        "${topic_arg[@]}" \
        "$@"
done

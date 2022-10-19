#!/bin/bash

flutter build web
gcloud app deploy --project=${1}

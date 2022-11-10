// @generated by protobuf-ts 2.8.1 with parameter long_type_string
// @generated from protobuf file "pb/updater/updater.proto" (syntax proto3)
// tslint:disable
import { ServiceType } from '@protobuf-ts/runtime-rpc';
import type { BinaryWriteOptions } from '@protobuf-ts/runtime';
import type { IBinaryWriter } from '@protobuf-ts/runtime';
import { WireType } from '@protobuf-ts/runtime';
import type { BinaryReadOptions } from '@protobuf-ts/runtime';
import type { IBinaryReader } from '@protobuf-ts/runtime';
import { UnknownFieldHandler } from '@protobuf-ts/runtime';
import type { PartialMessage } from '@protobuf-ts/runtime';
import { reflectionMergePartial } from '@protobuf-ts/runtime';
import { MESSAGE_TYPE } from '@protobuf-ts/runtime';
import { MessageType } from '@protobuf-ts/runtime';
import { UpdateInfo } from '../state/state';
import { DashboardTabSummary } from '../summary/summary';
import { TestGroup } from '../config/config';
import { DashboardTab } from '../config/config';
/**
 * An identifier of a dashboard tab, i.e., the name of the dashboard and tab.
 *
 * @generated from protobuf message DashboardTabIdentifier
 */
export interface DashboardTabIdentifier {
  /**
   * The name of a dashboard containing the dashboard tab.
   *
   * @generated from protobuf field: string dashboard_name = 1;
   */
  dashboardName: string;
  /**
   * The dashboard tab to update.
   *
   * @generated from protobuf field: DashboardTab dashboard_tab = 2;
   */
  dashboardTab?: DashboardTab;
}
/**
 * An updater request to update a test group.
 *
 * @generated from protobuf message UpdateRequest
 */
export interface UpdateRequest {
  /**
   * The test group configuration to update.
   *
   * @generated from protobuf field: TestGroup test_group = 1;
   */
  testGroup?: TestGroup;
  /**
   * A list of dashboards tabs backed by the group being updated.
   *
   * @generated from protobuf field: repeated DashboardTabIdentifier dashboard_tab_identifiers = 2;
   */
  dashboardTabIdentifiers: DashboardTabIdentifier[];
}
/**
 * An updater response after updating a test group.
 *
 * @generated from protobuf message UpdateResponse
 */
export interface UpdateResponse {
  /**
   * The time taken to perform the update in milliseconds.
   *
   * @generated from protobuf field: uint32 update_time_millis = 1;
   */
  updateTimeMillis: number;
  /**
   * The size of the compressed output file in bytes.
   *
   * @generated from protobuf field: uint32 output_size_bytes = 2;
   */
  outputSizeBytes: number;
  /**
   * Summaries of dashboard tabs associated with this group.
   *
   * @generated from protobuf field: repeated DashboardTabSummary dashboard_tab_summaries = 3;
   */
  dashboardTabSummaries: DashboardTabSummary[];
  /**
   * Metrics associated with the update for this group.
   *
   * @generated from protobuf field: UpdateInfo update_entry = 4;
   */
  updateEntry?: UpdateInfo;
}
// @generated message type with reflection information, may provide speed optimized methods
class DashboardTabIdentifier$Type extends MessageType<DashboardTabIdentifier> {
  constructor() {
    super('DashboardTabIdentifier', [
      {
        no: 1,
        name: 'dashboard_name',
        kind: 'scalar',
        T: 9 /*ScalarType.STRING*/,
      },
      { no: 2, name: 'dashboard_tab', kind: 'message', T: () => DashboardTab },
    ]);
  }
  create(
    value?: PartialMessage<DashboardTabIdentifier>
  ): DashboardTabIdentifier {
    const message = { dashboardName: '' };
    globalThis.Object.defineProperty(message, MESSAGE_TYPE, {
      enumerable: false,
      value: this,
    });
    if (value !== undefined)
      reflectionMergePartial<DashboardTabIdentifier>(this, message, value);
    return message;
  }
  internalBinaryRead(
    reader: IBinaryReader,
    length: number,
    options: BinaryReadOptions,
    target?: DashboardTabIdentifier
  ): DashboardTabIdentifier {
    let message = target ?? this.create(),
      end = reader.pos + length;
    while (reader.pos < end) {
      let [fieldNo, wireType] = reader.tag();
      switch (fieldNo) {
        case /* string dashboard_name */ 1:
          message.dashboardName = reader.string();
          break;
        case /* DashboardTab dashboard_tab */ 2:
          message.dashboardTab = DashboardTab.internalBinaryRead(
            reader,
            reader.uint32(),
            options,
            message.dashboardTab
          );
          break;
        default:
          let u = options.readUnknownField;
          if (u === 'throw')
            throw new globalThis.Error(
              `Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`
            );
          let d = reader.skip(wireType);
          if (u !== false)
            (u === true ? UnknownFieldHandler.onRead : u)(
              this.typeName,
              message,
              fieldNo,
              wireType,
              d
            );
      }
    }
    return message;
  }
  internalBinaryWrite(
    message: DashboardTabIdentifier,
    writer: IBinaryWriter,
    options: BinaryWriteOptions
  ): IBinaryWriter {
    /* string dashboard_name = 1; */
    if (message.dashboardName !== '')
      writer.tag(1, WireType.LengthDelimited).string(message.dashboardName);
    /* DashboardTab dashboard_tab = 2; */
    if (message.dashboardTab)
      DashboardTab.internalBinaryWrite(
        message.dashboardTab,
        writer.tag(2, WireType.LengthDelimited).fork(),
        options
      ).join();
    let u = options.writeUnknownFields;
    if (u !== false)
      (u == true ? UnknownFieldHandler.onWrite : u)(
        this.typeName,
        message,
        writer
      );
    return writer;
  }
}
/**
 * @generated MessageType for protobuf message DashboardTabIdentifier
 */
export const DashboardTabIdentifier = new DashboardTabIdentifier$Type();
// @generated message type with reflection information, may provide speed optimized methods
class UpdateRequest$Type extends MessageType<UpdateRequest> {
  constructor() {
    super('UpdateRequest', [
      { no: 1, name: 'test_group', kind: 'message', T: () => TestGroup },
      {
        no: 2,
        name: 'dashboard_tab_identifiers',
        kind: 'message',
        repeat: 1 /*RepeatType.PACKED*/,
        T: () => DashboardTabIdentifier,
      },
    ]);
  }
  create(value?: PartialMessage<UpdateRequest>): UpdateRequest {
    const message = { dashboardTabIdentifiers: [] };
    globalThis.Object.defineProperty(message, MESSAGE_TYPE, {
      enumerable: false,
      value: this,
    });
    if (value !== undefined)
      reflectionMergePartial<UpdateRequest>(this, message, value);
    return message;
  }
  internalBinaryRead(
    reader: IBinaryReader,
    length: number,
    options: BinaryReadOptions,
    target?: UpdateRequest
  ): UpdateRequest {
    let message = target ?? this.create(),
      end = reader.pos + length;
    while (reader.pos < end) {
      let [fieldNo, wireType] = reader.tag();
      switch (fieldNo) {
        case /* TestGroup test_group */ 1:
          message.testGroup = TestGroup.internalBinaryRead(
            reader,
            reader.uint32(),
            options,
            message.testGroup
          );
          break;
        case /* repeated DashboardTabIdentifier dashboard_tab_identifiers */ 2:
          message.dashboardTabIdentifiers.push(
            DashboardTabIdentifier.internalBinaryRead(
              reader,
              reader.uint32(),
              options
            )
          );
          break;
        default:
          let u = options.readUnknownField;
          if (u === 'throw')
            throw new globalThis.Error(
              `Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`
            );
          let d = reader.skip(wireType);
          if (u !== false)
            (u === true ? UnknownFieldHandler.onRead : u)(
              this.typeName,
              message,
              fieldNo,
              wireType,
              d
            );
      }
    }
    return message;
  }
  internalBinaryWrite(
    message: UpdateRequest,
    writer: IBinaryWriter,
    options: BinaryWriteOptions
  ): IBinaryWriter {
    /* TestGroup test_group = 1; */
    if (message.testGroup)
      TestGroup.internalBinaryWrite(
        message.testGroup,
        writer.tag(1, WireType.LengthDelimited).fork(),
        options
      ).join();
    /* repeated DashboardTabIdentifier dashboard_tab_identifiers = 2; */
    for (let i = 0; i < message.dashboardTabIdentifiers.length; i++)
      DashboardTabIdentifier.internalBinaryWrite(
        message.dashboardTabIdentifiers[i],
        writer.tag(2, WireType.LengthDelimited).fork(),
        options
      ).join();
    let u = options.writeUnknownFields;
    if (u !== false)
      (u == true ? UnknownFieldHandler.onWrite : u)(
        this.typeName,
        message,
        writer
      );
    return writer;
  }
}
/**
 * @generated MessageType for protobuf message UpdateRequest
 */
export const UpdateRequest = new UpdateRequest$Type();
// @generated message type with reflection information, may provide speed optimized methods
class UpdateResponse$Type extends MessageType<UpdateResponse> {
  constructor() {
    super('UpdateResponse', [
      {
        no: 1,
        name: 'update_time_millis',
        kind: 'scalar',
        T: 13 /*ScalarType.UINT32*/,
      },
      {
        no: 2,
        name: 'output_size_bytes',
        kind: 'scalar',
        T: 13 /*ScalarType.UINT32*/,
      },
      {
        no: 3,
        name: 'dashboard_tab_summaries',
        kind: 'message',
        repeat: 1 /*RepeatType.PACKED*/,
        T: () => DashboardTabSummary,
      },
      { no: 4, name: 'update_entry', kind: 'message', T: () => UpdateInfo },
    ]);
  }
  create(value?: PartialMessage<UpdateResponse>): UpdateResponse {
    const message = {
      updateTimeMillis: 0,
      outputSizeBytes: 0,
      dashboardTabSummaries: [],
    };
    globalThis.Object.defineProperty(message, MESSAGE_TYPE, {
      enumerable: false,
      value: this,
    });
    if (value !== undefined)
      reflectionMergePartial<UpdateResponse>(this, message, value);
    return message;
  }
  internalBinaryRead(
    reader: IBinaryReader,
    length: number,
    options: BinaryReadOptions,
    target?: UpdateResponse
  ): UpdateResponse {
    let message = target ?? this.create(),
      end = reader.pos + length;
    while (reader.pos < end) {
      let [fieldNo, wireType] = reader.tag();
      switch (fieldNo) {
        case /* uint32 update_time_millis */ 1:
          message.updateTimeMillis = reader.uint32();
          break;
        case /* uint32 output_size_bytes */ 2:
          message.outputSizeBytes = reader.uint32();
          break;
        case /* repeated DashboardTabSummary dashboard_tab_summaries */ 3:
          message.dashboardTabSummaries.push(
            DashboardTabSummary.internalBinaryRead(
              reader,
              reader.uint32(),
              options
            )
          );
          break;
        case /* UpdateInfo update_entry */ 4:
          message.updateEntry = UpdateInfo.internalBinaryRead(
            reader,
            reader.uint32(),
            options,
            message.updateEntry
          );
          break;
        default:
          let u = options.readUnknownField;
          if (u === 'throw')
            throw new globalThis.Error(
              `Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`
            );
          let d = reader.skip(wireType);
          if (u !== false)
            (u === true ? UnknownFieldHandler.onRead : u)(
              this.typeName,
              message,
              fieldNo,
              wireType,
              d
            );
      }
    }
    return message;
  }
  internalBinaryWrite(
    message: UpdateResponse,
    writer: IBinaryWriter,
    options: BinaryWriteOptions
  ): IBinaryWriter {
    /* uint32 update_time_millis = 1; */
    if (message.updateTimeMillis !== 0)
      writer.tag(1, WireType.Varint).uint32(message.updateTimeMillis);
    /* uint32 output_size_bytes = 2; */
    if (message.outputSizeBytes !== 0)
      writer.tag(2, WireType.Varint).uint32(message.outputSizeBytes);
    /* repeated DashboardTabSummary dashboard_tab_summaries = 3; */
    for (let i = 0; i < message.dashboardTabSummaries.length; i++)
      DashboardTabSummary.internalBinaryWrite(
        message.dashboardTabSummaries[i],
        writer.tag(3, WireType.LengthDelimited).fork(),
        options
      ).join();
    /* UpdateInfo update_entry = 4; */
    if (message.updateEntry)
      UpdateInfo.internalBinaryWrite(
        message.updateEntry,
        writer.tag(4, WireType.LengthDelimited).fork(),
        options
      ).join();
    let u = options.writeUnknownFields;
    if (u !== false)
      (u == true ? UnknownFieldHandler.onWrite : u)(
        this.typeName,
        message,
        writer
      );
    return writer;
  }
}
/**
 * @generated MessageType for protobuf message UpdateResponse
 */
export const UpdateResponse = new UpdateResponse$Type();
/**
 * @generated ServiceType for protobuf service Updater
 */
export const Updater = new ServiceType('Updater', [
  { name: 'Update', options: {}, I: UpdateRequest, O: UpdateResponse },
  { name: 'UpdateBugs', options: {}, I: UpdateRequest, O: UpdateResponse },
]);
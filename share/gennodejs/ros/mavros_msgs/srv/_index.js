
"use strict";

let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let CommandAck = require('./CommandAck.js')
let ParamSet = require('./ParamSet.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let CommandBool = require('./CommandBool.js')
let CommandHome = require('./CommandHome.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let CommandInt = require('./CommandInt.js')
let CommandTOL = require('./CommandTOL.js')
let FileList = require('./FileList.js')
let WaypointPush = require('./WaypointPush.js')
let CommandLong = require('./CommandLong.js')
let FileTruncate = require('./FileTruncate.js')
let ParamGet = require('./ParamGet.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let FileRemove = require('./FileRemove.js')
let MessageInterval = require('./MessageInterval.js')
let FileClose = require('./FileClose.js')
let WaypointPull = require('./WaypointPull.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let ParamPull = require('./ParamPull.js')
let StreamRate = require('./StreamRate.js')
let LogRequestList = require('./LogRequestList.js')
let SetMode = require('./SetMode.js')
let LogRequestData = require('./LogRequestData.js')
let SetMavFrame = require('./SetMavFrame.js')
let MountConfigure = require('./MountConfigure.js')
let FileChecksum = require('./FileChecksum.js')
let FileRename = require('./FileRename.js')
let FileMakeDir = require('./FileMakeDir.js')
let WaypointClear = require('./WaypointClear.js')
let FileWrite = require('./FileWrite.js')
let FileRead = require('./FileRead.js')
let ParamPush = require('./ParamPush.js')
let FileOpen = require('./FileOpen.js')

module.exports = {
  CommandTriggerInterval: CommandTriggerInterval,
  CommandAck: CommandAck,
  ParamSet: ParamSet,
  LogRequestEnd: LogRequestEnd,
  CommandVtolTransition: CommandVtolTransition,
  CommandBool: CommandBool,
  CommandHome: CommandHome,
  WaypointSetCurrent: WaypointSetCurrent,
  FileRemoveDir: FileRemoveDir,
  CommandInt: CommandInt,
  CommandTOL: CommandTOL,
  FileList: FileList,
  WaypointPush: WaypointPush,
  CommandLong: CommandLong,
  FileTruncate: FileTruncate,
  ParamGet: ParamGet,
  VehicleInfoGet: VehicleInfoGet,
  FileRemove: FileRemove,
  MessageInterval: MessageInterval,
  FileClose: FileClose,
  WaypointPull: WaypointPull,
  CommandTriggerControl: CommandTriggerControl,
  ParamPull: ParamPull,
  StreamRate: StreamRate,
  LogRequestList: LogRequestList,
  SetMode: SetMode,
  LogRequestData: LogRequestData,
  SetMavFrame: SetMavFrame,
  MountConfigure: MountConfigure,
  FileChecksum: FileChecksum,
  FileRename: FileRename,
  FileMakeDir: FileMakeDir,
  WaypointClear: WaypointClear,
  FileWrite: FileWrite,
  FileRead: FileRead,
  ParamPush: ParamPush,
  FileOpen: FileOpen,
};

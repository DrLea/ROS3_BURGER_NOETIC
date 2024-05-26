
"use strict";

let RCOut = require('./RCOut.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let ESCStatus = require('./ESCStatus.js');
let Thrust = require('./Thrust.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let Altitude = require('./Altitude.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let RTKBaseline = require('./RTKBaseline.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let BatteryStatus = require('./BatteryStatus.js');
let SysStatus = require('./SysStatus.js');
let LandingTarget = require('./LandingTarget.js');
let LogEntry = require('./LogEntry.js');
let RadioStatus = require('./RadioStatus.js');
let HilSensor = require('./HilSensor.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let Param = require('./Param.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let Mavlink = require('./Mavlink.js');
let Waypoint = require('./Waypoint.js');
let ESCInfo = require('./ESCInfo.js');
let VFR_HUD = require('./VFR_HUD.js');
let MountControl = require('./MountControl.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let TerrainReport = require('./TerrainReport.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let ManualControl = require('./ManualControl.js');
let WaypointReached = require('./WaypointReached.js');
let WaypointList = require('./WaypointList.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let HomePosition = require('./HomePosition.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let VehicleInfo = require('./VehicleInfo.js');
let Vibration = require('./Vibration.js');
let HilControls = require('./HilControls.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let ParamValue = require('./ParamValue.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let PositionTarget = require('./PositionTarget.js');
let DebugValue = require('./DebugValue.js');
let GPSRTK = require('./GPSRTK.js');
let GPSRAW = require('./GPSRAW.js');
let State = require('./State.js');
let CellularStatus = require('./CellularStatus.js');
let GPSINPUT = require('./GPSINPUT.js');
let FileEntry = require('./FileEntry.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let CommandCode = require('./CommandCode.js');
let StatusText = require('./StatusText.js');
let ExtendedState = require('./ExtendedState.js');
let RCIn = require('./RCIn.js');
let Tunnel = require('./Tunnel.js');
let HilGPS = require('./HilGPS.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let RTCM = require('./RTCM.js');
let Trajectory = require('./Trajectory.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let ActuatorControl = require('./ActuatorControl.js');
let LogData = require('./LogData.js');

module.exports = {
  RCOut: RCOut,
  OpticalFlowRad: OpticalFlowRad,
  ESCStatus: ESCStatus,
  Thrust: Thrust,
  WheelOdomStamped: WheelOdomStamped,
  Altitude: Altitude,
  OnboardComputerStatus: OnboardComputerStatus,
  RTKBaseline: RTKBaseline,
  CameraImageCaptured: CameraImageCaptured,
  BatteryStatus: BatteryStatus,
  SysStatus: SysStatus,
  LandingTarget: LandingTarget,
  LogEntry: LogEntry,
  RadioStatus: RadioStatus,
  HilSensor: HilSensor,
  PlayTuneV2: PlayTuneV2,
  Param: Param,
  CompanionProcessStatus: CompanionProcessStatus,
  Mavlink: Mavlink,
  Waypoint: Waypoint,
  ESCInfo: ESCInfo,
  VFR_HUD: VFR_HUD,
  MountControl: MountControl,
  NavControllerOutput: NavControllerOutput,
  ADSBVehicle: ADSBVehicle,
  TerrainReport: TerrainReport,
  EstimatorStatus: EstimatorStatus,
  ManualControl: ManualControl,
  WaypointReached: WaypointReached,
  WaypointList: WaypointList,
  GlobalPositionTarget: GlobalPositionTarget,
  ESCTelemetry: ESCTelemetry,
  HomePosition: HomePosition,
  CamIMUStamp: CamIMUStamp,
  VehicleInfo: VehicleInfo,
  Vibration: Vibration,
  HilControls: HilControls,
  ESCInfoItem: ESCInfoItem,
  HilActuatorControls: HilActuatorControls,
  ParamValue: ParamValue,
  TimesyncStatus: TimesyncStatus,
  ESCTelemetryItem: ESCTelemetryItem,
  PositionTarget: PositionTarget,
  DebugValue: DebugValue,
  GPSRTK: GPSRTK,
  GPSRAW: GPSRAW,
  State: State,
  CellularStatus: CellularStatus,
  GPSINPUT: GPSINPUT,
  FileEntry: FileEntry,
  OverrideRCIn: OverrideRCIn,
  CommandCode: CommandCode,
  StatusText: StatusText,
  ExtendedState: ExtendedState,
  RCIn: RCIn,
  Tunnel: Tunnel,
  HilGPS: HilGPS,
  AttitudeTarget: AttitudeTarget,
  ESCStatusItem: ESCStatusItem,
  RTCM: RTCM,
  Trajectory: Trajectory,
  MagnetometerReporter: MagnetometerReporter,
  HilStateQuaternion: HilStateQuaternion,
  ActuatorControl: ActuatorControl,
  LogData: LogData,
};

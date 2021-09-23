# /usr/include/opencascade/gp_QuaternionSLerp.hxx --> occt/gp/gp_QuaternionSLerp.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpquaternionslerp = "/usr/include/opencascade/gp_QuaternionSLerp.hxx"
type
  GpQuaternionSLerp* {.importcpp: "gp_QuaternionSLerp",
                      header: headerGpquaternionslerp, bycopy.} = object


proc interpolate*(theQStart: GpQuaternion; theQEnd: GpQuaternion; theT: StandardReal): GpQuaternion {.
    importcpp: "gp_QuaternionSLerp::Interpolate(@)",
    header: headerGpquaternionslerp.}
proc constructGpQuaternionSLerp*(): GpQuaternionSLerp {.constructor,
    importcpp: "gp_QuaternionSLerp(@)", header: headerGpquaternionslerp.}
proc constructGpQuaternionSLerp*(theQStart: GpQuaternion; theQEnd: GpQuaternion): GpQuaternionSLerp {.
    constructor, importcpp: "gp_QuaternionSLerp(@)",
    header: headerGpquaternionslerp.}
proc init*(this: var GpQuaternionSLerp; theQStart: GpQuaternion; theQEnd: GpQuaternion) {.
    importcpp: "Init", header: headerGpquaternionslerp.}
proc initFromUnit*(this: var GpQuaternionSLerp; theQStart: GpQuaternion;
                  theQEnd: GpQuaternion) {.importcpp: "InitFromUnit",
    header: headerGpquaternionslerp.}
proc interpolate*(this: GpQuaternionSLerp; theT: StandardReal;
                 theResultQ: var GpQuaternion) {.noSideEffect,
    importcpp: "Interpolate", header: headerGpquaternionslerp.}
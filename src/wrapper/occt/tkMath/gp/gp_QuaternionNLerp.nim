# /usr/include/opencascade/gp_QuaternionNLerp.hxx --> occt/tkMath/gp/gp_QuaternionNLerp.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpquaternionnlerp = "/usr/include/opencascade/gp_QuaternionNLerp.hxx"
type
  GpQuaternionNLerp* {.importcpp: "gp_QuaternionNLerp",
                      header: headerGpquaternionnlerp, bycopy.} = object


proc interpolate*(theQStart: GpQuaternion; theQEnd: GpQuaternion; theT: StandardReal): GpQuaternion {.
    importcpp: "gp_QuaternionNLerp::Interpolate(@)",
    header: headerGpquaternionnlerp.}
proc constructGpQuaternionNLerp*(): GpQuaternionNLerp {.constructor,
    importcpp: "gp_QuaternionNLerp(@)", header: headerGpquaternionnlerp.}
proc constructGpQuaternionNLerp*(theQStart: GpQuaternion; theQEnd: GpQuaternion): GpQuaternionNLerp {.
    constructor, importcpp: "gp_QuaternionNLerp(@)",
    header: headerGpquaternionnlerp.}
proc init*(this: var GpQuaternionNLerp; theQStart: GpQuaternion; theQEnd: GpQuaternion) {.
    importcpp: "Init", header: headerGpquaternionnlerp.}
proc initFromUnit*(this: var GpQuaternionNLerp; theQStart: GpQuaternion;
                  theQEnd: GpQuaternion) {.importcpp: "InitFromUnit",
    header: headerGpquaternionnlerp.}
proc interpolate*(this: GpQuaternionNLerp; theT: StandardReal;
                 theResultQ: var GpQuaternion) {.noSideEffect,
    importcpp: "Interpolate", header: headerGpquaternionnlerp.}
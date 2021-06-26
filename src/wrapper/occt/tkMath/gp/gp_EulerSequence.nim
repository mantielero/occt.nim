# /usr/include/opencascade/gp_EulerSequence.hxx --> occt/tkMath/gp/gp_EulerSequence.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpeulersequence = "/usr/include/opencascade/gp_EulerSequence.hxx"
type
  GpEulerSequence* {.size: sizeof(cint), importcpp: "gp_EulerSequence",
                    header: headerGpeulersequence.} = enum
    gpEulerAngles, gpYawPitchRoll, gpExtrinsicXYZ, gpExtrinsicXZY, gpExtrinsicYZX,
    gpExtrinsicYXZ, gpExtrinsicZXY, gpExtrinsicZYX, gpIntrinsicXYZ, gpIntrinsicXZY,
    gpIntrinsicYZX, gpIntrinsicYXZ, gpIntrinsicZXY, gpIntrinsicZYX, gpExtrinsicXYX,
    gpExtrinsicXZX, gpExtrinsicYZY, gpExtrinsicYXY, gpExtrinsicZYZ, gpExtrinsicZXZ,
    gpIntrinsicXYX, gpIntrinsicXZX, gpIntrinsicYZY, gpIntrinsicYXY, gpIntrinsicZXZ,
    gpIntrinsicZYZ


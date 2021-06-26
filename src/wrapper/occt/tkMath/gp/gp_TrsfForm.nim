# /usr/include/opencascade/gp_TrsfForm.hxx --> occt/tkMath/gp/gp_TrsfForm.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGptrsfform = "/usr/include/opencascade/gp_TrsfForm.hxx"
type
  GpTrsfForm* {.size: sizeof(cint), importcpp: "gp_TrsfForm",
               header: headerGptrsfform.} = enum
    gpIdentity, gpRotation, gpTranslation, gpPntMirror, gpAx1Mirror, gpAx2Mirror,
    gpScale, gpCompoundTrsf, gpOther


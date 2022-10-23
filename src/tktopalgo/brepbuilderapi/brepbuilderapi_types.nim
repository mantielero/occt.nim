{.passL:"-lTKTopAlgo".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}


when defined(windows):
  const tktopalgo* = "TKTopAlgo.dll"
elif defined(macosx):
  const tktopalgo* = "libTKTopAlgo.dylib"
else:
  const tktopalgo* = "libTKTopAlgo.so"

#[ type
  #MakeShapeObj* {.importcpp: "BRepBuilderAPI_MakeShape",
  #                           header: "BRepBuilderAPI_MakeShape.hxx", bycopy.} = object #of BRepBuilderAPI_Command ##
                                                                                                          ## !
                                                                                                          ## This
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## by
                                                                                                          ## Shape().
                                                                                                          ## It
                                                                                                          ## does
                                                                                                          ## nothing
                                                                                                          ## but
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## may
                                                                                                          ## be
                                                                                                          ## redefined.
 ]#

import tkprim/brepprimapi/brepprimapi_types
import tkbo/brepalgoapi/brepalgoapi_types

type
  MakeShapeObj* = BoxObj | CylinderObj | OneAxisObj | CutObj# |...

  # FIXME
  TopToolsListOfShape* = object
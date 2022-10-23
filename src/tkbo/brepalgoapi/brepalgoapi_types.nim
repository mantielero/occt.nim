{.passL:"-lTKBO".}
{.passC:"-I/usr/include/opencascade/".}

type
  CutObj* {.importcpp: "BRepAlgoAPI_Cut", header: "BRepAlgoAPI_Cut.hxx",
                    bycopy.} = object #of BRepAlgoAPI_BooleanOperation ## ! Empty constructor

  # FIXME
  BOPAlgoPaveFiller* = object
{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel".}
{.passC:"-I/usr/include/opencascade" .}

import gp, gc, BRepBuilderAPI, TopoDS, BRepPrimAPI, BRepFilletAPI, TopExp_Explorer, TopAbs, BRepAlgoAPI
export gp, gc, BRepBuilderAPI, TopoDS, BRepPrimAPI, BRepFilletAPI, TopExp_Explorer, TopAbs, BRepAlgoAPI
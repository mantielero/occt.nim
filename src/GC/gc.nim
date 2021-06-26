{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" .}

import gc_types

#include "GC_MakeCircle.nim"
#include "GC_MakeMirror.nim"
#include "GC_MakeConicalSurface.nim"
#include "GC_MakeArcOfHyperbola.nim"
#include "GC_MakeScale.nim"
#include "GC_MakeCylindricalSurface.nim"
import GC_MakeSegment
#include "GC_MakeHyperbola.nim"
#include "GC_MakeEllipse.nim"
#include "GC_MakeLine.nim"
##include "GC_MakeTrimmedCone.nim"
#include "GC_MakeRotation.nim"
#include "GC_MakeArcOfEllipse.nim"
import GC_MakeArcOfCircle

#include "GC_MakePlane.nim"
#include "GC_MakeArcOfParabola.nim"
#include "GC_MakeTrimmedCylinder.nim"
#include "GC_Root.nim"
#include "GC_MakeTranslation.nim"
export gc_types, GC_MakeSegment, GC_MakeArcOfCircle

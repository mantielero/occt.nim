##  Copyright (c) 2015 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../StdLPersistent/StdLPersistent_HArray1, ../StdObject/StdObject_gp_Vectors,
  ../StdObject/StdObject_gp_Curves, ../TColgp/TColgp_HArray1OfXYZ,
  ../TColgp/TColgp_HArray1OfPnt, ../TColgp/TColgp_HArray1OfDir,
  ../TColgp/TColgp_HArray1OfVec, ../TColgp/TColgp_HArray1OfXY,
  ../TColgp/TColgp_HArray1OfPnt2d, ../TColgp/TColgp_HArray1OfDir2d,
  ../TColgp/TColgp_HArray1OfVec2d, ../TColgp/TColgp_HArray1OfLin2d,
  ../TColgp/TColgp_HArray1OfCirc2d, ../Poly/Poly_HArray1OfTriangle

type
  ShapePersistent_HArray1* {.importcpp: "ShapePersistent_HArray1",
                            header: "ShapePersistent_HArray1.hxx", bycopy.} = object of StdLPersistent_HArray1

  ShapePersistent_HArray1XYZ* = instance[TColgp_HArray1OfXYZ]
  ShapePersistent_HArray1Pnt* = instance[TColgp_HArray1OfPnt]
  ShapePersistent_HArray1Dir* = instance[TColgp_HArray1OfDir]
  ShapePersistent_HArray1Vec* = instance[TColgp_HArray1OfVec]
  ShapePersistent_HArray1XY* = instance[TColgp_HArray1OfXY]
  ShapePersistent_HArray1Pnt2d* = instance[TColgp_HArray1OfPnt2d]
  ShapePersistent_HArray1Dir2d* = instance[TColgp_HArray1OfDir2d]
  ShapePersistent_HArray1Vec2d* = instance[TColgp_HArray1OfVec2d]
  ShapePersistent_HArray1Lin2d* = instance[TColgp_HArray1OfLin2d]
  ShapePersistent_HArray1Circ2d* = instance[TColgp_HArray1OfCirc2d]
  ShapePersistent_HArray1Triangle* = instance[Poly_HArray1OfTriangle]

proc `>>`*(theReadData: var StdObjMgt_ReadData; theTriangle: var Poly_Triangle): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "ShapePersistent_HArray1.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theTriangle: Poly_Triangle): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "ShapePersistent_HArray1.hxx".}
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

type
  ShapePersistentHArray1* {.importcpp: "ShapePersistent_HArray1",
                           header: "ShapePersistent_HArray1.hxx", bycopy.} = object of StdLPersistentHArray1

  ShapePersistentHArray1XYZ* = Instance[TColgpHArray1OfXYZ]
  ShapePersistentHArray1Pnt* = Instance[TColgpHArray1OfPnt]
  ShapePersistentHArray1Dir* = Instance[TColgpHArray1OfDir]
  ShapePersistentHArray1Vec* = Instance[TColgpHArray1OfVec]
  ShapePersistentHArray1XY* = Instance[TColgpHArray1OfXY]
  ShapePersistentHArray1Pnt2d* = Instance[TColgpHArray1OfPnt2d]
  ShapePersistentHArray1Dir2d* = Instance[TColgpHArray1OfDir2d]
  ShapePersistentHArray1Vec2d* = Instance[TColgpHArray1OfVec2d]
  ShapePersistentHArray1Lin2d* = Instance[TColgpHArray1OfLin2d]
  ShapePersistentHArray1Circ2d* = Instance[TColgpHArray1OfCirc2d]
  ShapePersistentHArray1Triangle* = Instance[PolyHArray1OfTriangle]

proc `>>`*(theReadData: var StdObjMgtReadData; theTriangle: var PolyTriangle): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "ShapePersistent_HArray1.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theTriangle: PolyTriangle): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "ShapePersistent_HArray1.hxx".}

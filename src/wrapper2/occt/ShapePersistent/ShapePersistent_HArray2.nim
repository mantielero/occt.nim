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
  ShapePersistentHArray2* {.importcpp: "ShapePersistent_HArray2",
                           header: "ShapePersistent_HArray2.hxx", bycopy.} = object of StdLPersistentHArray2

  ShapePersistentHArray2XYZ* = Instance[TColgpHArray2OfXYZ]
  ShapePersistentHArray2Pnt* = Instance[TColgpHArray2OfPnt]
  ShapePersistentHArray2Dir* = Instance[TColgpHArray2OfDir]
  ShapePersistentHArray2Vec* = Instance[TColgpHArray2OfVec]
  ShapePersistentHArray2XY* = Instance[TColgpHArray2OfXY]
  ShapePersistentHArray2Pnt2d* = Instance[TColgpHArray2OfPnt2d]
  ShapePersistentHArray2Dir2d* = Instance[TColgpHArray2OfDir2d]
  ShapePersistentHArray2Vec2d* = Instance[TColgpHArray2OfVec2d]
  ShapePersistentHArray2Lin2d* = Instance[TColgpHArray2OfLin2d]
  ShapePersistentHArray2Circ2d* = Instance[TColgpHArray2OfCirc2d]



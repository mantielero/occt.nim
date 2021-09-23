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
  ../StdLPersistent/StdLPersistent_HArray2, ../StdObject/StdObject_gp_Vectors,
  ../StdObject/StdObject_gp_Curves, ../TColgp/TColgp_HArray2OfXYZ,
  ../TColgp/TColgp_HArray2OfPnt, ../TColgp/TColgp_HArray2OfDir,
  ../TColgp/TColgp_HArray2OfVec, ../TColgp/TColgp_HArray2OfXY,
  ../TColgp/TColgp_HArray2OfPnt2d, ../TColgp/TColgp_HArray2OfDir2d,
  ../TColgp/TColgp_HArray2OfVec2d, ../TColgp/TColgp_HArray2OfLin2d,
  ../TColgp/TColgp_HArray2OfCirc2d

type
  ShapePersistent_HArray2* {.importcpp: "ShapePersistent_HArray2",
                            header: "ShapePersistent_HArray2.hxx", bycopy.} = object of StdLPersistent_HArray2

  ShapePersistent_HArray2XYZ* = instance[TColgp_HArray2OfXYZ]
  ShapePersistent_HArray2Pnt* = instance[TColgp_HArray2OfPnt]
  ShapePersistent_HArray2Dir* = instance[TColgp_HArray2OfDir]
  ShapePersistent_HArray2Vec* = instance[TColgp_HArray2OfVec]
  ShapePersistent_HArray2XY* = instance[TColgp_HArray2OfXY]
  ShapePersistent_HArray2Pnt2d* = instance[TColgp_HArray2OfPnt2d]
  ShapePersistent_HArray2Dir2d* = instance[TColgp_HArray2OfDir2d]
  ShapePersistent_HArray2Vec2d* = instance[TColgp_HArray2OfVec2d]
  ShapePersistent_HArray2Lin2d* = instance[TColgp_HArray2OfLin2d]
  ShapePersistent_HArray2Circ2d* = instance[TColgp_HArray2OfCirc2d]

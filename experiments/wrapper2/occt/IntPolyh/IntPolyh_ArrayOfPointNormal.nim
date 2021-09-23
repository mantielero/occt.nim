##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  IntPolyh_Array, ../gp/gp_Pnt, ../gp/gp_Vec

## ! Auxiliary structure to represent pair of point and
## ! normal vector in this point on the surface.

type
  IntPolyh_PointNormal* {.importcpp: "IntPolyh_PointNormal",
                         header: "IntPolyh_ArrayOfPointNormal.hxx", bycopy.} = object
    Point* {.importc: "Point".}: gp_Pnt
    Normal* {.importc: "Normal".}: gp_Vec

  IntPolyh_ArrayOfPointNormal* = IntPolyh_Array[IntPolyh_PointNormal]

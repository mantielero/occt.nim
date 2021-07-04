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
  StdObject_gp_Axes, ../gp/gp_Cone, ../gp/gp_Cylinder, ../gp/gp_Sphere,
  ../gp/gp_Torus

proc `>>`*(theReadData: var StdObjMgt_ReadData; theCone: var gp_Cone): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theCone: gp_Cone): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theCyl: var gp_Cylinder): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theCyl: gp_Cylinder): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theSph: var gp_Sphere): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theSph: gp_Sphere): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theTorus: var gp_Torus): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theTorus: gp_Torus): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
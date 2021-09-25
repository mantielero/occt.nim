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

proc `>>`*(theReadData: var StdObjMgtReadData; theCone: var Cone): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theCone: Cone): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theCyl: var Cylinder): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theCyl: Cylinder): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theSph: var Sphere): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theSph: Sphere): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theTorus: var Torus): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Surfaces.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theTorus: Torus): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Surfaces.hxx".}

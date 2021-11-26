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

proc `>>`*(theReadData: var StdObjMgtReadData; theXY: var Xy): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theXY: Xy): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; thePnt: var Pnt2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; thePnt: Pnt2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theVec: var Vec2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theVec: Vec2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theDir: var Dir2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theDir: Dir2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theXYZ: var Xyz): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theXYZ: Xyz): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; thePnt: var Pnt): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; thePnt: Pnt): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theVec: var Vec): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theVec: Vec): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theDir: var Dir): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theDir: Dir): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}


























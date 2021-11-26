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

proc `>>`*(theReadData: var StdObjMgtReadData; theLin: var Lin2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theLin: Lin2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theCirc: var Circ2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theCirc: Circ2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theElips: var Elips2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theElips: Elips2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theHypr: var Hypr2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theHypr: Hypr2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theParab: var Parab2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theParab: Parab2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theLin: var Lin): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theLin: Lin): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theCirc: var Circ): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theCirc: Circ): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theElips: var Elips): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theElips: Elips): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theHypr: var Hypr): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theHypr: Hypr): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theParab: var Parab): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theParab: Parab): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}


























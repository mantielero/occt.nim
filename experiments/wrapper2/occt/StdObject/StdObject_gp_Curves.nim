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
  StdObject_gp_Axes, ../gp/gp_Lin2d, ../gp/gp_Circ2d, ../gp/gp_Elips2d,
  ../gp/gp_Hypr2d, ../gp/gp_Parab2d, ../gp/gp_Lin, ../gp/gp_Circ, ../gp/gp_Elips,
  ../gp/gp_Hypr, ../gp/gp_Parab

proc `>>`*(theReadData: var StdObjMgt_ReadData; theLin: var gp_Lin2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theLin: gp_Lin2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theCirc: var gp_Circ2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theCirc: gp_Circ2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theElips: var gp_Elips2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theElips: gp_Elips2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theHypr: var gp_Hypr2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theHypr: gp_Hypr2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theParab: var gp_Parab2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theParab: gp_Parab2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theLin: var gp_Lin): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theLin: gp_Lin): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theCirc: var gp_Circ): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theCirc: gp_Circ): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theElips: var gp_Elips): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theElips: gp_Elips): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theHypr: var gp_Hypr): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theHypr: gp_Hypr): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theParab: var gp_Parab): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Curves.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theParab: gp_Parab): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Curves.hxx".}
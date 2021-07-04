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
  StdObject_gp_Vectors, ../gp/gp_Mat2d, ../gp/gp_Mat, ../gp/gp_Trsf2d, ../gp/gp_Trsf

proc `>>`*(theReadData: var StdObjMgt_ReadData; theMat: var gp_Mat2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Trsfs.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theMat: gp_Mat2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Trsfs.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theMat: var gp_Mat): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Trsfs.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theMat: gp_Mat): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Trsfs.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theTrsf: var gp_Trsf2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Trsfs.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theTrsf: gp_Trsf2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Trsfs.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theTrsf: var gp_Trsf): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Trsfs.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theTrsf: gp_Trsf): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Trsfs.hxx".}
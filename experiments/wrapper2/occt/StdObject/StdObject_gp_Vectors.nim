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
  ../StdObjMgt/StdObjMgt_ReadData, ../StdObjMgt/StdObjMgt_WriteData,
  ../gp/gp_Pnt2d, ../gp/gp_Vec2d, ../gp/gp_Dir2d, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../gp/gp_Dir

proc `>>`*(theReadData: var StdObjMgt_ReadData; theXY: var gp_XY): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theXY: gp_XY): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; thePnt: var gp_Pnt2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; thePnt: gp_Pnt2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theVec: var gp_Vec2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theVec: gp_Vec2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theDir: var gp_Dir2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theDir: gp_Dir2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theXYZ: var gp_XYZ): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theXYZ: gp_XYZ): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; thePnt: var gp_Pnt): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; thePnt: gp_Pnt): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theVec: var gp_Vec): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theVec: gp_Vec): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theDir: var gp_Dir): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Vectors.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theDir: gp_Dir): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Vectors.hxx".}
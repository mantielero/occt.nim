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
  StdObject_gp_Vectors, ../gp/gp_Ax2d, ../gp/gp_Ax22d, ../gp/gp_Ax1, ../gp/gp_Ax2,
  ../gp/gp_Ax3

proc `>>`*(theReadData: var StdObjMgt_ReadData; theAx: var gp_Ax2d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc write*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax2d): var StdObjMgt_WriteData =
  discard

proc `<<`*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax2d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theAx: var gp_Ax22d): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax22d): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theAx: var gp_Ax1): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc write*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax1): var StdObjMgt_WriteData =
  discard

proc `<<`*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax1): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theAx: var gp_Ax2): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax2): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theAx: var gp_Ax3): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theAx: gp_Ax3): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
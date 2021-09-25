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

proc `>>`*(theReadData: var StdObjMgtReadData; theAx: var Ax2d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc write*(theWriteData: var StdObjMgtWriteData; theAx: Ax2d): var StdObjMgtWriteData =
  discard

proc `<<`*(theWriteData: var StdObjMgtWriteData; theAx: Ax2d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theAx: var Ax22d): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theAx: Ax22d): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theAx: var Ax1): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc write*(theWriteData: var StdObjMgtWriteData; theAx: Ax1): var StdObjMgtWriteData =
  discard

proc `<<`*(theWriteData: var StdObjMgtWriteData; theAx: Ax1): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theAx: var Ax2): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theAx: Ax2): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theAx: var Ax3): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObject_gp_Axes.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theAx: Ax3): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObject_gp_Axes.hxx".}

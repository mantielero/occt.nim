##  Created on: 1999-04-08
##  Created by: Fabrice SERVANT
##  Copyright (c) 1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

## ! The class represents the couple of indices with additional
## ! characteristics such as analyzed flag and an angle.<br>
## ! In IntPolyh_MaillageAffinage algorithm the class is used as a
## ! couple of interfering triangles with the intersection angle.

type
  IntPolyh_Couple* {.importcpp: "IntPolyh_Couple", header: "IntPolyh_Couple.hxx",
                    bycopy.} = object ## ! Constructor


proc constructIntPolyh_Couple*(): IntPolyh_Couple {.constructor,
    importcpp: "IntPolyh_Couple(@)", header: "IntPolyh_Couple.hxx".}
proc constructIntPolyh_Couple*(theTriangle1: Standard_Integer;
                              theTriangle2: Standard_Integer;
                              theAngle: Standard_Real = -2.0): IntPolyh_Couple {.
    constructor, importcpp: "IntPolyh_Couple(@)", header: "IntPolyh_Couple.hxx".}
proc FirstValue*(this: IntPolyh_Couple): Standard_Integer {.noSideEffect,
    importcpp: "FirstValue", header: "IntPolyh_Couple.hxx".}
proc SecondValue*(this: IntPolyh_Couple): Standard_Integer {.noSideEffect,
    importcpp: "SecondValue", header: "IntPolyh_Couple.hxx".}
proc IsAnalyzed*(this: IntPolyh_Couple): Standard_Boolean {.noSideEffect,
    importcpp: "IsAnalyzed", header: "IntPolyh_Couple.hxx".}
proc Angle*(this: IntPolyh_Couple): Standard_Real {.noSideEffect, importcpp: "Angle",
    header: "IntPolyh_Couple.hxx".}
proc SetCoupleValue*(this: var IntPolyh_Couple; theInd1: Standard_Integer;
                    theInd2: Standard_Integer) {.importcpp: "SetCoupleValue",
    header: "IntPolyh_Couple.hxx".}
proc SetAnalyzed*(this: var IntPolyh_Couple; theAnalyzed: Standard_Boolean) {.
    importcpp: "SetAnalyzed", header: "IntPolyh_Couple.hxx".}
proc SetAngle*(this: var IntPolyh_Couple; theAngle: Standard_Real) {.
    importcpp: "SetAngle", header: "IntPolyh_Couple.hxx".}
proc IsEqual*(this: IntPolyh_Couple; theOther: IntPolyh_Couple): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntPolyh_Couple.hxx".}
proc HashCode*(this: IntPolyh_Couple; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "IntPolyh_Couple.hxx".}
proc Dump*(this: IntPolyh_Couple; v: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Couple.hxx".}
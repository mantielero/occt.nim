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

## ! The class represents the couple of indices with additional
## ! characteristics such as analyzed flag and an angle.<br>
## ! In IntPolyh_MaillageAffinage algorithm the class is used as a
## ! couple of interfering triangles with the intersection angle.

type
  IntPolyhCouple* {.importcpp: "IntPolyh_Couple", header: "IntPolyh_Couple.hxx",
                   bycopy.} = object ## ! Constructor


proc constructIntPolyhCouple*(): IntPolyhCouple {.constructor,
    importcpp: "IntPolyh_Couple(@)", header: "IntPolyh_Couple.hxx".}
proc constructIntPolyhCouple*(theTriangle1: StandardInteger;
                             theTriangle2: StandardInteger;
                             theAngle: StandardReal = -2.0): IntPolyhCouple {.
    constructor, importcpp: "IntPolyh_Couple(@)", header: "IntPolyh_Couple.hxx".}
proc firstValue*(this: IntPolyhCouple): StandardInteger {.noSideEffect,
    importcpp: "FirstValue", header: "IntPolyh_Couple.hxx".}
proc secondValue*(this: IntPolyhCouple): StandardInteger {.noSideEffect,
    importcpp: "SecondValue", header: "IntPolyh_Couple.hxx".}
proc isAnalyzed*(this: IntPolyhCouple): StandardBoolean {.noSideEffect,
    importcpp: "IsAnalyzed", header: "IntPolyh_Couple.hxx".}
proc angle*(this: IntPolyhCouple): StandardReal {.noSideEffect, importcpp: "Angle",
    header: "IntPolyh_Couple.hxx".}
proc setCoupleValue*(this: var IntPolyhCouple; theInd1: StandardInteger;
                    theInd2: StandardInteger) {.importcpp: "SetCoupleValue",
    header: "IntPolyh_Couple.hxx".}
proc setAnalyzed*(this: var IntPolyhCouple; theAnalyzed: StandardBoolean) {.
    importcpp: "SetAnalyzed", header: "IntPolyh_Couple.hxx".}
proc setAngle*(this: var IntPolyhCouple; theAngle: StandardReal) {.
    importcpp: "SetAngle", header: "IntPolyh_Couple.hxx".}
proc isEqual*(this: IntPolyhCouple; theOther: IntPolyhCouple): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "IntPolyh_Couple.hxx".}
proc hashCode*(this: IntPolyhCouple; theUpperBound: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "HashCode", header: "IntPolyh_Couple.hxx".}
proc dump*(this: IntPolyhCouple; v: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "IntPolyh_Couple.hxx".}


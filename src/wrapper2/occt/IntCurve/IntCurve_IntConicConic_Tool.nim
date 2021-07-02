##  Created on: 1992-05-06
##  Created by: Laurent BUCHARD
##  Copyright (c) 1992-1999 Matra Datavision
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

##  #include <IntCurve_IConicPConicTool.hxx>

var pIpPI* {.importcpp: "PIpPI", header: "IntCurve_IntConicConic_Tool.hxx".}: StandardReal

## ======================================================================
## ==========          P R O T O T Y P E S                   ============
## ======================================================================

proc determineTransitionLC*(a1: IntRes2dPosition; a2: var GpVec2d; a3: GpVec2d;
                           a4: var IntRes2dTransition; a5: IntRes2dPosition;
                           a6: var GpVec2d; a7: GpVec2d; a8: var IntRes2dTransition;
                           a9: StandardReal) {.
    importcpp: "Determine_Transition_LC(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## ======================================================================

proc normalizeOnCircleDomain*(param: StandardReal; domain: IntRes2dDomain): StandardReal {.
    importcpp: "NormalizeOnCircleDomain(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## =====================================================================
## ====   C l a s s e     I n t e r v a l      !! Specifique !! ========
## =====================================================================

type
  Interval* {.importcpp: "Interval", header: "IntCurve_IntConicConic_Tool.hxx",
             bycopy.} = object
    binf* {.importc: "Binf".}: StandardReal
    bsup* {.importc: "Bsup".}: StandardReal
    hasFirstBound* {.importc: "HasFirstBound".}: StandardBoolean
    hasLastBound* {.importc: "HasLastBound".}: StandardBoolean
    isNull* {.importc: "IsNull".}: StandardBoolean


proc constructInterval*(): Interval {.constructor, importcpp: "Interval(@)",
                                   header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(a: StandardReal; b: StandardReal): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(domain: IntRes2dDomain): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(a: StandardReal; hf: StandardBoolean; b: StandardReal;
                       hl: StandardBoolean): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc length*(this: var Interval): StandardReal {.importcpp: "Length",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc intersectionWithBounded*(this: var Interval; inter: Interval): Interval {.
    importcpp: "IntersectionWithBounded",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## ======================================================================
## ==  C L A S S E    P E R I O D I C    I N T E R V A L  (Specifique)
## ======================================================================

type
  PeriodicInterval* {.importcpp: "PeriodicInterval",
                     header: "IntCurve_IntConicConic_Tool.hxx", bycopy.} = object
    binf* {.importc: "Binf".}: StandardReal
    bsup* {.importc: "Bsup".}: StandardReal
    isnull* {.importc: "isnull".}: StandardBoolean


proc setNull*(this: var PeriodicInterval) {.importcpp: "SetNull", header: "IntCurve_IntConicConic_Tool.hxx".}
proc isNull*(this: var PeriodicInterval): StandardBoolean {.importcpp: "IsNull",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc complement*(this: var PeriodicInterval) {.importcpp: "Complement",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc length*(this: var PeriodicInterval): StandardReal {.importcpp: "Length",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(domain: IntRes2dDomain): PeriodicInterval {.
    constructor, importcpp: "PeriodicInterval(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(): PeriodicInterval {.constructor,
    importcpp: "PeriodicInterval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(a: StandardReal; b: StandardReal): PeriodicInterval {.
    constructor, importcpp: "PeriodicInterval(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc setValues*(this: var PeriodicInterval; a: StandardReal; b: StandardReal) {.
    importcpp: "SetValues", header: "IntCurve_IntConicConic_Tool.hxx".}
proc normalize*(this: var PeriodicInterval) {.importcpp: "Normalize",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc firstIntersection*(this: var PeriodicInterval; i1: var PeriodicInterval): PeriodicInterval {.
    importcpp: "FirstIntersection", header: "IntCurve_IntConicConic_Tool.hxx".}
proc secondIntersection*(this: var PeriodicInterval; i2: var PeriodicInterval): PeriodicInterval {.
    importcpp: "SecondIntersection", header: "IntCurve_IntConicConic_Tool.hxx".}


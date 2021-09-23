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

import
  IntCurve_IntImpConicParConic, IntCurve_IConicTool, IntCurve_PConic

##  #include <IntCurve_IConicPConicTool.hxx>

import
  ../IntRes2d/IntRes2d_Domain, ../IntRes2d/IntRes2d_Transition,
  ../IntRes2d/IntRes2d_Position, ../gp/gp_Vec2d, ../gp/gp

var PIpPI* {.importcpp: "PIpPI", header: "IntCurve_IntConicConic_Tool.hxx".}: Standard_Real

## ======================================================================
## ==========          P R O T O T Y P E S                   ============
## ======================================================================

proc Determine_Transition_LC*(a1: IntRes2d_Position; a2: var gp_Vec2d; a3: gp_Vec2d;
                             a4: var IntRes2d_Transition; a5: IntRes2d_Position;
                             a6: var gp_Vec2d; a7: gp_Vec2d;
                             a8: var IntRes2d_Transition; a9: Standard_Real) {.
    importcpp: "Determine_Transition_LC(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## ======================================================================

proc NormalizeOnCircleDomain*(Param: Standard_Real; Domain: IntRes2d_Domain): Standard_Real {.
    importcpp: "NormalizeOnCircleDomain(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## =====================================================================
## ====   C l a s s e     I n t e r v a l      !! Specifique !! ========
## =====================================================================

type
  Interval* {.importcpp: "Interval", header: "IntCurve_IntConicConic_Tool.hxx",
             bycopy.} = object
    Binf* {.importc: "Binf".}: Standard_Real
    Bsup* {.importc: "Bsup".}: Standard_Real
    HasFirstBound* {.importc: "HasFirstBound".}: Standard_Boolean
    HasLastBound* {.importc: "HasLastBound".}: Standard_Boolean
    IsNull* {.importc: "IsNull".}: Standard_Boolean


proc constructInterval*(): Interval {.constructor, importcpp: "Interval(@)",
                                   header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(a: Standard_Real; b: Standard_Real): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(Domain: IntRes2d_Domain): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructInterval*(a: Standard_Real; hf: Standard_Boolean; b: Standard_Real;
                       hl: Standard_Boolean): Interval {.constructor,
    importcpp: "Interval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc Length*(this: var Interval): Standard_Real {.importcpp: "Length",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc IntersectionWithBounded*(this: var Interval; Inter: Interval): Interval {.
    importcpp: "IntersectionWithBounded",
    header: "IntCurve_IntConicConic_Tool.hxx".}
## ======================================================================
## ==  C L A S S E    P E R I O D I C    I N T E R V A L  (Specifique)
## ======================================================================

type
  PeriodicInterval* {.importcpp: "PeriodicInterval",
                     header: "IntCurve_IntConicConic_Tool.hxx", bycopy.} = object
    Binf* {.importc: "Binf".}: Standard_Real
    Bsup* {.importc: "Bsup".}: Standard_Real
    isnull* {.importc: "isnull".}: Standard_Boolean


proc SetNull*(this: var PeriodicInterval) {.importcpp: "SetNull", header: "IntCurve_IntConicConic_Tool.hxx".}
proc IsNull*(this: var PeriodicInterval): Standard_Boolean {.importcpp: "IsNull",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc Complement*(this: var PeriodicInterval) {.importcpp: "Complement",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc Length*(this: var PeriodicInterval): Standard_Real {.importcpp: "Length",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(Domain: IntRes2d_Domain): PeriodicInterval {.
    constructor, importcpp: "PeriodicInterval(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(): PeriodicInterval {.constructor,
    importcpp: "PeriodicInterval(@)", header: "IntCurve_IntConicConic_Tool.hxx".}
proc constructPeriodicInterval*(a: Standard_Real; b: Standard_Real): PeriodicInterval {.
    constructor, importcpp: "PeriodicInterval(@)",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc SetValues*(this: var PeriodicInterval; a: Standard_Real; b: Standard_Real) {.
    importcpp: "SetValues", header: "IntCurve_IntConicConic_Tool.hxx".}
proc Normalize*(this: var PeriodicInterval) {.importcpp: "Normalize",
    header: "IntCurve_IntConicConic_Tool.hxx".}
proc FirstIntersection*(this: var PeriodicInterval; I1: var PeriodicInterval): PeriodicInterval {.
    importcpp: "FirstIntersection", header: "IntCurve_IntConicConic_Tool.hxx".}
proc SecondIntersection*(this: var PeriodicInterval; I2: var PeriodicInterval): PeriodicInterval {.
    importcpp: "SecondIntersection", header: "IntCurve_IntConicConic_Tool.hxx".}
##  Created on: 1992-08-19
##  Created by: Modelistation
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Pnt2d"
type
  HatchHatcher* {.importcpp: "Hatch_Hatcher", header: "Hatch_Hatcher.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## empty
                                                                                     ## hatcher.
                                                                                     ## <Tol>
                                                                                     ## is
                                                                                     ## the
                                                                                     ## tolerance
                                                                                     ##
                                                                                     ## !
                                                                                     ## for
                                                                                     ## intersections.


proc constructHatchHatcher*(tol: StandardReal;
                           oriented: StandardBoolean = standardTrue): HatchHatcher {.
    constructor, importcpp: "Hatch_Hatcher(@)", header: "Hatch_Hatcher.hxx".}
proc tolerance*(this: var HatchHatcher; tol: StandardReal) {.importcpp: "Tolerance",
    header: "Hatch_Hatcher.hxx".}
proc tolerance*(this: HatchHatcher): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "Hatch_Hatcher.hxx".}
proc addLine*(this: var HatchHatcher; L: GpLin2d; t: HatchLineForm = hatchANYLINE) {.
    importcpp: "AddLine", header: "Hatch_Hatcher.hxx".}
proc addLine*(this: var HatchHatcher; d: GpDir2d; dist: StandardReal) {.
    importcpp: "AddLine", header: "Hatch_Hatcher.hxx".}
proc addXLine*(this: var HatchHatcher; x: StandardReal) {.importcpp: "AddXLine",
    header: "Hatch_Hatcher.hxx".}
proc addYLine*(this: var HatchHatcher; y: StandardReal) {.importcpp: "AddYLine",
    header: "Hatch_Hatcher.hxx".}
proc trim*(this: var HatchHatcher; L: GpLin2d; index: StandardInteger = 0) {.
    importcpp: "Trim", header: "Hatch_Hatcher.hxx".}
proc trim*(this: var HatchHatcher; L: GpLin2d; start: StandardReal; `end`: StandardReal;
          index: StandardInteger = 0) {.importcpp: "Trim", header: "Hatch_Hatcher.hxx".}
proc trim*(this: var HatchHatcher; p1: GpPnt2d; p2: GpPnt2d; index: StandardInteger = 0) {.
    importcpp: "Trim", header: "Hatch_Hatcher.hxx".}
proc nbIntervals*(this: HatchHatcher): StandardInteger {.noSideEffect,
    importcpp: "NbIntervals", header: "Hatch_Hatcher.hxx".}
proc nbLines*(this: HatchHatcher): StandardInteger {.noSideEffect,
    importcpp: "NbLines", header: "Hatch_Hatcher.hxx".}
proc line*(this: HatchHatcher; i: StandardInteger): GpLin2d {.noSideEffect,
    importcpp: "Line", header: "Hatch_Hatcher.hxx".}
proc lineForm*(this: HatchHatcher; i: StandardInteger): HatchLineForm {.noSideEffect,
    importcpp: "LineForm", header: "Hatch_Hatcher.hxx".}
proc isXLine*(this: HatchHatcher; i: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsXLine", header: "Hatch_Hatcher.hxx".}
proc isYLine*(this: HatchHatcher; i: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsYLine", header: "Hatch_Hatcher.hxx".}
proc coordinate*(this: HatchHatcher; i: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Coordinate", header: "Hatch_Hatcher.hxx".}
proc nbIntervals*(this: HatchHatcher; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "Hatch_Hatcher.hxx".}
proc start*(this: HatchHatcher; i: StandardInteger; j: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Start", header: "Hatch_Hatcher.hxx".}
proc startIndex*(this: HatchHatcher; i: StandardInteger; j: StandardInteger;
                index: var StandardInteger; par2: var StandardReal) {.noSideEffect,
    importcpp: "StartIndex", header: "Hatch_Hatcher.hxx".}
proc `end`*(this: HatchHatcher; i: StandardInteger; j: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "End", header: "Hatch_Hatcher.hxx".}
proc endIndex*(this: HatchHatcher; i: StandardInteger; j: StandardInteger;
              index: var StandardInteger; par2: var StandardReal) {.noSideEffect,
    importcpp: "EndIndex", header: "Hatch_Hatcher.hxx".}


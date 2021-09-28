##  Created on: 1997-11-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_SweepFunction"
discard "forward decl of GeomFill_SweepFunction"
type
  HandleC1C1* = Handle[GeomFillSweepFunction]

## ! Function to approximate by SweepApproximation from
## ! Approx. To bulid general sweep Surface.

type
  GeomFillSweepFunction* {.importcpp: "GeomFill_SweepFunction",
                          header: "GeomFill_SweepFunction.hxx", bycopy.} = object of ApproxSweepFunction


proc constructGeomFillSweepFunction*(section: Handle[GeomFillSectionLaw];
                                    location: Handle[GeomFillLocationLaw];
                                    firstParameter: StandardReal;
                                    firstParameterOnS: StandardReal;
                                    ratioParameterOnS: StandardReal): GeomFillSweepFunction {.
    constructor, importcpp: "GeomFill_SweepFunction(@)",
    header: "GeomFill_SweepFunction.hxx".}
proc d0*(this: var GeomFillSweepFunction; param: StandardReal; first: StandardReal;
        last: StandardReal; poles: var TColgpArray1OfPnt;
        poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_SweepFunction.hxx".}
proc d1*(this: var GeomFillSweepFunction; param: StandardReal; first: StandardReal;
        last: StandardReal; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; poles2d: var TColgpArray1OfPnt2d;
        dPoles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal): StandardBoolean {.importcpp: "D1",
    header: "GeomFill_SweepFunction.hxx".}
proc d2*(this: var GeomFillSweepFunction; param: StandardReal; first: StandardReal;
        last: StandardReal; poles: var TColgpArray1OfPnt;
        dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
        poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
        d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_SweepFunction.hxx".}
proc nb2dCurves*(this: GeomFillSweepFunction): int {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_SweepFunction.hxx".}
proc sectionShape*(this: GeomFillSweepFunction; nbPoles: var int; nbKnots: var int;
                  degree: var int) {.noSideEffect, importcpp: "SectionShape",
                                  header: "GeomFill_SweepFunction.hxx".}
proc knots*(this: GeomFillSweepFunction; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SweepFunction.hxx".}
proc mults*(this: GeomFillSweepFunction; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SweepFunction.hxx".}
proc isRational*(this: GeomFillSweepFunction): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_SweepFunction.hxx".}
proc nbIntervals*(this: GeomFillSweepFunction; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_SweepFunction.hxx".}
proc intervals*(this: GeomFillSweepFunction; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_SweepFunction.hxx".}
proc setInterval*(this: var GeomFillSweepFunction; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_SweepFunction.hxx".}
proc resolution*(this: GeomFillSweepFunction; index: int; tol: StandardReal;
                tolU: var StandardReal; tolV: var StandardReal) {.noSideEffect,
    importcpp: "Resolution", header: "GeomFill_SweepFunction.hxx".}
proc getTolerance*(this: GeomFillSweepFunction; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_SweepFunction.hxx".}
proc setTolerance*(this: var GeomFillSweepFunction; tol3d: StandardReal;
                  tol2d: StandardReal) {.importcpp: "SetTolerance",
                                       header: "GeomFill_SweepFunction.hxx".}
proc barycentreOfSurf*(this: GeomFillSweepFunction): Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_SweepFunction.hxx".}
proc maximalSection*(this: GeomFillSweepFunction): StandardReal {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_SweepFunction.hxx".}
proc getMinimalWeight*(this: GeomFillSweepFunction;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_SweepFunction.hxx".}
type
  GeomFillSweepFunctionbaseType* = ApproxSweepFunction

proc getTypeName*(): cstring {.importcpp: "GeomFill_SweepFunction::get_type_name(@)",
                            header: "GeomFill_SweepFunction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_SweepFunction::get_type_descriptor(@)",
    header: "GeomFill_SweepFunction.hxx".}
proc dynamicType*(this: GeomFillSweepFunction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_SweepFunction.hxx".}
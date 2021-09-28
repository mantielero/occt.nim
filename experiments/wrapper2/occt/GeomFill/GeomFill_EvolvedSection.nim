##  Created on: 1998-08-17
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Law_Function"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_EvolvedSection"
discard "forward decl of GeomFill_EvolvedSection"
type
  HandleC1C1* = Handle[GeomFillEvolvedSection]

## ! Define an Constant Section Law

type
  GeomFillEvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                           header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## an
                                                                                                   ## SectionLaw
                                                                                                   ## with
                                                                                                   ## a
                                                                                                   ## Curve
                                                                                                   ## and
                                                                                                   ## a
                                                                                                   ## real
                                                                                                   ## Law.


proc constructGeomFillEvolvedSection*(c: Handle[GeomCurve]; L: Handle[LawFunction]): GeomFillEvolvedSection {.
    constructor, importcpp: "GeomFill_EvolvedSection(@)",
    header: "GeomFill_EvolvedSection.hxx".}
proc d0*(this: var GeomFillEvolvedSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_EvolvedSection.hxx".}
proc d1*(this: var GeomFillEvolvedSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D1", header: "GeomFill_EvolvedSection.hxx".}
proc d2*(this: var GeomFillEvolvedSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_EvolvedSection.hxx".}
proc bSplineSurface*(this: GeomFillEvolvedSection): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface",
    header: "GeomFill_EvolvedSection.hxx".}
proc sectionShape*(this: GeomFillEvolvedSection; nbPoles: var int; nbKnots: var int;
                  degree: var int) {.noSideEffect, importcpp: "SectionShape",
                                  header: "GeomFill_EvolvedSection.hxx".}
proc knots*(this: GeomFillEvolvedSection; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_EvolvedSection.hxx".}
proc mults*(this: GeomFillEvolvedSection; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_EvolvedSection.hxx".}
proc isRational*(this: GeomFillEvolvedSection): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_EvolvedSection.hxx".}
proc isUPeriodic*(this: GeomFillEvolvedSection): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc isVPeriodic*(this: GeomFillEvolvedSection): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc nbIntervals*(this: GeomFillEvolvedSection; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_EvolvedSection.hxx".}
proc intervals*(this: GeomFillEvolvedSection; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_EvolvedSection.hxx".}
proc setInterval*(this: var GeomFillEvolvedSection; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_EvolvedSection.hxx".}
proc getInterval*(this: GeomFillEvolvedSection; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_EvolvedSection.hxx".}
proc getDomain*(this: GeomFillEvolvedSection; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_EvolvedSection.hxx".}
proc getTolerance*(this: GeomFillEvolvedSection; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_EvolvedSection.hxx".}
proc barycentreOfSurf*(this: GeomFillEvolvedSection): Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_EvolvedSection.hxx".}
proc maximalSection*(this: GeomFillEvolvedSection): StandardReal {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_EvolvedSection.hxx".}
proc getMinimalWeight*(this: GeomFillEvolvedSection;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_EvolvedSection.hxx".}
proc isConstant*(this: GeomFillEvolvedSection; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_EvolvedSection.hxx".}
proc constantSection*(this: GeomFillEvolvedSection): Handle[GeomCurve] {.
    noSideEffect, importcpp: "ConstantSection",
    header: "GeomFill_EvolvedSection.hxx".}
type
  GeomFillEvolvedSectionbaseType* = GeomFillSectionLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_EvolvedSection::get_type_name(@)",
                            header: "GeomFill_EvolvedSection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_EvolvedSection::get_type_descriptor(@)",
    header: "GeomFill_EvolvedSection.hxx".}
proc dynamicType*(this: GeomFillEvolvedSection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_EvolvedSection.hxx".}
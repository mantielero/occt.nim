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

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of GeomFill_SectionLaw"
type
  HandleC1C1* = Handle[GeomFillSectionLaw]

## ! To define section law in  sweeping

type
  GeomFillSectionLaw* {.importcpp: "GeomFill_SectionLaw",
                       header: "GeomFill_SectionLaw.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## compute
                                                                                          ## the
                                                                                          ## section
                                                                                          ## for
                                                                                          ## v
                                                                                          ## =
                                                                                          ## param


proc d0*(this: var GeomFillSectionLaw; param: StandardReal;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_SectionLaw.hxx".}
proc d1*(this: var GeomFillSectionLaw; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D1", header: "GeomFill_SectionLaw.hxx".}
proc d2*(this: var GeomFillSectionLaw; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_SectionLaw.hxx".}
proc bSplineSurface*(this: GeomFillSectionLaw): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface", header: "GeomFill_SectionLaw.hxx".}
proc sectionShape*(this: GeomFillSectionLaw; nbPoles: var int; nbKnots: var int;
                  degree: var int) {.noSideEffect, importcpp: "SectionShape",
                                  header: "GeomFill_SectionLaw.hxx".}
proc knots*(this: GeomFillSectionLaw; tKnots: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "GeomFill_SectionLaw.hxx".}
proc mults*(this: GeomFillSectionLaw; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SectionLaw.hxx".}
proc isRational*(this: GeomFillSectionLaw): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_SectionLaw.hxx".}
proc isUPeriodic*(this: GeomFillSectionLaw): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_SectionLaw.hxx".}
proc isVPeriodic*(this: GeomFillSectionLaw): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_SectionLaw.hxx".}
proc nbIntervals*(this: GeomFillSectionLaw; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbIntervals", header: "GeomFill_SectionLaw.hxx".}
proc intervals*(this: GeomFillSectionLaw; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_SectionLaw.hxx".}
proc setInterval*(this: var GeomFillSectionLaw; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_SectionLaw.hxx".}
proc getInterval*(this: GeomFillSectionLaw; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_SectionLaw.hxx".}
proc getDomain*(this: GeomFillSectionLaw; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_SectionLaw.hxx".}
proc getTolerance*(this: GeomFillSectionLaw; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_SectionLaw.hxx".}
proc setTolerance*(this: var GeomFillSectionLaw; tol3d: StandardReal;
                  tol2d: StandardReal) {.importcpp: "SetTolerance",
                                       header: "GeomFill_SectionLaw.hxx".}
proc barycentreOfSurf*(this: GeomFillSectionLaw): Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_SectionLaw.hxx".}
proc maximalSection*(this: GeomFillSectionLaw): StandardReal {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_SectionLaw.hxx".}
proc getMinimalWeight*(this: GeomFillSectionLaw; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "GeomFill_SectionLaw.hxx".}
proc isConstant*(this: GeomFillSectionLaw; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_SectionLaw.hxx".}
proc constantSection*(this: GeomFillSectionLaw): Handle[GeomCurve] {.noSideEffect,
    importcpp: "ConstantSection", header: "GeomFill_SectionLaw.hxx".}
proc isConicalLaw*(this: GeomFillSectionLaw; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConicalLaw", header: "GeomFill_SectionLaw.hxx".}
proc circlSection*(this: GeomFillSectionLaw; param: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CirclSection", header: "GeomFill_SectionLaw.hxx".}
type
  GeomFillSectionLawbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomFill_SectionLaw::get_type_name(@)",
                            header: "GeomFill_SectionLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_SectionLaw::get_type_descriptor(@)",
    header: "GeomFill_SectionLaw.hxx".}
proc dynamicType*(this: GeomFillSectionLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_SectionLaw.hxx".}
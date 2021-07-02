##  Created on: 1998-12-14
##  Created by: Joelle CHAUVET
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

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_NSections"
discard "forward decl of GeomFill_NSections"
type
  HandleGeomFillNSections* = Handle[GeomFillNSections]

## ! Define a Section Law by N Sections

type
  GeomFillNSections* {.importcpp: "GeomFill_NSections",
                      header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                         ## !
                                                                                         ## Make
                                                                                         ## a
                                                                                         ## SectionLaw
                                                                                         ## with
                                                                                         ## N
                                                                                         ## Curves.


proc constructGeomFillNSections*(nc: TColGeomSequenceOfCurve): GeomFillNSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                                np: TColStdSequenceOfReal): GeomFillNSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                                np: TColStdSequenceOfReal; uf: StandardReal;
                                ul: StandardReal): GeomFillNSections {.constructor,
    importcpp: "GeomFill_NSections(@)", header: "GeomFill_NSections.hxx".}
proc constructGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                                np: TColStdSequenceOfReal; uf: StandardReal;
                                ul: StandardReal; vf: StandardReal; vl: StandardReal): GeomFillNSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFillNSections*(nc: TColGeomSequenceOfCurve;
                                trsfs: GeomFillSequenceOfTrsf;
                                np: TColStdSequenceOfReal; uf: StandardReal;
                                ul: StandardReal; vf: StandardReal;
                                vl: StandardReal; surf: Handle[GeomBSplineSurface]): GeomFillNSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc d0*(this: var GeomFillNSections; param: StandardReal;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_NSections.hxx".}
proc d1*(this: var GeomFillNSections; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D1", header: "GeomFill_NSections.hxx".}
proc d2*(this: var GeomFillNSections; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_NSections.hxx".}
proc setSurface*(this: var GeomFillNSections; refSurf: Handle[GeomBSplineSurface]) {.
    importcpp: "SetSurface", header: "GeomFill_NSections.hxx".}
proc computeSurface*(this: var GeomFillNSections) {.importcpp: "ComputeSurface",
    header: "GeomFill_NSections.hxx".}
proc bSplineSurface*(this: GeomFillNSections): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface", header: "GeomFill_NSections.hxx".}
proc sectionShape*(this: GeomFillNSections; nbPoles: var StandardInteger;
                  nbKnots: var StandardInteger; degree: var StandardInteger) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_NSections.hxx".}
proc knots*(this: GeomFillNSections; tKnots: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "Knots", header: "GeomFill_NSections.hxx".}
proc mults*(this: GeomFillNSections; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_NSections.hxx".}
proc isRational*(this: GeomFillNSections): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_NSections.hxx".}
proc isUPeriodic*(this: GeomFillNSections): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_NSections.hxx".}
proc isVPeriodic*(this: GeomFillNSections): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_NSections.hxx".}
proc nbIntervals*(this: GeomFillNSections; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_NSections.hxx".}
proc intervals*(this: GeomFillNSections; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_NSections.hxx".}
proc setInterval*(this: var GeomFillNSections; first: StandardReal; last: StandardReal) {.
    importcpp: "SetInterval", header: "GeomFill_NSections.hxx".}
proc getInterval*(this: GeomFillNSections; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_NSections.hxx".}
proc getDomain*(this: GeomFillNSections; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_NSections.hxx".}
proc getTolerance*(this: GeomFillNSections; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_NSections.hxx".}
proc barycentreOfSurf*(this: GeomFillNSections): GpPnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_NSections.hxx".}
proc maximalSection*(this: GeomFillNSections): StandardReal {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_NSections.hxx".}
proc getMinimalWeight*(this: GeomFillNSections; weigths: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "GeomFill_NSections.hxx".}
proc isConstant*(this: GeomFillNSections; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_NSections.hxx".}
proc constantSection*(this: GeomFillNSections): Handle[GeomCurve] {.noSideEffect,
    importcpp: "ConstantSection", header: "GeomFill_NSections.hxx".}
proc isConicalLaw*(this: GeomFillNSections; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConicalLaw", header: "GeomFill_NSections.hxx".}
proc circlSection*(this: GeomFillNSections; param: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "CirclSection", header: "GeomFill_NSections.hxx".}
type
  GeomFillNSectionsbaseType* = GeomFillSectionLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_NSections::get_type_name(@)",
                            header: "GeomFill_NSections.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_NSections::get_type_descriptor(@)",
    header: "GeomFill_NSections.hxx".}
proc dynamicType*(this: GeomFillNSections): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_NSections.hxx".}


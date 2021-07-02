##  Created on: 1997-12-05
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_UniformSection"
discard "forward decl of GeomFill_UniformSection"
type
  HandleGeomFillUniformSection* = Handle[GeomFillUniformSection]

## ! Define an Constant Section Law

type
  GeomFillUniformSection* {.importcpp: "GeomFill_UniformSection",
                           header: "GeomFill_UniformSection.hxx", bycopy.} = object of GeomFillSectionLaw ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## an
                                                                                                   ## constant
                                                                                                   ## Law
                                                                                                   ## with
                                                                                                   ## C.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## [First,
                                                                                                   ## Last]
                                                                                                   ## define
                                                                                                   ## law
                                                                                                   ## definition
                                                                                                   ## domain


proc constructGeomFillUniformSection*(c: Handle[GeomCurve];
                                     firstParameter: StandardReal = 0.0;
                                     lastParameter: StandardReal = 1.0): GeomFillUniformSection {.
    constructor, importcpp: "GeomFill_UniformSection(@)",
    header: "GeomFill_UniformSection.hxx".}
proc d0*(this: var GeomFillUniformSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D0", header: "GeomFill_UniformSection.hxx".}
proc d1*(this: var GeomFillUniformSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        weigths: var TColStdArray1OfReal; dWeigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D1", header: "GeomFill_UniformSection.hxx".}
proc d2*(this: var GeomFillUniformSection; param: StandardReal;
        poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
        d2Poles: var TColgpArray1OfVec; weigths: var TColStdArray1OfReal;
        dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): StandardBoolean {.
    importcpp: "D2", header: "GeomFill_UniformSection.hxx".}
proc bSplineSurface*(this: GeomFillUniformSection): Handle[GeomBSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface",
    header: "GeomFill_UniformSection.hxx".}
proc sectionShape*(this: GeomFillUniformSection; nbPoles: var StandardInteger;
                  nbKnots: var StandardInteger; degree: var StandardInteger) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_UniformSection.hxx".}
proc knots*(this: GeomFillUniformSection; tKnots: var TColStdArray1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_UniformSection.hxx".}
proc mults*(this: GeomFillUniformSection; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_UniformSection.hxx".}
proc isRational*(this: GeomFillUniformSection): StandardBoolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_UniformSection.hxx".}
proc isUPeriodic*(this: GeomFillUniformSection): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_UniformSection.hxx".}
proc isVPeriodic*(this: GeomFillUniformSection): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_UniformSection.hxx".}
proc nbIntervals*(this: GeomFillUniformSection; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_UniformSection.hxx".}
proc intervals*(this: GeomFillUniformSection; t: var TColStdArray1OfReal;
               s: GeomAbsShape) {.noSideEffect, importcpp: "Intervals",
                                header: "GeomFill_UniformSection.hxx".}
proc setInterval*(this: var GeomFillUniformSection; first: StandardReal;
                 last: StandardReal) {.importcpp: "SetInterval",
                                     header: "GeomFill_UniformSection.hxx".}
proc getInterval*(this: GeomFillUniformSection; first: var StandardReal;
                 last: var StandardReal) {.noSideEffect, importcpp: "GetInterval",
                                        header: "GeomFill_UniformSection.hxx".}
proc getDomain*(this: GeomFillUniformSection; first: var StandardReal;
               last: var StandardReal) {.noSideEffect, importcpp: "GetDomain",
                                      header: "GeomFill_UniformSection.hxx".}
proc getTolerance*(this: GeomFillUniformSection; boundTol: StandardReal;
                  surfTol: StandardReal; angleTol: StandardReal;
                  tol3d: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_UniformSection.hxx".}
proc barycentreOfSurf*(this: GeomFillUniformSection): GpPnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_UniformSection.hxx".}
proc maximalSection*(this: GeomFillUniformSection): StandardReal {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_UniformSection.hxx".}
proc getMinimalWeight*(this: GeomFillUniformSection;
                      weigths: var TColStdArray1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_UniformSection.hxx".}
proc isConstant*(this: GeomFillUniformSection; error: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_UniformSection.hxx".}
proc constantSection*(this: GeomFillUniformSection): Handle[GeomCurve] {.
    noSideEffect, importcpp: "ConstantSection",
    header: "GeomFill_UniformSection.hxx".}
type
  GeomFillUniformSectionbaseType* = GeomFillSectionLaw

proc getTypeName*(): cstring {.importcpp: "GeomFill_UniformSection::get_type_name(@)",
                            header: "GeomFill_UniformSection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_UniformSection::get_type_descriptor(@)",
    header: "GeomFill_UniformSection.hxx".}
proc dynamicType*(this: GeomFillUniformSection): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_UniformSection.hxx".}


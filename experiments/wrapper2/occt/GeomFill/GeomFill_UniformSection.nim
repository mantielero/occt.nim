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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  GeomFill_SectionLaw, ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfVec,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_UniformSection"
discard "forward decl of GeomFill_UniformSection"
type
  Handle_GeomFill_UniformSection* = handle[GeomFill_UniformSection]

## ! Define an Constant Section Law

type
  GeomFill_UniformSection* {.importcpp: "GeomFill_UniformSection",
                            header: "GeomFill_UniformSection.hxx", bycopy.} = object of GeomFill_SectionLaw ##
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


proc constructGeomFill_UniformSection*(C: handle[Geom_Curve];
                                      FirstParameter: Standard_Real = 0.0;
                                      LastParameter: Standard_Real = 1.0): GeomFill_UniformSection {.
    constructor, importcpp: "GeomFill_UniformSection(@)",
    header: "GeomFill_UniformSection.hxx".}
proc D0*(this: var GeomFill_UniformSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_UniformSection.hxx".}
proc D1*(this: var GeomFill_UniformSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_UniformSection.hxx".}
proc D2*(this: var GeomFill_UniformSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        D2Poles: var TColgp_Array1OfVec; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_UniformSection.hxx".}
proc BSplineSurface*(this: GeomFill_UniformSection): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface",
    header: "GeomFill_UniformSection.hxx".}
proc SectionShape*(this: GeomFill_UniformSection; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_UniformSection.hxx".}
proc Knots*(this: GeomFill_UniformSection; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_UniformSection.hxx".}
proc Mults*(this: GeomFill_UniformSection; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_UniformSection.hxx".}
proc IsRational*(this: GeomFill_UniformSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_UniformSection.hxx".}
proc IsUPeriodic*(this: GeomFill_UniformSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_UniformSection.hxx".}
proc IsVPeriodic*(this: GeomFill_UniformSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_UniformSection.hxx".}
proc NbIntervals*(this: GeomFill_UniformSection; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_UniformSection.hxx".}
proc Intervals*(this: GeomFill_UniformSection; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_UniformSection.hxx".}
proc SetInterval*(this: var GeomFill_UniformSection; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_UniformSection.hxx".}
proc GetInterval*(this: GeomFill_UniformSection; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_UniformSection.hxx".}
proc GetDomain*(this: GeomFill_UniformSection; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_UniformSection.hxx".}
proc GetTolerance*(this: GeomFill_UniformSection; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_UniformSection.hxx".}
proc BarycentreOfSurf*(this: GeomFill_UniformSection): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_UniformSection.hxx".}
proc MaximalSection*(this: GeomFill_UniformSection): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_UniformSection.hxx".}
proc GetMinimalWeight*(this: GeomFill_UniformSection;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_UniformSection.hxx".}
proc IsConstant*(this: GeomFill_UniformSection; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_UniformSection.hxx".}
proc ConstantSection*(this: GeomFill_UniformSection): handle[Geom_Curve] {.
    noSideEffect, importcpp: "ConstantSection",
    header: "GeomFill_UniformSection.hxx".}
type
  GeomFill_UniformSectionbase_type* = GeomFill_SectionLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_UniformSection::get_type_name(@)",
                              header: "GeomFill_UniformSection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_UniformSection::get_type_descriptor(@)",
    header: "GeomFill_UniformSection.hxx".}
proc DynamicType*(this: GeomFill_UniformSection): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_UniformSection.hxx".}
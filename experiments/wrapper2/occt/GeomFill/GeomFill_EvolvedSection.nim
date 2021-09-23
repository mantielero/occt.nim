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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  GeomFill_SectionLaw, ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfVec,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom_Curve"
discard "forward decl of Law_Function"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_EvolvedSection"
discard "forward decl of GeomFill_EvolvedSection"
type
  Handle_GeomFill_EvolvedSection* = handle[GeomFill_EvolvedSection]

## ! Define an Constant Section Law

type
  GeomFill_EvolvedSection* {.importcpp: "GeomFill_EvolvedSection",
                            header: "GeomFill_EvolvedSection.hxx", bycopy.} = object of GeomFill_SectionLaw ##
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


proc constructGeomFill_EvolvedSection*(C: handle[Geom_Curve];
                                      L: handle[Law_Function]): GeomFill_EvolvedSection {.
    constructor, importcpp: "GeomFill_EvolvedSection(@)",
    header: "GeomFill_EvolvedSection.hxx".}
proc D0*(this: var GeomFill_EvolvedSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_EvolvedSection.hxx".}
proc D1*(this: var GeomFill_EvolvedSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_EvolvedSection.hxx".}
proc D2*(this: var GeomFill_EvolvedSection; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        D2Poles: var TColgp_Array1OfVec; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_EvolvedSection.hxx".}
proc BSplineSurface*(this: GeomFill_EvolvedSection): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface",
    header: "GeomFill_EvolvedSection.hxx".}
proc SectionShape*(this: GeomFill_EvolvedSection; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_EvolvedSection.hxx".}
proc Knots*(this: GeomFill_EvolvedSection; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_EvolvedSection.hxx".}
proc Mults*(this: GeomFill_EvolvedSection; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_EvolvedSection.hxx".}
proc IsRational*(this: GeomFill_EvolvedSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_EvolvedSection.hxx".}
proc IsUPeriodic*(this: GeomFill_EvolvedSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc IsVPeriodic*(this: GeomFill_EvolvedSection): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_EvolvedSection.hxx".}
proc NbIntervals*(this: GeomFill_EvolvedSection; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_EvolvedSection.hxx".}
proc Intervals*(this: GeomFill_EvolvedSection; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_EvolvedSection.hxx".}
proc SetInterval*(this: var GeomFill_EvolvedSection; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_EvolvedSection.hxx".}
proc GetInterval*(this: GeomFill_EvolvedSection; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_EvolvedSection.hxx".}
proc GetDomain*(this: GeomFill_EvolvedSection; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_EvolvedSection.hxx".}
proc GetTolerance*(this: GeomFill_EvolvedSection; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_EvolvedSection.hxx".}
proc BarycentreOfSurf*(this: GeomFill_EvolvedSection): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_EvolvedSection.hxx".}
proc MaximalSection*(this: GeomFill_EvolvedSection): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_EvolvedSection.hxx".}
proc GetMinimalWeight*(this: GeomFill_EvolvedSection;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_EvolvedSection.hxx".}
proc IsConstant*(this: GeomFill_EvolvedSection; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_EvolvedSection.hxx".}
proc ConstantSection*(this: GeomFill_EvolvedSection): handle[Geom_Curve] {.
    noSideEffect, importcpp: "ConstantSection",
    header: "GeomFill_EvolvedSection.hxx".}
type
  GeomFill_EvolvedSectionbase_type* = GeomFill_SectionLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_EvolvedSection::get_type_name(@)",
                              header: "GeomFill_EvolvedSection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_EvolvedSection::get_type_descriptor(@)",
    header: "GeomFill_EvolvedSection.hxx".}
proc DynamicType*(this: GeomFill_EvolvedSection): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_EvolvedSection.hxx".}
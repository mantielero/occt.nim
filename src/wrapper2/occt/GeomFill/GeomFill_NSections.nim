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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TColGeom/TColGeom_SequenceOfCurve, GeomFill_SequenceOfTrsf,
  ../TColStd/TColStd_SequenceOfReal, GeomFill_SectionLaw,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColgp/TColgp_Array1OfVec,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfInteger,
  ../GeomAbs/GeomAbs_Shape

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_NSections"
discard "forward decl of GeomFill_NSections"
type
  Handle_GeomFill_NSections* = handle[GeomFill_NSections]

## ! Define a Section Law by N Sections

type
  GeomFill_NSections* {.importcpp: "GeomFill_NSections",
                       header: "GeomFill_NSections.hxx", bycopy.} = object of GeomFill_SectionLaw ##
                                                                                           ## !
                                                                                           ## Make
                                                                                           ## a
                                                                                           ## SectionLaw
                                                                                           ## with
                                                                                           ## N
                                                                                           ## Curves.


proc constructGeomFill_NSections*(NC: TColGeom_SequenceOfCurve): GeomFill_NSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFill_NSections*(NC: TColGeom_SequenceOfCurve;
                                 NP: TColStd_SequenceOfReal): GeomFill_NSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFill_NSections*(NC: TColGeom_SequenceOfCurve;
                                 NP: TColStd_SequenceOfReal; UF: Standard_Real;
                                 UL: Standard_Real): GeomFill_NSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFill_NSections*(NC: TColGeom_SequenceOfCurve;
                                 NP: TColStd_SequenceOfReal; UF: Standard_Real;
                                 UL: Standard_Real; VF: Standard_Real;
                                 VL: Standard_Real): GeomFill_NSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc constructGeomFill_NSections*(NC: TColGeom_SequenceOfCurve;
                                 Trsfs: GeomFill_SequenceOfTrsf;
                                 NP: TColStd_SequenceOfReal; UF: Standard_Real;
                                 UL: Standard_Real; VF: Standard_Real;
                                 VL: Standard_Real;
                                 Surf: handle[Geom_BSplineSurface]): GeomFill_NSections {.
    constructor, importcpp: "GeomFill_NSections(@)",
    header: "GeomFill_NSections.hxx".}
proc D0*(this: var GeomFill_NSections; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_NSections.hxx".}
proc D1*(this: var GeomFill_NSections; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_NSections.hxx".}
proc D2*(this: var GeomFill_NSections; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        D2Poles: var TColgp_Array1OfVec; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_NSections.hxx".}
proc SetSurface*(this: var GeomFill_NSections; RefSurf: handle[Geom_BSplineSurface]) {.
    importcpp: "SetSurface", header: "GeomFill_NSections.hxx".}
proc ComputeSurface*(this: var GeomFill_NSections) {.importcpp: "ComputeSurface",
    header: "GeomFill_NSections.hxx".}
proc BSplineSurface*(this: GeomFill_NSections): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface", header: "GeomFill_NSections.hxx".}
proc SectionShape*(this: GeomFill_NSections; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_NSections.hxx".}
proc Knots*(this: GeomFill_NSections; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_NSections.hxx".}
proc Mults*(this: GeomFill_NSections; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_NSections.hxx".}
proc IsRational*(this: GeomFill_NSections): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_NSections.hxx".}
proc IsUPeriodic*(this: GeomFill_NSections): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_NSections.hxx".}
proc IsVPeriodic*(this: GeomFill_NSections): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_NSections.hxx".}
proc NbIntervals*(this: GeomFill_NSections; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_NSections.hxx".}
proc Intervals*(this: GeomFill_NSections; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_NSections.hxx".}
proc SetInterval*(this: var GeomFill_NSections; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_NSections.hxx".}
proc GetInterval*(this: GeomFill_NSections; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_NSections.hxx".}
proc GetDomain*(this: GeomFill_NSections; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_NSections.hxx".}
proc GetTolerance*(this: GeomFill_NSections; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_NSections.hxx".}
proc BarycentreOfSurf*(this: GeomFill_NSections): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_NSections.hxx".}
proc MaximalSection*(this: GeomFill_NSections): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_NSections.hxx".}
proc GetMinimalWeight*(this: GeomFill_NSections; Weigths: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "GeomFill_NSections.hxx".}
proc IsConstant*(this: GeomFill_NSections; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_NSections.hxx".}
proc ConstantSection*(this: GeomFill_NSections): handle[Geom_Curve] {.noSideEffect,
    importcpp: "ConstantSection", header: "GeomFill_NSections.hxx".}
proc IsConicalLaw*(this: GeomFill_NSections; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConicalLaw", header: "GeomFill_NSections.hxx".}
proc CirclSection*(this: GeomFill_NSections; Param: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "CirclSection", header: "GeomFill_NSections.hxx".}
type
  GeomFill_NSectionsbase_type* = GeomFill_SectionLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_NSections::get_type_name(@)",
                              header: "GeomFill_NSections.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_NSections::get_type_descriptor(@)",
    header: "GeomFill_NSections.hxx".}
proc DynamicType*(this: GeomFill_NSections): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_NSections.hxx".}
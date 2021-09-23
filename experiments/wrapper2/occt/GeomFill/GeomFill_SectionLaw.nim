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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfVec, ../Standard/Standard_Integer,
  ../TColStd/TColStd_Array1OfInteger, ../GeomAbs/GeomAbs_Shape

discard "forward decl of Standard_NotImplemented"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of GeomFill_SectionLaw"
type
  Handle_GeomFill_SectionLaw* = handle[GeomFill_SectionLaw]

## ! To define section law in  sweeping

type
  GeomFill_SectionLaw* {.importcpp: "GeomFill_SectionLaw",
                        header: "GeomFill_SectionLaw.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## compute
                                                                                            ## the
                                                                                            ## section
                                                                                            ## for
                                                                                            ## v
                                                                                            ## =
                                                                                            ## param


proc D0*(this: var GeomFill_SectionLaw; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_SectionLaw.hxx".}
proc D1*(this: var GeomFill_SectionLaw; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_SectionLaw.hxx".}
proc D2*(this: var GeomFill_SectionLaw; Param: Standard_Real;
        Poles: var TColgp_Array1OfPnt; DPoles: var TColgp_Array1OfVec;
        D2Poles: var TColgp_Array1OfVec; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_SectionLaw.hxx".}
proc BSplineSurface*(this: GeomFill_SectionLaw): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "BSplineSurface", header: "GeomFill_SectionLaw.hxx".}
proc SectionShape*(this: GeomFill_SectionLaw; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape", header: "GeomFill_SectionLaw.hxx".}
proc Knots*(this: GeomFill_SectionLaw; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_SectionLaw.hxx".}
proc Mults*(this: GeomFill_SectionLaw; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_SectionLaw.hxx".}
proc IsRational*(this: GeomFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_SectionLaw.hxx".}
proc IsUPeriodic*(this: GeomFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "GeomFill_SectionLaw.hxx".}
proc IsVPeriodic*(this: GeomFill_SectionLaw): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "GeomFill_SectionLaw.hxx".}
proc NbIntervals*(this: GeomFill_SectionLaw; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_SectionLaw.hxx".}
proc Intervals*(this: GeomFill_SectionLaw; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_SectionLaw.hxx".}
proc SetInterval*(this: var GeomFill_SectionLaw; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_SectionLaw.hxx".}
proc GetInterval*(this: GeomFill_SectionLaw; First: var Standard_Real;
                 Last: var Standard_Real) {.noSideEffect, importcpp: "GetInterval",
    header: "GeomFill_SectionLaw.hxx".}
proc GetDomain*(this: GeomFill_SectionLaw; First: var Standard_Real;
               Last: var Standard_Real) {.noSideEffect, importcpp: "GetDomain",
                                       header: "GeomFill_SectionLaw.hxx".}
proc GetTolerance*(this: GeomFill_SectionLaw; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_SectionLaw.hxx".}
proc SetTolerance*(this: var GeomFill_SectionLaw; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance",
                                        header: "GeomFill_SectionLaw.hxx".}
proc BarycentreOfSurf*(this: GeomFill_SectionLaw): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_SectionLaw.hxx".}
proc MaximalSection*(this: GeomFill_SectionLaw): Standard_Real {.noSideEffect,
    importcpp: "MaximalSection", header: "GeomFill_SectionLaw.hxx".}
proc GetMinimalWeight*(this: GeomFill_SectionLaw; Weigths: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "GetMinimalWeight", header: "GeomFill_SectionLaw.hxx".}
proc IsConstant*(this: GeomFill_SectionLaw; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConstant", header: "GeomFill_SectionLaw.hxx".}
proc ConstantSection*(this: GeomFill_SectionLaw): handle[Geom_Curve] {.noSideEffect,
    importcpp: "ConstantSection", header: "GeomFill_SectionLaw.hxx".}
proc IsConicalLaw*(this: GeomFill_SectionLaw; Error: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsConicalLaw", header: "GeomFill_SectionLaw.hxx".}
proc CirclSection*(this: GeomFill_SectionLaw; Param: Standard_Real): handle[
    Geom_Curve] {.noSideEffect, importcpp: "CirclSection",
                 header: "GeomFill_SectionLaw.hxx".}
type
  GeomFill_SectionLawbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_SectionLaw::get_type_name(@)",
                              header: "GeomFill_SectionLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_SectionLaw::get_type_descriptor(@)",
    header: "GeomFill_SectionLaw.hxx".}
proc DynamicType*(this: GeomFill_SectionLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_SectionLaw.hxx".}
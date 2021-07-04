##  Created on: 1997-09-22
##  Created by: Roman BORISOV
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ProjLib_HSequenceOfHSequenceOfPnt, ../Standard/Standard_Real,
  ../TColStd/TColStd_HArray1OfBoolean, ../TColStd/TColStd_HArray1OfReal,
  ../Adaptor2d/Adaptor2d_Curve2d, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_Shape, ../TColStd/TColStd_Array1OfReal,
  ../GeomAbs/GeomAbs_CurveType

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Adaptor2d_HCurve2d"
type
  ProjLib_CompProjectedCurve* {.importcpp: "ProjLib_CompProjectedCurve",
                               header: "ProjLib_CompProjectedCurve.hxx", bycopy.} = object of Adaptor2d_Curve2d ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## method
                                                                                                         ## performs
                                                                                                         ## check
                                                                                                         ## possibility
                                                                                                         ## of
                                                                                                         ## optimization
                                                                                                         ## traps
                                                                                                         ## and
                                                                                                         ## tries
                                                                                                         ## to
                                                                                                         ## go
                                                                                                         ## out
                                                                                                         ## from
                                                                                                         ## them.
                                                                                                         ##
                                                                                                         ## @return
                                                                                                         ## thePoint
                                                                                                         ## -
                                                                                                         ## input
                                                                                                         ## /
                                                                                                         ## corrected
                                                                                                         ## point.


proc constructProjLib_CompProjectedCurve*(): ProjLib_CompProjectedCurve {.
    constructor, importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc constructProjLib_CompProjectedCurve*(S: handle[Adaptor3d_HSurface];
    C: handle[Adaptor3d_HCurve]; TolU: Standard_Real; TolV: Standard_Real): ProjLib_CompProjectedCurve {.
    constructor, importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc constructProjLib_CompProjectedCurve*(S: handle[Adaptor3d_HSurface];
    C: handle[Adaptor3d_HCurve]; TolU: Standard_Real; TolV: Standard_Real;
    MaxDist: Standard_Real): ProjLib_CompProjectedCurve {.constructor,
    importcpp: "ProjLib_CompProjectedCurve(@)",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc Init*(this: var ProjLib_CompProjectedCurve) {.importcpp: "Init",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc Load*(this: var ProjLib_CompProjectedCurve; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "Load", header: "ProjLib_CompProjectedCurve.hxx".}
proc Load*(this: var ProjLib_CompProjectedCurve; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "Load", header: "ProjLib_CompProjectedCurve.hxx".}
proc GetSurface*(this: ProjLib_CompProjectedCurve): handle[Adaptor3d_HSurface] {.
    noSideEffect, importcpp: "GetSurface", header: "ProjLib_CompProjectedCurve.hxx".}
proc GetCurve*(this: ProjLib_CompProjectedCurve): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "GetCurve", header: "ProjLib_CompProjectedCurve.hxx".}
proc GetTolerance*(this: ProjLib_CompProjectedCurve; TolU: var Standard_Real;
                  TolV: var Standard_Real) {.noSideEffect,
    importcpp: "GetTolerance", header: "ProjLib_CompProjectedCurve.hxx".}
proc NbCurves*(this: ProjLib_CompProjectedCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "ProjLib_CompProjectedCurve.hxx".}
proc Bounds*(this: ProjLib_CompProjectedCurve; Index: Standard_Integer;
            Udeb: var Standard_Real; Ufin: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "ProjLib_CompProjectedCurve.hxx".}
proc IsSinglePnt*(this: ProjLib_CompProjectedCurve; Index: Standard_Integer;
                 P: var gp_Pnt2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsSinglePnt", header: "ProjLib_CompProjectedCurve.hxx".}
proc IsUIso*(this: ProjLib_CompProjectedCurve; Index: Standard_Integer;
            U: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsUIso", header: "ProjLib_CompProjectedCurve.hxx".}
proc IsVIso*(this: ProjLib_CompProjectedCurve; Index: Standard_Integer;
            V: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsVIso", header: "ProjLib_CompProjectedCurve.hxx".}
proc Value*(this: ProjLib_CompProjectedCurve; U: Standard_Real): gp_Pnt2d {.
    noSideEffect, importcpp: "Value", header: "ProjLib_CompProjectedCurve.hxx".}
proc D0*(this: ProjLib_CompProjectedCurve; U: Standard_Real; P: var gp_Pnt2d) {.
    noSideEffect, importcpp: "D0", header: "ProjLib_CompProjectedCurve.hxx".}
proc D1*(this: ProjLib_CompProjectedCurve; U: Standard_Real; P: var gp_Pnt2d;
        V: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
                        header: "ProjLib_CompProjectedCurve.hxx".}
proc D2*(this: ProjLib_CompProjectedCurve; U: Standard_Real; P: var gp_Pnt2d;
        V1: var gp_Vec2d; V2: var gp_Vec2d) {.noSideEffect, importcpp: "D2", header: "ProjLib_CompProjectedCurve.hxx".}
proc DN*(this: ProjLib_CompProjectedCurve; U: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    noSideEffect, importcpp: "DN", header: "ProjLib_CompProjectedCurve.hxx".}
proc FirstParameter*(this: ProjLib_CompProjectedCurve): Standard_Real {.
    noSideEffect, importcpp: "FirstParameter",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc LastParameter*(this: ProjLib_CompProjectedCurve): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "ProjLib_CompProjectedCurve.hxx".}
proc NbIntervals*(this: ProjLib_CompProjectedCurve; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc Trim*(this: ProjLib_CompProjectedCurve; FirstParam: Standard_Real;
          LastParam: Standard_Real; Tol: Standard_Real): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "Trim", header: "ProjLib_CompProjectedCurve.hxx".}
proc Intervals*(this: ProjLib_CompProjectedCurve; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "ProjLib_CompProjectedCurve.hxx".}
proc MaxDistance*(this: ProjLib_CompProjectedCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "MaxDistance",
    header: "ProjLib_CompProjectedCurve.hxx".}
proc GetSequence*(this: ProjLib_CompProjectedCurve): handle[
    ProjLib_HSequenceOfHSequenceOfPnt] {.noSideEffect, importcpp: "GetSequence", header: "ProjLib_CompProjectedCurve.hxx".}
proc GetType*(this: ProjLib_CompProjectedCurve): GeomAbs_CurveType {.noSideEffect,
    importcpp: "GetType", header: "ProjLib_CompProjectedCurve.hxx".}
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TColGeom2d/TColGeom2d_HArray1OfCurve,
  ../TColStd/TColStd_HArray2OfReal, GeomFill_ApproxStyle,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer

discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of GeomFill_SectionLaw"
discard "forward decl of Geom_Surface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2d_Curve"
type
  GeomFill_Sweep* {.importcpp: "GeomFill_Sweep", header: "GeomFill_Sweep.hxx", bycopy.} = object


proc constructGeomFill_Sweep*(Location: handle[GeomFill_LocationLaw];
                             WithKpart: Standard_Boolean = Standard_True): GeomFill_Sweep {.
    constructor, importcpp: "GeomFill_Sweep(@)", header: "GeomFill_Sweep.hxx".}
proc SetDomain*(this: var GeomFill_Sweep; First: Standard_Real; Last: Standard_Real;
               SectionFirst: Standard_Real; SectionLast: Standard_Real) {.
    importcpp: "SetDomain", header: "GeomFill_Sweep.hxx".}
proc SetTolerance*(this: var GeomFill_Sweep; Tol3d: Standard_Real;
                  BoundTol: Standard_Real = 1.0; Tol2d: Standard_Real = 1.0e-5;
                  TolAngular: Standard_Real = 1.0) {.importcpp: "SetTolerance",
    header: "GeomFill_Sweep.hxx".}
proc SetForceApproxC1*(this: var GeomFill_Sweep; ForceApproxC1: Standard_Boolean) {.
    importcpp: "SetForceApproxC1", header: "GeomFill_Sweep.hxx".}
proc ExchangeUV*(this: GeomFill_Sweep): Standard_Boolean {.noSideEffect,
    importcpp: "ExchangeUV", header: "GeomFill_Sweep.hxx".}
proc UReversed*(this: GeomFill_Sweep): Standard_Boolean {.noSideEffect,
    importcpp: "UReversed", header: "GeomFill_Sweep.hxx".}
proc VReversed*(this: GeomFill_Sweep): Standard_Boolean {.noSideEffect,
    importcpp: "VReversed", header: "GeomFill_Sweep.hxx".}
proc Build*(this: var GeomFill_Sweep; Section: handle[GeomFill_SectionLaw];
           Methode: GeomFill_ApproxStyle = GeomFill_Location;
           Continuity: GeomAbs_Shape = GeomAbs_C2; Degmax: Standard_Integer = 10;
           Segmax: Standard_Integer = 30) {.importcpp: "Build",
                                        header: "GeomFill_Sweep.hxx".}
proc IsDone*(this: GeomFill_Sweep): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomFill_Sweep.hxx".}
proc ErrorOnSurface*(this: GeomFill_Sweep): Standard_Real {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "GeomFill_Sweep.hxx".}
proc ErrorOnRestriction*(this: GeomFill_Sweep; IsFirst: Standard_Boolean;
                        UError: var Standard_Real; VError: var Standard_Real) {.
    noSideEffect, importcpp: "ErrorOnRestriction", header: "GeomFill_Sweep.hxx".}
proc ErrorOnTrace*(this: GeomFill_Sweep; IndexOfTrace: Standard_Integer;
                  UError: var Standard_Real; VError: var Standard_Real) {.
    noSideEffect, importcpp: "ErrorOnTrace", header: "GeomFill_Sweep.hxx".}
proc Surface*(this: GeomFill_Sweep): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_Sweep.hxx".}
proc Restriction*(this: GeomFill_Sweep; IsFirst: Standard_Boolean): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "Restriction",
                   header: "GeomFill_Sweep.hxx".}
proc NumberOfTrace*(this: GeomFill_Sweep): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfTrace", header: "GeomFill_Sweep.hxx".}
proc Trace*(this: GeomFill_Sweep; IndexOfTrace: Standard_Integer): handle[
    Geom2d_Curve] {.noSideEffect, importcpp: "Trace", header: "GeomFill_Sweep.hxx".}
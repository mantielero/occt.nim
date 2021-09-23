##  Created on: 1995-10-13
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Real, GeomFill_CornerState, ../gp/gp_Vec,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_HArray1OfPnt,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_HArray2OfPnt

discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of GeomFill_TgtField"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of GeomFill_Boundary"
discard "forward decl of GeomFill_BoundWithSurf"
type
  GeomFill_ConstrainedFilling* {.importcpp: "GeomFill_ConstrainedFilling",
                                header: "GeomFill_ConstrainedFilling.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Constructs
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## framework
                                                                                        ## for
                                                                                        ## filling
                                                                                        ## a
                                                                                        ## surface
                                                                                        ## from
                                                                                        ## boundaries.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## boundaries
                                                                                        ## of
                                                                                        ## the
                                                                                        ## surface
                                                                                        ## will
                                                                                        ## be
                                                                                        ## defined,
                                                                                        ## and
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## surface
                                                                                        ## will
                                                                                        ## be
                                                                                        ## built
                                                                                        ## by
                                                                                        ## using
                                                                                        ## the
                                                                                        ## function
                                                                                        ## Init.
                                                                                        ##
                                                                                        ## !
                                                                                        ## The
                                                                                        ## surface
                                                                                        ## will
                                                                                        ## respect
                                                                                        ## the
                                                                                        ## following
                                                                                        ## constraints:
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## its
                                                                                        ## degree
                                                                                        ## will
                                                                                        ## not
                                                                                        ## be
                                                                                        ## greater
                                                                                        ## than
                                                                                        ## MaxDeg
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## the
                                                                                        ## maximum
                                                                                        ## number
                                                                                        ## of
                                                                                        ## segments
                                                                                        ## MaxSeg
                                                                                        ## which
                                                                                        ##
                                                                                        ## !
                                                                                        ## BSpline
                                                                                        ## surfaces
                                                                                        ## can
                                                                                        ## have.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Performs
                                                                                        ## the
                                                                                        ## approximation
                                                                                        ## an
                                                                                        ## compute
                                                                                        ## the
                                                                                        ## poles
                                                                                        ## of
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## surface.


proc constructGeomFill_ConstrainedFilling*(MaxDeg: Standard_Integer;
    MaxSeg: Standard_Integer): GeomFill_ConstrainedFilling {.constructor,
    importcpp: "GeomFill_ConstrainedFilling(@)",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc Init*(this: var GeomFill_ConstrainedFilling; B1: handle[GeomFill_Boundary];
          B2: handle[GeomFill_Boundary]; B3: handle[GeomFill_Boundary];
          NoCheck: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc Init*(this: var GeomFill_ConstrainedFilling; B1: handle[GeomFill_Boundary];
          B2: handle[GeomFill_Boundary]; B3: handle[GeomFill_Boundary];
          B4: handle[GeomFill_Boundary];
          NoCheck: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc SetDomain*(this: var GeomFill_ConstrainedFilling; l: Standard_Real;
               B: handle[GeomFill_BoundWithSurf]) {.importcpp: "SetDomain",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc ReBuild*(this: var GeomFill_ConstrainedFilling) {.importcpp: "ReBuild",
    header: "GeomFill_ConstrainedFilling.hxx".}
proc Boundary*(this: GeomFill_ConstrainedFilling; I: Standard_Integer): handle[
    GeomFill_Boundary] {.noSideEffect, importcpp: "Boundary",
                        header: "GeomFill_ConstrainedFilling.hxx".}
proc Surface*(this: GeomFill_ConstrainedFilling): handle[Geom_BSplineSurface] {.
    noSideEffect, importcpp: "Surface", header: "GeomFill_ConstrainedFilling.hxx".}
proc Eval*(this: GeomFill_ConstrainedFilling; W: Standard_Real;
          Ord: Standard_Integer; Result: var Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "Eval", header: "GeomFill_ConstrainedFilling.hxx".}
proc CheckCoonsAlgPatch*(this: var GeomFill_ConstrainedFilling; I: Standard_Integer) {.
    importcpp: "CheckCoonsAlgPatch", header: "GeomFill_ConstrainedFilling.hxx".}
proc CheckTgteField*(this: var GeomFill_ConstrainedFilling; I: Standard_Integer) {.
    importcpp: "CheckTgteField", header: "GeomFill_ConstrainedFilling.hxx".}
proc CheckApprox*(this: var GeomFill_ConstrainedFilling; I: Standard_Integer) {.
    importcpp: "CheckApprox", header: "GeomFill_ConstrainedFilling.hxx".}
proc CheckResult*(this: var GeomFill_ConstrainedFilling; I: Standard_Integer) {.
    importcpp: "CheckResult", header: "GeomFill_ConstrainedFilling.hxx".}
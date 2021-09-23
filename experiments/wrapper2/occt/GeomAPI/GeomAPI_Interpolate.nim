##  Created on: 1994-08-18
##  Created by: Laurent PAINNOT
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../TColgp/TColgp_HArray1OfPnt, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_HArray1OfVec, ../TColStd/TColStd_HArray1OfBoolean,
  ../TColStd/TColStd_HArray1OfReal, ../TColgp/TColgp_Array1OfVec,
  ../Geom/Geom_BSplineCurve

discard "forward decl of gp_Vec"
type
  GeomAPI_Interpolate* {.importcpp: "GeomAPI_Interpolate",
                        header: "GeomAPI_Interpolate.hxx", bycopy.} = object ## !
                                                                        ## Initializes an
                                                                        ## algorithm for
                                                                        ## constructing a
                                                                        ## !
                                                                        ## constrained BSpline curve passing through the points of the table   Points.
                                                                        ## !
                                                                        ## Tangential vectors can then be
                                                                        ## assigned, using the function Load.
                                                                        ## ! If
                                                                        ## PeriodicFlag is true, the
                                                                        ## constrained BSpline
                                                                        ## ! curve will be periodic and closed. In this case,
                                                                        ## ! the junction point is the first point of the table Points.
                                                                        ## ! The
                                                                        ## tolerance value
                                                                        ## Tolerance is used to check that:
                                                                        ## ! -   points are not too close to each other, or
                                                                        ## ! -
                                                                        ## tangential vectors (defined using the
                                                                        ## ! function Load) are not too small.
                                                                        ## ! The
                                                                        ## resulting BSpline curve will be "C2"
                                                                        ## !
                                                                        ## continuous, except where a tangency
                                                                        ## !
                                                                        ## constraint is defined on a point through which
                                                                        ## ! the curve passes (by using the Load
                                                                        ## function).
                                                                        ## ! In this case, it will be only "C1"
                                                                        ## continuous.
                                                                        ## ! Once all the
                                                                        ## constraints are defined, use the
                                                                        ## ! function Perform to compute the curve.
                                                                        ## ! Warning
                                                                        ## ! -   There must be at least 2 points in the table Points.
                                                                        ## ! -   If
                                                                        ## PeriodicFlag is false, there must be as
                                                                        ## ! many
                                                                        ## parameters in the array
                                                                        ## Parameters as
                                                                        ## ! there are points in the array Points.
                                                                        ## ! -   If
                                                                        ## PeriodicFlag is true, there must be one
                                                                        ## ! more
                                                                        ## parameter in the table
                                                                        ## Parameters: this
                                                                        ## ! is used to give the
                                                                        ## parameter on the
                                                                        ## !
                                                                        ## resulting BSpline curve of the junction point
                                                                        ## ! of the curve (which is also the first point of the table Points).
                                                                        ## !
                                                                        ## Exceptions
                                                                        ## ! -
                                                                        ## Standard_ConstructionError if the
                                                                        ## ! distance between two
                                                                        ## consecutive points in
                                                                        ## ! the table Points is less than or equal to
                                                                        ## Tolerance.
                                                                        ## ! -
                                                                        ## Standard_OutOfRange if:
                                                                        ## ! -   there are less than two points in the table Points, or
                                                                        ## ! -
                                                                        ## conditions relating to the
                                                                        ## respective
                                                                        ## ! number of elements in the parallel tables
                                                                        ## ! Points and
                                                                        ## Parameters are not
                                                                        ## respected.
                                                                        ## !
                                                                        ## Interpolates in a non periodic fashion


proc constructGeomAPI_Interpolate*(Points: handle[TColgp_HArray1OfPnt];
                                  PeriodicFlag: Standard_Boolean;
                                  Tolerance: Standard_Real): GeomAPI_Interpolate {.
    constructor, importcpp: "GeomAPI_Interpolate(@)",
    header: "GeomAPI_Interpolate.hxx".}
proc constructGeomAPI_Interpolate*(Points: handle[TColgp_HArray1OfPnt];
                                  Parameters: handle[TColStd_HArray1OfReal];
                                  PeriodicFlag: Standard_Boolean;
                                  Tolerance: Standard_Real): GeomAPI_Interpolate {.
    constructor, importcpp: "GeomAPI_Interpolate(@)",
    header: "GeomAPI_Interpolate.hxx".}
proc Load*(this: var GeomAPI_Interpolate; InitialTangent: gp_Vec;
          FinalTangent: gp_Vec; Scale: Standard_Boolean = Standard_True) {.
    importcpp: "Load", header: "GeomAPI_Interpolate.hxx".}
proc Load*(this: var GeomAPI_Interpolate; Tangents: TColgp_Array1OfVec;
          TangentFlags: handle[TColStd_HArray1OfBoolean];
          Scale: Standard_Boolean = Standard_True) {.importcpp: "Load",
    header: "GeomAPI_Interpolate.hxx".}
proc ClearTangents*(this: var GeomAPI_Interpolate) {.importcpp: "ClearTangents",
    header: "GeomAPI_Interpolate.hxx".}
proc Perform*(this: var GeomAPI_Interpolate) {.importcpp: "Perform",
    header: "GeomAPI_Interpolate.hxx".}
proc Curve*(this: GeomAPI_Interpolate): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomAPI_Interpolate.hxx".}
converter `opencascade`*(this: GeomAPI_Interpolate): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "GeomAPI_Interpolate::operator opencascade",
    header: "GeomAPI_Interpolate.hxx".}
proc IsDone*(this: GeomAPI_Interpolate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_Interpolate.hxx".}
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
  ../TColgp/TColgp_HArray1OfPnt2d, ../Standard/Standard_Boolean,
  ../TColgp/TColgp_HArray1OfVec2d, ../TColStd/TColStd_HArray1OfBoolean,
  ../TColStd/TColStd_HArray1OfReal, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec2d"
type
  Geom2dAPI_Interpolate* {.importcpp: "Geom2dAPI_Interpolate",
                          header: "Geom2dAPI_Interpolate.hxx", bycopy.} = object ## !
                                                                            ## Tolerance is to
                                                                            ## check if the
                                                                            ## points are not too
                                                                            ## close to one an
                                                                            ## other
                                                                            ## ! It is also used to
                                                                            ## check if the
                                                                            ## tangent
                                                                            ## vector is not too
                                                                            ## small.
                                                                            ## !
                                                                            ## There
                                                                            ## should be at
                                                                            ## least 2
                                                                            ## points
                                                                            ## ! if
                                                                            ## PeriodicFlag is True then the
                                                                            ## curve will be
                                                                            ## periodic.
                                                                            ## !
                                                                            ## Interpolates in a non
                                                                            ## periodic
                                                                            ## fashion


proc constructGeom2dAPI_Interpolate*(Points: handle[TColgp_HArray1OfPnt2d];
                                    PeriodicFlag: Standard_Boolean;
                                    Tolerance: Standard_Real): Geom2dAPI_Interpolate {.
    constructor, importcpp: "Geom2dAPI_Interpolate(@)",
    header: "Geom2dAPI_Interpolate.hxx".}
proc constructGeom2dAPI_Interpolate*(Points: handle[TColgp_HArray1OfPnt2d];
                                    Parameters: handle[TColStd_HArray1OfReal];
                                    PeriodicFlag: Standard_Boolean;
                                    Tolerance: Standard_Real): Geom2dAPI_Interpolate {.
    constructor, importcpp: "Geom2dAPI_Interpolate(@)",
    header: "Geom2dAPI_Interpolate.hxx".}
proc Load*(this: var Geom2dAPI_Interpolate; InitialTangent: gp_Vec2d;
          FinalTangent: gp_Vec2d; Scale: Standard_Boolean = Standard_True) {.
    importcpp: "Load", header: "Geom2dAPI_Interpolate.hxx".}
proc Load*(this: var Geom2dAPI_Interpolate; Tangents: TColgp_Array1OfVec2d;
          TangentFlags: handle[TColStd_HArray1OfBoolean];
          Scale: Standard_Boolean = Standard_True) {.importcpp: "Load",
    header: "Geom2dAPI_Interpolate.hxx".}
proc ClearTangents*(this: var Geom2dAPI_Interpolate) {.importcpp: "ClearTangents",
    header: "Geom2dAPI_Interpolate.hxx".}
proc Perform*(this: var Geom2dAPI_Interpolate) {.importcpp: "Perform",
    header: "Geom2dAPI_Interpolate.hxx".}
proc Curve*(this: Geom2dAPI_Interpolate): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve", header: "Geom2dAPI_Interpolate.hxx".}
converter `opencascade`*(this: Geom2dAPI_Interpolate): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Geom2dAPI_Interpolate::operator opencascade",
    header: "Geom2dAPI_Interpolate.hxx".}
proc IsDone*(this: Geom2dAPI_Interpolate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dAPI_Interpolate.hxx".}
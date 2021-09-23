##  Created on: 1997-07-11
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Convert/Convert_ParameterisationType, ../Standard/Standard_Boolean,
  ../Approx/Approx_SweepFunction, ../TColgp/TColgp_Array1OfPnt,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../TColgp/TColgp_Array1OfVec, ../TColgp/TColgp_Array1OfVec2d,
  ../TColStd/TColStd_Array1OfInteger, ../GeomAbs/GeomAbs_Shape

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_CircularBlendFunc"
discard "forward decl of GeomFill_CircularBlendFunc"
type
  Handle_GeomFill_CircularBlendFunc* = handle[GeomFill_CircularBlendFunc]

## ! Circular     Blend Function  to    approximate by
## ! SweepApproximation from Approx

type
  GeomFill_CircularBlendFunc* {.importcpp: "GeomFill_CircularBlendFunc",
                               header: "GeomFill_CircularBlendFunc.hxx", bycopy.} = object of Approx_SweepFunction ##
                                                                                                            ## !
                                                                                                            ## Create
                                                                                                            ## a
                                                                                                            ## Blend
                                                                                                            ## with
                                                                                                            ## a
                                                                                                            ## constant
                                                                                                            ## radius
                                                                                                            ## with
                                                                                                            ## 2
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## guide-line.
                                                                                                            ## <FShape>
                                                                                                            ## sets
                                                                                                            ## the
                                                                                                            ## type
                                                                                                            ## of
                                                                                                            ## fillet
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## surface.
                                                                                                            ## The
                                                                                                            ## --
                                                                                                            ## default
                                                                                                            ## value
                                                                                                            ## is
                                                                                                            ## Convert_TgtThetaOver2
                                                                                                            ## (classical
                                                                                                            ## --
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## nurbs
                                                                                                            ## --
                                                                                                            ## representation
                                                                                                            ## of
                                                                                                            ## circles).
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## ChFi3d_QuasiAngular
                                                                                                            ## --
                                                                                                            ## corresponds
                                                                                                            ## to
                                                                                                            ## a
                                                                                                            ## nurbs
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## representation
                                                                                                            ## of
                                                                                                            ## circles
                                                                                                            ## --
                                                                                                            ## which
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## parameterisation
                                                                                                            ## matches
                                                                                                            ## the
                                                                                                            ## circle
                                                                                                            ## one.
                                                                                                            ## --
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## ChFi3d_Polynomial
                                                                                                            ## corresponds
                                                                                                            ## to
                                                                                                            ## a
                                                                                                            ## polynomial
                                                                                                            ## --
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## representation
                                                                                                            ## of
                                                                                                            ## circles.


proc constructGeomFill_CircularBlendFunc*(Path: handle[Adaptor3d_HCurve];
    Curve1: handle[Adaptor3d_HCurve]; Curve2: handle[Adaptor3d_HCurve];
    Radius: Standard_Real; Polynomial: Standard_Boolean = Standard_False): GeomFill_CircularBlendFunc {.
    constructor, importcpp: "GeomFill_CircularBlendFunc(@)",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc D0*(this: var GeomFill_CircularBlendFunc; Param: Standard_Real;
        First: Standard_Real; Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        Poles2d: var TColgp_Array1OfPnt2d; Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D0", header: "GeomFill_CircularBlendFunc.hxx".}
proc D1*(this: var GeomFill_CircularBlendFunc; Param: Standard_Real;
        First: Standard_Real; Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; Poles2d: var TColgp_Array1OfPnt2d;
        DPoles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal): Standard_Boolean {.importcpp: "D1",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc D2*(this: var GeomFill_CircularBlendFunc; Param: Standard_Real;
        First: Standard_Real; Last: Standard_Real; Poles: var TColgp_Array1OfPnt;
        DPoles: var TColgp_Array1OfVec; D2Poles: var TColgp_Array1OfVec;
        Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
        D2Poles2d: var TColgp_Array1OfVec2d; Weigths: var TColStd_Array1OfReal;
        DWeigths: var TColStd_Array1OfReal; D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_CircularBlendFunc.hxx".}
proc Nb2dCurves*(this: GeomFill_CircularBlendFunc): Standard_Integer {.noSideEffect,
    importcpp: "Nb2dCurves", header: "GeomFill_CircularBlendFunc.hxx".}
proc SectionShape*(this: GeomFill_CircularBlendFunc; NbPoles: var Standard_Integer;
                  NbKnots: var Standard_Integer; Degree: var Standard_Integer) {.
    noSideEffect, importcpp: "SectionShape",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc Knots*(this: GeomFill_CircularBlendFunc; TKnots: var TColStd_Array1OfReal) {.
    noSideEffect, importcpp: "Knots", header: "GeomFill_CircularBlendFunc.hxx".}
proc Mults*(this: GeomFill_CircularBlendFunc; TMults: var TColStd_Array1OfInteger) {.
    noSideEffect, importcpp: "Mults", header: "GeomFill_CircularBlendFunc.hxx".}
proc IsRational*(this: GeomFill_CircularBlendFunc): Standard_Boolean {.noSideEffect,
    importcpp: "IsRational", header: "GeomFill_CircularBlendFunc.hxx".}
proc NbIntervals*(this: GeomFill_CircularBlendFunc; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc Intervals*(this: GeomFill_CircularBlendFunc; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_CircularBlendFunc.hxx".}
proc SetInterval*(this: var GeomFill_CircularBlendFunc; First: Standard_Real;
                 Last: Standard_Real) {.importcpp: "SetInterval",
                                      header: "GeomFill_CircularBlendFunc.hxx".}
proc GetTolerance*(this: GeomFill_CircularBlendFunc; BoundTol: Standard_Real;
                  SurfTol: Standard_Real; AngleTol: Standard_Real;
                  Tol3d: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc SetTolerance*(this: var GeomFill_CircularBlendFunc; Tol3d: Standard_Real;
                  Tol2d: Standard_Real) {.importcpp: "SetTolerance", header: "GeomFill_CircularBlendFunc.hxx".}
proc BarycentreOfSurf*(this: GeomFill_CircularBlendFunc): gp_Pnt {.noSideEffect,
    importcpp: "BarycentreOfSurf", header: "GeomFill_CircularBlendFunc.hxx".}
proc MaximalSection*(this: GeomFill_CircularBlendFunc): Standard_Real {.
    noSideEffect, importcpp: "MaximalSection",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc GetMinimalWeight*(this: GeomFill_CircularBlendFunc;
                      Weigths: var TColStd_Array1OfReal) {.noSideEffect,
    importcpp: "GetMinimalWeight", header: "GeomFill_CircularBlendFunc.hxx".}
type
  GeomFill_CircularBlendFuncbase_type* = Approx_SweepFunction

proc get_type_name*(): cstring {.importcpp: "GeomFill_CircularBlendFunc::get_type_name(@)",
                              header: "GeomFill_CircularBlendFunc.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_CircularBlendFunc::get_type_descriptor(@)",
    header: "GeomFill_CircularBlendFunc.hxx".}
proc DynamicType*(this: GeomFill_CircularBlendFunc): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_CircularBlendFunc.hxx".}
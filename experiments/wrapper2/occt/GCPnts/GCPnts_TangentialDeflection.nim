##  Created on: 1996-11-08
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TColgp/TColgp_SequenceOfPnt, ../TColStd/TColStd_SequenceOfReal, ../gp/gp_Pnt,
  ../gp/gp_Lin, ../math/math_Function, ../math/math_MultipleVarFunction,
  ../Adaptor3d/Adaptor3d_Curve, ../Adaptor2d/Adaptor2d_Curve2d

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  GCPnts_TangentialDeflection* {.importcpp: "GCPnts_TangentialDeflection",
                                header: "GCPnts_TangentialDeflection.hxx", bycopy.} = object


proc constructGCPnts_TangentialDeflection*(): GCPnts_TangentialDeflection {.
    constructor, importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPnts_TangentialDeflection*(C: Adaptor3d_Curve;
    AngularDeflection: Standard_Real; CurvatureDeflection: Standard_Real;
    MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
    theMinLen: Standard_Real = 1.0e-7): GCPnts_TangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPnts_TangentialDeflection*(C: Adaptor3d_Curve;
    FirstParameter: Standard_Real; LastParameter: Standard_Real;
    AngularDeflection: Standard_Real; CurvatureDeflection: Standard_Real;
    MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
    theMinLen: Standard_Real = 1.0e-7): GCPnts_TangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPnts_TangentialDeflection*(C: Adaptor2d_Curve2d;
    AngularDeflection: Standard_Real; CurvatureDeflection: Standard_Real;
    MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
    theMinLen: Standard_Real = 1.0e-7): GCPnts_TangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPnts_TangentialDeflection*(C: Adaptor2d_Curve2d;
    FirstParameter: Standard_Real; LastParameter: Standard_Real;
    AngularDeflection: Standard_Real; CurvatureDeflection: Standard_Real;
    MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
    theMinLen: Standard_Real = 1.0e-7): GCPnts_TangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc Initialize*(this: var GCPnts_TangentialDeflection; C: Adaptor3d_Curve;
                AngularDeflection: Standard_Real;
                CurvatureDeflection: Standard_Real;
                MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
                theMinLen: Standard_Real = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc Initialize*(this: var GCPnts_TangentialDeflection; C: Adaptor3d_Curve;
                FirstParameter: Standard_Real; LastParameter: Standard_Real;
                AngularDeflection: Standard_Real;
                CurvatureDeflection: Standard_Real;
                MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
                theMinLen: Standard_Real = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc Initialize*(this: var GCPnts_TangentialDeflection; C: Adaptor2d_Curve2d;
                AngularDeflection: Standard_Real;
                CurvatureDeflection: Standard_Real;
                MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
                theMinLen: Standard_Real = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc Initialize*(this: var GCPnts_TangentialDeflection; C: Adaptor2d_Curve2d;
                FirstParameter: Standard_Real; LastParameter: Standard_Real;
                AngularDeflection: Standard_Real;
                CurvatureDeflection: Standard_Real;
                MinimumOfPoints: Standard_Integer = 2; UTol: Standard_Real = 1.0e-9;
                theMinLen: Standard_Real = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc AddPoint*(this: var GCPnts_TangentialDeflection; thePnt: gp_Pnt;
              theParam: Standard_Real;
              theIsReplace: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "AddPoint", header: "GCPnts_TangentialDeflection.hxx".}
proc NbPoints*(this: GCPnts_TangentialDeflection): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_TangentialDeflection.hxx".}
proc Parameter*(this: GCPnts_TangentialDeflection; I: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_TangentialDeflection.hxx".}
proc Value*(this: GCPnts_TangentialDeflection; I: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "GCPnts_TangentialDeflection.hxx".}
proc ArcAngularStep*(theRadius: Standard_Real; theLinearDeflection: Standard_Real;
                    theAngularDeflection: Standard_Real;
                    theMinLength: Standard_Real): Standard_Real {.
    importcpp: "GCPnts_TangentialDeflection::ArcAngularStep(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
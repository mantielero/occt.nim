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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  GCPntsTangentialDeflection* {.importcpp: "GCPnts_TangentialDeflection",
                               header: "GCPnts_TangentialDeflection.hxx", bycopy.} = object


proc constructGCPntsTangentialDeflection*(): GCPntsTangentialDeflection {.
    constructor, importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPntsTangentialDeflection*(c: Adaptor3dCurve;
    angularDeflection: StandardReal; curvatureDeflection: StandardReal;
    minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
    theMinLen: StandardReal = 1.0e-7): GCPntsTangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPntsTangentialDeflection*(c: Adaptor3dCurve;
    firstParameter: StandardReal; lastParameter: StandardReal;
    angularDeflection: StandardReal; curvatureDeflection: StandardReal;
    minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
    theMinLen: StandardReal = 1.0e-7): GCPntsTangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPntsTangentialDeflection*(c: Adaptor2dCurve2d;
    angularDeflection: StandardReal; curvatureDeflection: StandardReal;
    minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
    theMinLen: StandardReal = 1.0e-7): GCPntsTangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc constructGCPntsTangentialDeflection*(c: Adaptor2dCurve2d;
    firstParameter: StandardReal; lastParameter: StandardReal;
    angularDeflection: StandardReal; curvatureDeflection: StandardReal;
    minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
    theMinLen: StandardReal = 1.0e-7): GCPntsTangentialDeflection {.constructor,
    importcpp: "GCPnts_TangentialDeflection(@)",
    header: "GCPnts_TangentialDeflection.hxx".}
proc initialize*(this: var GCPntsTangentialDeflection; c: Adaptor3dCurve;
                angularDeflection: StandardReal;
                curvatureDeflection: StandardReal;
                minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
                theMinLen: StandardReal = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc initialize*(this: var GCPntsTangentialDeflection; c: Adaptor3dCurve;
                firstParameter: StandardReal; lastParameter: StandardReal;
                angularDeflection: StandardReal;
                curvatureDeflection: StandardReal;
                minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
                theMinLen: StandardReal = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc initialize*(this: var GCPntsTangentialDeflection; c: Adaptor2dCurve2d;
                angularDeflection: StandardReal;
                curvatureDeflection: StandardReal;
                minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
                theMinLen: StandardReal = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc initialize*(this: var GCPntsTangentialDeflection; c: Adaptor2dCurve2d;
                firstParameter: StandardReal; lastParameter: StandardReal;
                angularDeflection: StandardReal;
                curvatureDeflection: StandardReal;
                minimumOfPoints: StandardInteger = 2; uTol: StandardReal = 1.0e-9;
                theMinLen: StandardReal = 1.0e-7) {.importcpp: "Initialize",
    header: "GCPnts_TangentialDeflection.hxx".}
proc addPoint*(this: var GCPntsTangentialDeflection; thePnt: GpPnt;
              theParam: StandardReal; theIsReplace: StandardBoolean = standardTrue): StandardInteger {.
    importcpp: "AddPoint", header: "GCPnts_TangentialDeflection.hxx".}
proc nbPoints*(this: GCPntsTangentialDeflection): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_TangentialDeflection.hxx".}
proc parameter*(this: GCPntsTangentialDeflection; i: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_TangentialDeflection.hxx".}
proc value*(this: GCPntsTangentialDeflection; i: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Value", header: "GCPnts_TangentialDeflection.hxx".}
proc arcAngularStep*(theRadius: StandardReal; theLinearDeflection: StandardReal;
                    theAngularDeflection: StandardReal; theMinLength: StandardReal): StandardReal {.
    importcpp: "GCPnts_TangentialDeflection::ArcAngularStep(@)",
    header: "GCPnts_TangentialDeflection.hxx".}


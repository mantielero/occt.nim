##  Created on: 1996-08-22
##  Created by: Stagiaire Mary FABIEN
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  GCPntsQuasiUniformAbscissa* {.importcpp: "GCPnts_QuasiUniformAbscissa",
                               header: "GCPnts_QuasiUniformAbscissa.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Constructs
                                                                                       ## an
                                                                                       ## empty
                                                                                       ## algorithm.
                                                                                       ## To
                                                                                       ## define
                                                                                       ## the
                                                                                       ## problem
                                                                                       ##
                                                                                       ## !
                                                                                       ## to
                                                                                       ## be
                                                                                       ## solved,
                                                                                       ## use
                                                                                       ## the
                                                                                       ## function
                                                                                       ## Initialize.


proc constructGCPntsQuasiUniformAbscissa*(): GCPntsQuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPntsQuasiUniformAbscissa*(c: Adaptor3dCurve; nbPoints: cint): GCPntsQuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPntsQuasiUniformAbscissa*(c: Adaptor3dCurve; nbPoints: cint;
    u1: cfloat; u2: cfloat): GCPntsQuasiUniformAbscissa {.constructor,
    importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc initialize*(this: var GCPntsQuasiUniformAbscissa; c: Adaptor3dCurve;
                nbPoints: cint) {.importcpp: "Initialize",
                                header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc initialize*(this: var GCPntsQuasiUniformAbscissa; c: Adaptor3dCurve;
                nbPoints: cint; u1: cfloat; u2: cfloat) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPntsQuasiUniformAbscissa*(c: Adaptor2dCurve2d; nbPoints: cint): GCPntsQuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPntsQuasiUniformAbscissa*(c: Adaptor2dCurve2d; nbPoints: cint;
    u1: cfloat; u2: cfloat): GCPntsQuasiUniformAbscissa {.constructor,
    importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc initialize*(this: var GCPntsQuasiUniformAbscissa; c: Adaptor2dCurve2d;
                nbPoints: cint) {.importcpp: "Initialize",
                                header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc initialize*(this: var GCPntsQuasiUniformAbscissa; c: Adaptor2dCurve2d;
                nbPoints: cint; u1: cfloat; u2: cfloat) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc isDone*(this: GCPntsQuasiUniformAbscissa): bool {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc nbPoints*(this: GCPntsQuasiUniformAbscissa): cint {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc parameter*(this: GCPntsQuasiUniformAbscissa; index: cint): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "GCPnts_QuasiUniformAbscissa.hxx".}


























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

import
  ../StdFail/StdFail_NotDone, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  GCPnts_QuasiUniformAbscissa* {.importcpp: "GCPnts_QuasiUniformAbscissa",
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


proc constructGCPnts_QuasiUniformAbscissa*(): GCPnts_QuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPnts_QuasiUniformAbscissa*(C: Adaptor3d_Curve;
    NbPoints: Standard_Integer): GCPnts_QuasiUniformAbscissa {.constructor,
    importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPnts_QuasiUniformAbscissa*(C: Adaptor3d_Curve;
    NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real): GCPnts_QuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_QuasiUniformAbscissa; C: Adaptor3d_Curve;
                NbPoints: Standard_Integer) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_QuasiUniformAbscissa; C: Adaptor3d_Curve;
                NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Initialize", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPnts_QuasiUniformAbscissa*(C: Adaptor2d_Curve2d;
    NbPoints: Standard_Integer): GCPnts_QuasiUniformAbscissa {.constructor,
    importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc constructGCPnts_QuasiUniformAbscissa*(C: Adaptor2d_Curve2d;
    NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real): GCPnts_QuasiUniformAbscissa {.
    constructor, importcpp: "GCPnts_QuasiUniformAbscissa(@)",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_QuasiUniformAbscissa; C: Adaptor2d_Curve2d;
                NbPoints: Standard_Integer) {.importcpp: "Initialize",
    header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_QuasiUniformAbscissa; C: Adaptor2d_Curve2d;
                NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Initialize", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc IsDone*(this: GCPnts_QuasiUniformAbscissa): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc NbPoints*(this: GCPnts_QuasiUniformAbscissa): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_QuasiUniformAbscissa.hxx".}
proc Parameter*(this: GCPnts_QuasiUniformAbscissa; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_QuasiUniformAbscissa.hxx".}
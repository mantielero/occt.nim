##  Created on: 1991-02-27
##  Created by: Jean Claude Vauthier
##  Copyright (c) 1991-1999 Matra Datavision
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
  GCPnts_UniformAbscissa* {.importcpp: "GCPnts_UniformAbscissa",
                           header: "GCPnts_UniformAbscissa.hxx", bycopy.} = object ## !
                                                                              ## creation of a
                                                                              ## indefinite
                                                                              ## UniformAbscissa


proc constructGCPnts_UniformAbscissa*(): GCPnts_UniformAbscissa {.constructor,
    importcpp: "GCPnts_UniformAbscissa(@)", header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor3d_Curve; Abscissa: Standard_Real;
                                     U1: Standard_Real; U2: Standard_Real;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor3d_Curve;
                                     NbPoints: Standard_Integer;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor3d_Curve;
                                     NbPoints: Standard_Integer;
                                     U1: Standard_Real; U2: Standard_Real;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor3d_Curve;
                Abscissa: Standard_Real; Toler: Standard_Real = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor3d_Curve;
                Abscissa: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                Toler: Standard_Real = -1) {.importcpp: "Initialize",
    header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor3d_Curve;
                NbPoints: Standard_Integer; Toler: Standard_Real = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor3d_Curve;
                NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real;
                Toler: Standard_Real = -1) {.importcpp: "Initialize",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor2d_Curve2d;
                                     Abscissa: Standard_Real;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor2d_Curve2d;
                                     Abscissa: Standard_Real; U1: Standard_Real;
                                     U2: Standard_Real; Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor2d_Curve2d;
                                     NbPoints: Standard_Integer;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPnts_UniformAbscissa*(C: Adaptor2d_Curve2d;
                                     NbPoints: Standard_Integer;
                                     U1: Standard_Real; U2: Standard_Real;
                                     Toler: Standard_Real = -1): GCPnts_UniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor2d_Curve2d;
                Abscissa: Standard_Real; Toler: Standard_Real = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor2d_Curve2d;
                Abscissa: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                Toler: Standard_Real = -1) {.importcpp: "Initialize",
    header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor2d_Curve2d;
                NbPoints: Standard_Integer; Toler: Standard_Real = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc Initialize*(this: var GCPnts_UniformAbscissa; C: Adaptor2d_Curve2d;
                NbPoints: Standard_Integer; U1: Standard_Real; U2: Standard_Real;
                Toler: Standard_Real = -1) {.importcpp: "Initialize",
    header: "GCPnts_UniformAbscissa.hxx".}
proc IsDone*(this: GCPnts_UniformAbscissa): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_UniformAbscissa.hxx".}
proc NbPoints*(this: GCPnts_UniformAbscissa): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_UniformAbscissa.hxx".}
proc Parameter*(this: GCPnts_UniformAbscissa; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_UniformAbscissa.hxx".}
proc Abscissa*(this: GCPnts_UniformAbscissa): Standard_Real {.noSideEffect,
    importcpp: "Abscissa", header: "GCPnts_UniformAbscissa.hxx".}
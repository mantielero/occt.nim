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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
type
  GCPntsUniformAbscissa* {.importcpp: "GCPnts_UniformAbscissa",
                          header: "GCPnts_UniformAbscissa.hxx", bycopy.} = object ## !
                                                                             ## creation of a
                                                                             ## indefinite
                                                                             ## UniformAbscissa


proc constructGCPntsUniformAbscissa*(): GCPntsUniformAbscissa {.constructor,
    importcpp: "GCPnts_UniformAbscissa(@)", header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor3dCurve; abscissa: StandardReal;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor3dCurve; abscissa: StandardReal;
                                    u1: StandardReal; u2: StandardReal;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor3dCurve; nbPoints: StandardInteger;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor3dCurve; nbPoints: StandardInteger;
                                    u1: StandardReal; u2: StandardReal;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor3dCurve;
                abscissa: StandardReal; toler: StandardReal = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor3dCurve;
                abscissa: StandardReal; u1: StandardReal; u2: StandardReal;
                toler: StandardReal = -1) {.importcpp: "Initialize",
                                        header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor3dCurve;
                nbPoints: StandardInteger; toler: StandardReal = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor3dCurve;
                nbPoints: StandardInteger; u1: StandardReal; u2: StandardReal;
                toler: StandardReal = -1) {.importcpp: "Initialize",
                                        header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor2dCurve2d; abscissa: StandardReal;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor2dCurve2d; abscissa: StandardReal;
                                    u1: StandardReal; u2: StandardReal;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor2dCurve2d;
                                    nbPoints: StandardInteger;
                                    toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc constructGCPntsUniformAbscissa*(c: Adaptor2dCurve2d;
                                    nbPoints: StandardInteger; u1: StandardReal;
                                    u2: StandardReal; toler: StandardReal = -1): GCPntsUniformAbscissa {.
    constructor, importcpp: "GCPnts_UniformAbscissa(@)",
    header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor2dCurve2d;
                abscissa: StandardReal; toler: StandardReal = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor2dCurve2d;
                abscissa: StandardReal; u1: StandardReal; u2: StandardReal;
                toler: StandardReal = -1) {.importcpp: "Initialize",
                                        header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor2dCurve2d;
                nbPoints: StandardInteger; toler: StandardReal = -1) {.
    importcpp: "Initialize", header: "GCPnts_UniformAbscissa.hxx".}
proc initialize*(this: var GCPntsUniformAbscissa; c: Adaptor2dCurve2d;
                nbPoints: StandardInteger; u1: StandardReal; u2: StandardReal;
                toler: StandardReal = -1) {.importcpp: "Initialize",
                                        header: "GCPnts_UniformAbscissa.hxx".}
proc isDone*(this: GCPntsUniformAbscissa): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_UniformAbscissa.hxx".}
proc nbPoints*(this: GCPntsUniformAbscissa): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_UniformAbscissa.hxx".}
proc parameter*(this: GCPntsUniformAbscissa; index: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_UniformAbscissa.hxx".}
proc abscissa*(this: GCPntsUniformAbscissa): StandardReal {.noSideEffect,
    importcpp: "Abscissa", header: "GCPnts_UniformAbscissa.hxx".}


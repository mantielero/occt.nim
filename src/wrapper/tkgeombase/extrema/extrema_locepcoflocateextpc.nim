import ../../tkmath/gp/gp_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import extrema_types



##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
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



proc newExtremaLocEPCOfLocateExtPC*(): ExtremaLocEPCOfLocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc newExtremaLocEPCOfLocateExtPC*(p: PntObj; c: Adaptor3dCurve; u0: cfloat; tolU: cfloat): ExtremaLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc newExtremaLocEPCOfLocateExtPC*(p: PntObj; c: Adaptor3dCurve; u0: cfloat;
                                   umin: cfloat; usup: cfloat; tolU: cfloat): ExtremaLocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaLocEPCOfLocateExtPC; c: Adaptor3dCurve;
                umin: cfloat; usup: cfloat; tolU: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc perform*(this: var ExtremaLocEPCOfLocateExtPC; p: PntObj; u0: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc isDone*(this: ExtremaLocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc squareDistance*(this: ExtremaLocEPCOfLocateExtPC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc isMin*(this: ExtremaLocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc point*(this: ExtremaLocEPCOfLocateExtPC): ExtremaPOnCurv {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_LocEPCOfLocateExtPC.hxx".}


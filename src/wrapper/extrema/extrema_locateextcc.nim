import extrema_types
import ../../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1994-07-06
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

discard "forward decl of Adaptor3d_Curve"

proc newExtrema_LocateExtCC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve; U0: cfloat;
                            V0: cfloat): Extrema_LocateExtCC {.cdecl, constructor,
    importcpp: "Extrema_LocateExtCC(@)", header: "Extrema_LocateExtCC.hxx".}
proc IsDone*(this: Extrema_LocateExtCC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocateExtCC.hxx".}
proc SquareDistance*(this: Extrema_LocateExtCC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocateExtCC.hxx".}
proc Point*(this: Extrema_LocateExtCC; P1: var Extrema_POnCurv;
           P2: var Extrema_POnCurv) {.noSideEffect, cdecl, importcpp: "Point",
                                   header: "Extrema_LocateExtCC.hxx".}
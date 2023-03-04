import extrema_types
import ../tkg2d/adaptor2d/adaptor2d_types
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

discard "forward decl of Adaptor2d_Curve2d"

proc newExtrema_LocateExtCC2d*(C1: Adaptor2d_Curve2d; C2: Adaptor2d_Curve2d;
                              U0: cfloat; V0: cfloat): Extrema_LocateExtCC2d {.cdecl,
    constructor, importcpp: "Extrema_LocateExtCC2d(@)",
    header: "Extrema_LocateExtCC2d.hxx".}
proc IsDone*(this: Extrema_LocateExtCC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocateExtCC2d.hxx".}
proc SquareDistance*(this: Extrema_LocateExtCC2d): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocateExtCC2d.hxx".}
proc Point*(this: Extrema_LocateExtCC2d; P1: var Extrema_POnCurv2d;
           P2: var Extrema_POnCurv2d) {.noSideEffect, cdecl, importcpp: "Point",
                                     header: "Extrema_LocateExtCC2d.hxx".}
##  Created on: 1997-10-28
##  Created by: Roman BORISOV
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape,
  ../Geom2d/Geom2d_BSplineCurve

discard "forward decl of Adaptor2d_HCurve2d"
type
  Approx_Curve2d* {.importcpp: "Approx_Curve2d", header: "Approx_Curve2d.hxx", bycopy.} = object


proc constructApprox_Curve2d*(C2D: handle[Adaptor2d_HCurve2d];
                             First: Standard_Real; Last: Standard_Real;
                             TolU: Standard_Real; TolV: Standard_Real;
                             Continuity: GeomAbs_Shape;
                             MaxDegree: Standard_Integer;
                             MaxSegments: Standard_Integer): Approx_Curve2d {.
    constructor, importcpp: "Approx_Curve2d(@)", header: "Approx_Curve2d.hxx".}
proc IsDone*(this: Approx_Curve2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_Curve2d.hxx".}
proc HasResult*(this: Approx_Curve2d): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Approx_Curve2d.hxx".}
proc Curve*(this: Approx_Curve2d): handle[Geom2d_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "Approx_Curve2d.hxx".}
proc MaxError2dU*(this: Approx_Curve2d): Standard_Real {.noSideEffect,
    importcpp: "MaxError2dU", header: "Approx_Curve2d.hxx".}
proc MaxError2dV*(this: Approx_Curve2d): Standard_Real {.noSideEffect,
    importcpp: "MaxError2dV", header: "Approx_Curve2d.hxx".}
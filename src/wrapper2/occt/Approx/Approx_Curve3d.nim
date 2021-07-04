##  Created on: 1998-08-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape, ../Geom/Geom_BSplineCurve

discard "forward decl of Adaptor3d_HCurve"
type
  Approx_Curve3d* {.importcpp: "Approx_Curve3d", header: "Approx_Curve3d.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Approximation
                                                                                         ## of
                                                                                         ## a
                                                                                         ## curve
                                                                                         ## with
                                                                                         ## respect
                                                                                         ## of
                                                                                         ## the
                                                                                         ##
                                                                                         ## !
                                                                                         ## requiered
                                                                                         ## tolerance
                                                                                         ## Tol3D.


proc constructApprox_Curve3d*(Curve: handle[Adaptor3d_HCurve];
                             Tol3d: Standard_Real; Order: GeomAbs_Shape;
                             MaxSegments: Standard_Integer;
                             MaxDegree: Standard_Integer): Approx_Curve3d {.
    constructor, importcpp: "Approx_Curve3d(@)", header: "Approx_Curve3d.hxx".}
proc Curve*(this: Approx_Curve3d): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "Approx_Curve3d.hxx".}
proc IsDone*(this: Approx_Curve3d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_Curve3d.hxx".}
proc HasResult*(this: Approx_Curve3d): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Approx_Curve3d.hxx".}
proc MaxError*(this: Approx_Curve3d): Standard_Real {.noSideEffect,
    importcpp: "MaxError", header: "Approx_Curve3d.hxx".}
proc Dump*(this: Approx_Curve3d; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Approx_Curve3d.hxx".}
##  Created on: 1997-08-22
##  Created by: Jeannine PANCIATICI,  Sergey SOKOLOV
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_OStream

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
type
  Approx_CurvilinearParameter* {.importcpp: "Approx_CurvilinearParameter",
                                header: "Approx_CurvilinearParameter.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## case
                                                                                        ## of
                                                                                        ## a
                                                                                        ## free
                                                                                        ## 3D
                                                                                        ## curve


proc constructApprox_CurvilinearParameter*(C3D: handle[Adaptor3d_HCurve];
    Tol: Standard_Real; Order: GeomAbs_Shape; MaxDegree: Standard_Integer;
    MaxSegments: Standard_Integer): Approx_CurvilinearParameter {.constructor,
    importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc constructApprox_CurvilinearParameter*(C2D: handle[Adaptor2d_HCurve2d];
    Surf: handle[Adaptor3d_HSurface]; Tol: Standard_Real; Order: GeomAbs_Shape;
    MaxDegree: Standard_Integer; MaxSegments: Standard_Integer): Approx_CurvilinearParameter {.
    constructor, importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc constructApprox_CurvilinearParameter*(C2D1: handle[Adaptor2d_HCurve2d];
    Surf1: handle[Adaptor3d_HSurface]; C2D2: handle[Adaptor2d_HCurve2d];
    Surf2: handle[Adaptor3d_HSurface]; Tol: Standard_Real; Order: GeomAbs_Shape;
    MaxDegree: Standard_Integer; MaxSegments: Standard_Integer): Approx_CurvilinearParameter {.
    constructor, importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc IsDone*(this: Approx_CurvilinearParameter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Approx_CurvilinearParameter.hxx".}
proc HasResult*(this: Approx_CurvilinearParameter): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Approx_CurvilinearParameter.hxx".}
proc Curve3d*(this: Approx_CurvilinearParameter): handle[Geom_BSplineCurve] {.
    noSideEffect, importcpp: "Curve3d", header: "Approx_CurvilinearParameter.hxx".}
proc MaxError3d*(this: Approx_CurvilinearParameter): Standard_Real {.noSideEffect,
    importcpp: "MaxError3d", header: "Approx_CurvilinearParameter.hxx".}
proc Curve2d1*(this: Approx_CurvilinearParameter): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve2d1", header: "Approx_CurvilinearParameter.hxx".}
proc MaxError2d1*(this: Approx_CurvilinearParameter): Standard_Real {.noSideEffect,
    importcpp: "MaxError2d1", header: "Approx_CurvilinearParameter.hxx".}
proc Curve2d2*(this: Approx_CurvilinearParameter): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve2d2", header: "Approx_CurvilinearParameter.hxx".}
proc MaxError2d2*(this: Approx_CurvilinearParameter): Standard_Real {.noSideEffect,
    importcpp: "MaxError2d2", header: "Approx_CurvilinearParameter.hxx".}
proc Dump*(this: Approx_CurvilinearParameter; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Approx_CurvilinearParameter.hxx".}
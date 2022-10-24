import approx_types

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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"


proc newApproxCurvilinearParameter*(c3d: Handle[Adaptor3dHCurve]; tol: cfloat;
                                   order: GeomAbsShape; maxDegree: cint;
                                   maxSegments: cint): ApproxCurvilinearParameter {.
    cdecl, constructor, importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc newApproxCurvilinearParameter*(c2d: Handle[Adaptor2dHCurve2d];
                                   surf: Handle[Adaptor3dHSurface]; tol: cfloat;
                                   order: GeomAbsShape; maxDegree: cint;
                                   maxSegments: cint): ApproxCurvilinearParameter {.
    cdecl, constructor, importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc newApproxCurvilinearParameter*(c2d1: Handle[Adaptor2dHCurve2d];
                                   surf1: Handle[Adaptor3dHSurface];
                                   c2d2: Handle[Adaptor2dHCurve2d];
                                   surf2: Handle[Adaptor3dHSurface]; tol: cfloat;
                                   order: GeomAbsShape; maxDegree: cint;
                                   maxSegments: cint): ApproxCurvilinearParameter {.
    cdecl, constructor, importcpp: "Approx_CurvilinearParameter(@)",
    header: "Approx_CurvilinearParameter.hxx".}
proc isDone*(this: ApproxCurvilinearParameter): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Approx_CurvilinearParameter.hxx".}
proc hasResult*(this: ApproxCurvilinearParameter): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Approx_CurvilinearParameter.hxx".}
proc curve3d*(this: ApproxCurvilinearParameter): Handle[GeomBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "Curve3d", header: "Approx_CurvilinearParameter.hxx".}
proc maxError3d*(this: ApproxCurvilinearParameter): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError3d", header: "Approx_CurvilinearParameter.hxx".}
proc curve2d1*(this: ApproxCurvilinearParameter): Handle[Geom2dBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "Curve2d1", header: "Approx_CurvilinearParameter.hxx".}
proc maxError2d1*(this: ApproxCurvilinearParameter): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2d1", header: "Approx_CurvilinearParameter.hxx".}
proc curve2d2*(this: ApproxCurvilinearParameter): Handle[Geom2dBSplineCurve] {.
    noSideEffect, cdecl, importcpp: "Curve2d2", header: "Approx_CurvilinearParameter.hxx".}
proc maxError2d2*(this: ApproxCurvilinearParameter): cfloat {.noSideEffect, cdecl,
    importcpp: "MaxError2d2", header: "Approx_CurvilinearParameter.hxx".}
proc dump*(this: ApproxCurvilinearParameter; o: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "Approx_CurvilinearParameter.hxx".}

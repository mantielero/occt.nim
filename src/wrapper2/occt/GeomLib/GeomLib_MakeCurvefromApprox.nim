##  Created on: 1995-06-13
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../AdvApprox/AdvApprox_ApproxAFunction,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of AdvApprox_ApproxAFunction"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of Geom_BSplineCurve"
type
  GeomLib_MakeCurvefromApprox* {.importcpp: "GeomLib_MakeCurvefromApprox",
                                header: "GeomLib_MakeCurvefromApprox.hxx", bycopy.} = object


proc constructGeomLib_MakeCurvefromApprox*(Approx: AdvApprox_ApproxAFunction): GeomLib_MakeCurvefromApprox {.
    constructor, importcpp: "GeomLib_MakeCurvefromApprox(@)",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc IsDone*(this: GeomLib_MakeCurvefromApprox): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Nb1DSpaces*(this: GeomLib_MakeCurvefromApprox): Standard_Integer {.
    noSideEffect, importcpp: "Nb1DSpaces",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Nb2DSpaces*(this: GeomLib_MakeCurvefromApprox): Standard_Integer {.
    noSideEffect, importcpp: "Nb2DSpaces",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Nb3DSpaces*(this: GeomLib_MakeCurvefromApprox): Standard_Integer {.
    noSideEffect, importcpp: "Nb3DSpaces",
    header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Curve2d*(this: GeomLib_MakeCurvefromApprox; Index2d: Standard_Integer): handle[
    Geom2d_BSplineCurve] {.noSideEffect, importcpp: "Curve2d",
                          header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Curve2dFromTwo1d*(this: GeomLib_MakeCurvefromApprox;
                      Index1d: Standard_Integer; Index2d: Standard_Integer): handle[
    Geom2d_BSplineCurve] {.noSideEffect, importcpp: "Curve2dFromTwo1d",
                          header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Curve2d*(this: GeomLib_MakeCurvefromApprox; Index1d: Standard_Integer;
             Index2d: Standard_Integer): handle[Geom2d_BSplineCurve] {.
    noSideEffect, importcpp: "Curve2d", header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Curve*(this: GeomLib_MakeCurvefromApprox; Index3d: Standard_Integer): handle[
    Geom_BSplineCurve] {.noSideEffect, importcpp: "Curve",
                        header: "GeomLib_MakeCurvefromApprox.hxx".}
proc Curve*(this: GeomLib_MakeCurvefromApprox; Index1D: Standard_Integer;
           Index3D: Standard_Integer): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomLib_MakeCurvefromApprox.hxx".}
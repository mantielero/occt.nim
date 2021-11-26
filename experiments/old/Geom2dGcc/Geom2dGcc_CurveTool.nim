##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dGccCurveTool* {.importcpp: "Geom2dGcc_CurveTool",
                       header: "Geom2dGcc_CurveTool.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccCurveTool; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_CurveTool::operator new",
    header: "Geom2dGcc_CurveTool.hxx".}
proc `delete`*(this: var Geom2dGccCurveTool; theAddress: pointer) {.
    importcpp: "Geom2dGcc_CurveTool::operator delete",
    header: "Geom2dGcc_CurveTool.hxx".}
proc `new[]`*(this: var Geom2dGccCurveTool; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_CurveTool::operator new[]",
    header: "Geom2dGcc_CurveTool.hxx".}
proc `delete[]`*(this: var Geom2dGccCurveTool; theAddress: pointer) {.
    importcpp: "Geom2dGcc_CurveTool::operator delete[]",
    header: "Geom2dGcc_CurveTool.hxx".}
proc `new`*(this: var Geom2dGccCurveTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_CurveTool::operator new",
    header: "Geom2dGcc_CurveTool.hxx".}
proc `delete`*(this: var Geom2dGccCurveTool; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_CurveTool::operator delete",
    header: "Geom2dGcc_CurveTool.hxx".}
proc firstParameter*(c: Geom2dAdaptorCurve): StandardReal {.
    importcpp: "Geom2dGcc_CurveTool::FirstParameter(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc lastParameter*(c: Geom2dAdaptorCurve): StandardReal {.
    importcpp: "Geom2dGcc_CurveTool::LastParameter(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc epsX*(c: Geom2dAdaptorCurve; tol: StandardReal): StandardReal {.
    importcpp: "Geom2dGcc_CurveTool::EpsX(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc nbSamples*(c: Geom2dAdaptorCurve): int {.
    importcpp: "Geom2dGcc_CurveTool::NbSamples(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc value*(c: Geom2dAdaptorCurve; x: StandardReal): Pnt2d {.
    importcpp: "Geom2dGcc_CurveTool::Value(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc d1*(c: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; t: var Vec2d) {.
    importcpp: "Geom2dGcc_CurveTool::D1(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc d2*(c: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; t: var Vec2d; n: var Vec2d) {.
    importcpp: "Geom2dGcc_CurveTool::D2(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc d3*(c: Geom2dAdaptorCurve; u: StandardReal; p: var Pnt2d; t: var Vec2d; n: var Vec2d;
        dN: var Vec2d) {.importcpp: "Geom2dGcc_CurveTool::D3(@)",
                      header: "Geom2dGcc_CurveTool.hxx".}
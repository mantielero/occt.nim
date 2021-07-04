##  Created on: 1992-06-29
##  Created by: Remi GILET
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle

discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2dGcc_CurveTool"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dGcc_Circ2d3Tan"
discard "forward decl of Geom2dGcc_Circ2d2TanRad"
discard "forward decl of Geom2dGcc_Circ2d2TanOn"
discard "forward decl of Geom2dGcc_Circ2dTanOnRad"
discard "forward decl of Geom2dGcc_Circ2dTanCen"
discard "forward decl of Geom2dGcc_Lin2d2Tan"
discard "forward decl of Geom2dGcc_Lin2dTanObl"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of Geom2dGcc_CurveToolGeo"
discard "forward decl of Geom2dGcc_Circ2d2TanOnGeo"
discard "forward decl of Geom2dGcc_Circ2d2TanRadGeo"
discard "forward decl of Geom2dGcc_Circ2dTanCenGeo"
discard "forward decl of Geom2dGcc_Circ2dTanOnRadGeo"
discard "forward decl of Geom2dGcc_Circ2d3TanIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCuCu"
discard "forward decl of Geom2dGcc_Circ2d2TanOnIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCuOnCu"
discard "forward decl of Geom2dGcc_Lin2dTanOblIter"
discard "forward decl of Geom2dGcc_FunctionTanObl"
discard "forward decl of Geom2dGcc_Lin2d2TanIter"
discard "forward decl of Geom2dGcc_FunctionTanCuCu"
discard "forward decl of Geom2dGcc_FunctionTanCuPnt"
discard "forward decl of Geom2dGcc_FunctionTanCirCu"
type
  Geom2dGcc* {.importcpp: "Geom2dGcc", header: "Geom2dGcc.hxx", bycopy.} = object ## !
                                                                          ## Constructs such a
                                                                          ## qualified curve that the
                                                                          ## relative
                                                                          ## !
                                                                          ## position of the
                                                                          ## solution
                                                                          ## computed by a
                                                                          ## construction
                                                                          ## !
                                                                          ## algorithm using the
                                                                          ## qualified curve to the circle or line is
                                                                          ## ! not
                                                                          ## qualified, i.e. all
                                                                          ## solutions apply.
                                                                          ## !
                                                                          ## Warning
                                                                          ## ! Obj is an
                                                                          ## adapted curve, i.e. an object which is an
                                                                          ## interface
                                                                          ## between:
                                                                          ## ! -   the
                                                                          ## services
                                                                          ## provided by a 2D curve from the
                                                                          ## package
                                                                          ## Geom2d,
                                                                          ## ! -   and those
                                                                          ## required on the curve by a
                                                                          ## computation
                                                                          ## algorithm.
                                                                          ## ! The
                                                                          ## adapted curve is
                                                                          ## created in the
                                                                          ## following way:
                                                                          ## !
                                                                          ## Handle(Geom2d_Curve)
                                                                          ## mycurve = ...
                                                                          ## ! ;
                                                                          ## !
                                                                          ## Geom2dAdaptor_Curve Obj (
                                                                          ## mycurve )
                                                                          ## ! ;
                                                                          ## ! The
                                                                          ## qualified curve is then
                                                                          ## constructed with this
                                                                          ## object:
                                                                          ## !
                                                                          ## Geom2dGcc_QualifiedCurve
                                                                          ## !
                                                                          ## myQCurve =
                                                                          ## Geom2dGcc::Unqualified(Obj);


proc Unqualified*(Obj: Geom2dAdaptor_Curve): Geom2dGcc_QualifiedCurve {.
    importcpp: "Geom2dGcc::Unqualified(@)", header: "Geom2dGcc.hxx".}
proc Enclosing*(Obj: Geom2dAdaptor_Curve): Geom2dGcc_QualifiedCurve {.
    importcpp: "Geom2dGcc::Enclosing(@)", header: "Geom2dGcc.hxx".}
proc Enclosed*(Obj: Geom2dAdaptor_Curve): Geom2dGcc_QualifiedCurve {.
    importcpp: "Geom2dGcc::Enclosed(@)", header: "Geom2dGcc.hxx".}
proc Outside*(Obj: Geom2dAdaptor_Curve): Geom2dGcc_QualifiedCurve {.
    importcpp: "Geom2dGcc::Outside(@)", header: "Geom2dGcc.hxx".}
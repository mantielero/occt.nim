##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_Pnt2d, ../gp/gp_Vec2d, ../gp/gp_Dir2d,
  ../LProp/LProp_Status, ../Standard/Standard_Boolean

discard "forward decl of Geom2d_Curve"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of Geom2dLProp_Curve2dTool"
type
  Geom2dLProp_CLProps2d* {.importcpp: "Geom2dLProp_CLProps2d",
                          header: "Geom2dLProp_CLProps2d.hxx", bycopy.} = object ## !
                                                                            ## Initializes the
                                                                            ## local
                                                                            ## properties of the
                                                                            ## curve <C>
                                                                            ## ! The
                                                                            ## current
                                                                            ## point and the
                                                                            ## derivatives are
                                                                            ## !
                                                                            ## computed at the same
                                                                            ## time,
                                                                            ## which
                                                                            ## allows an
                                                                            ## !
                                                                            ## optimization of the
                                                                            ## computation
                                                                            ## time.
                                                                            ## ! <N>
                                                                            ## indicates the
                                                                            ## maximum
                                                                            ## number of
                                                                            ## derivations to
                                                                            ## ! be done (0, 1, 2 or 3). For
                                                                            ## example, to
                                                                            ## compute
                                                                            ## ! only the
                                                                            ## tangent, N
                                                                            ## should be
                                                                            ## equal to 1.
                                                                            ## !
                                                                            ## <Resolution> is the
                                                                            ## linear
                                                                            ## tolerance (it is used to test
                                                                            ## ! if a
                                                                            ## vector is
                                                                            ## null).


proc constructGeom2dLProp_CLProps2d*(C: handle[Geom2d_Curve]; N: Standard_Integer;
                                    Resolution: Standard_Real): Geom2dLProp_CLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc constructGeom2dLProp_CLProps2d*(C: handle[Geom2d_Curve]; U: Standard_Real;
                                    N: Standard_Integer; Resolution: Standard_Real): Geom2dLProp_CLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc constructGeom2dLProp_CLProps2d*(N: Standard_Integer; Resolution: Standard_Real): Geom2dLProp_CLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc SetParameter*(this: var Geom2dLProp_CLProps2d; U: Standard_Real) {.
    importcpp: "SetParameter", header: "Geom2dLProp_CLProps2d.hxx".}
proc SetCurve*(this: var Geom2dLProp_CLProps2d; C: handle[Geom2d_Curve]) {.
    importcpp: "SetCurve", header: "Geom2dLProp_CLProps2d.hxx".}
proc Value*(this: Geom2dLProp_CLProps2d): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "Geom2dLProp_CLProps2d.hxx".}
proc D1*(this: var Geom2dLProp_CLProps2d): gp_Vec2d {.importcpp: "D1",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc D2*(this: var Geom2dLProp_CLProps2d): gp_Vec2d {.importcpp: "D2",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc D3*(this: var Geom2dLProp_CLProps2d): gp_Vec2d {.importcpp: "D3",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc IsTangentDefined*(this: var Geom2dLProp_CLProps2d): Standard_Boolean {.
    importcpp: "IsTangentDefined", header: "Geom2dLProp_CLProps2d.hxx".}
proc Tangent*(this: var Geom2dLProp_CLProps2d; D: var gp_Dir2d) {.importcpp: "Tangent",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc Curvature*(this: var Geom2dLProp_CLProps2d): Standard_Real {.
    importcpp: "Curvature", header: "Geom2dLProp_CLProps2d.hxx".}
proc Normal*(this: var Geom2dLProp_CLProps2d; N: var gp_Dir2d) {.importcpp: "Normal",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc CentreOfCurvature*(this: var Geom2dLProp_CLProps2d; P: var gp_Pnt2d) {.
    importcpp: "CentreOfCurvature", header: "Geom2dLProp_CLProps2d.hxx".}
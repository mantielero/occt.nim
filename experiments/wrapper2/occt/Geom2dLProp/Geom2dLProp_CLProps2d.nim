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
  Geom2dLPropCLProps2d* {.importcpp: "Geom2dLProp_CLProps2d",
                         header: "Geom2dLProp_CLProps2d.hxx", bycopy.} = object


proc `new`*(this: var Geom2dLPropCLProps2d; theSize: csize_t): pointer {.
    importcpp: "Geom2dLProp_CLProps2d::operator new",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc `delete`*(this: var Geom2dLPropCLProps2d; theAddress: pointer) {.
    importcpp: "Geom2dLProp_CLProps2d::operator delete",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc `new[]`*(this: var Geom2dLPropCLProps2d; theSize: csize_t): pointer {.
    importcpp: "Geom2dLProp_CLProps2d::operator new[]",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc `delete[]`*(this: var Geom2dLPropCLProps2d; theAddress: pointer) {.
    importcpp: "Geom2dLProp_CLProps2d::operator delete[]",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc `new`*(this: var Geom2dLPropCLProps2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dLProp_CLProps2d::operator new",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc `delete`*(this: var Geom2dLPropCLProps2d; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dLProp_CLProps2d::operator delete",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc constructGeom2dLPropCLProps2d*(c: Handle[Geom2dCurve]; n: int;
                                   resolution: StandardReal): Geom2dLPropCLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc constructGeom2dLPropCLProps2d*(c: Handle[Geom2dCurve]; u: StandardReal; n: int;
                                   resolution: StandardReal): Geom2dLPropCLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc constructGeom2dLPropCLProps2d*(n: int; resolution: StandardReal): Geom2dLPropCLProps2d {.
    constructor, importcpp: "Geom2dLProp_CLProps2d(@)",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc setParameter*(this: var Geom2dLPropCLProps2d; u: StandardReal) {.
    importcpp: "SetParameter", header: "Geom2dLProp_CLProps2d.hxx".}
proc setCurve*(this: var Geom2dLPropCLProps2d; c: Handle[Geom2dCurve]) {.
    importcpp: "SetCurve", header: "Geom2dLProp_CLProps2d.hxx".}
proc value*(this: Geom2dLPropCLProps2d): Pnt2d {.noSideEffect, importcpp: "Value",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc d1*(this: var Geom2dLPropCLProps2d): Vec2d {.importcpp: "D1",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc d2*(this: var Geom2dLPropCLProps2d): Vec2d {.importcpp: "D2",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc d3*(this: var Geom2dLPropCLProps2d): Vec2d {.importcpp: "D3",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc isTangentDefined*(this: var Geom2dLPropCLProps2d): StandardBoolean {.
    importcpp: "IsTangentDefined", header: "Geom2dLProp_CLProps2d.hxx".}
proc tangent*(this: var Geom2dLPropCLProps2d; d: var Dir2d) {.importcpp: "Tangent",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc curvature*(this: var Geom2dLPropCLProps2d): StandardReal {.
    importcpp: "Curvature", header: "Geom2dLProp_CLProps2d.hxx".}
proc normal*(this: var Geom2dLPropCLProps2d; n: var Dir2d) {.importcpp: "Normal",
    header: "Geom2dLProp_CLProps2d.hxx".}
proc centreOfCurvature*(this: var Geom2dLPropCLProps2d; p: var Pnt2d) {.
    importcpp: "CentreOfCurvature", header: "Geom2dLProp_CLProps2d.hxx".}
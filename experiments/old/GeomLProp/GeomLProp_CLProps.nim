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

discard "forward decl of Geom_Curve"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of GeomLProp_CurveTool"
type
  GeomLPropCLProps* {.importcpp: "GeomLProp_CLProps",
                     header: "GeomLProp_CLProps.hxx", bycopy.} = object


proc `new`*(this: var GeomLPropCLProps; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_CLProps::operator new", header: "GeomLProp_CLProps.hxx".}
proc `delete`*(this: var GeomLPropCLProps; theAddress: pointer) {.
    importcpp: "GeomLProp_CLProps::operator delete",
    header: "GeomLProp_CLProps.hxx".}
proc `new[]`*(this: var GeomLPropCLProps; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_CLProps::operator new[]",
    header: "GeomLProp_CLProps.hxx".}
proc `delete[]`*(this: var GeomLPropCLProps; theAddress: pointer) {.
    importcpp: "GeomLProp_CLProps::operator delete[]",
    header: "GeomLProp_CLProps.hxx".}
proc `new`*(this: var GeomLPropCLProps; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLProp_CLProps::operator new", header: "GeomLProp_CLProps.hxx".}
proc `delete`*(this: var GeomLPropCLProps; a2: pointer; a3: pointer) {.
    importcpp: "GeomLProp_CLProps::operator delete",
    header: "GeomLProp_CLProps.hxx".}
proc constructGeomLPropCLProps*(c: Handle[GeomCurve]; n: int;
                               resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLPropCLProps*(c: Handle[GeomCurve]; u: StandardReal; n: int;
                               resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLPropCLProps*(n: int; resolution: StandardReal): GeomLPropCLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc setParameter*(this: var GeomLPropCLProps; u: StandardReal) {.
    importcpp: "SetParameter", header: "GeomLProp_CLProps.hxx".}
proc setCurve*(this: var GeomLPropCLProps; c: Handle[GeomCurve]) {.
    importcpp: "SetCurve", header: "GeomLProp_CLProps.hxx".}
proc value*(this: GeomLPropCLProps): Pnt {.noSideEffect, importcpp: "Value",
                                       header: "GeomLProp_CLProps.hxx".}
proc d1*(this: var GeomLPropCLProps): Vec {.importcpp: "D1",
                                       header: "GeomLProp_CLProps.hxx".}
proc d2*(this: var GeomLPropCLProps): Vec {.importcpp: "D2",
                                       header: "GeomLProp_CLProps.hxx".}
proc d3*(this: var GeomLPropCLProps): Vec {.importcpp: "D3",
                                       header: "GeomLProp_CLProps.hxx".}
proc isTangentDefined*(this: var GeomLPropCLProps): StandardBoolean {.
    importcpp: "IsTangentDefined", header: "GeomLProp_CLProps.hxx".}
proc tangent*(this: var GeomLPropCLProps; d: var Dir) {.importcpp: "Tangent",
    header: "GeomLProp_CLProps.hxx".}
proc curvature*(this: var GeomLPropCLProps): StandardReal {.importcpp: "Curvature",
    header: "GeomLProp_CLProps.hxx".}
proc normal*(this: var GeomLPropCLProps; n: var Dir) {.importcpp: "Normal",
    header: "GeomLProp_CLProps.hxx".}
proc centreOfCurvature*(this: var GeomLPropCLProps; p: var Pnt) {.
    importcpp: "CentreOfCurvature", header: "GeomLProp_CLProps.hxx".}
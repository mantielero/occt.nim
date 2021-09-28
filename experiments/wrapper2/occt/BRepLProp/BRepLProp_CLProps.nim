##  Created on: 1994-02-24
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of BRepLProp_CurveTool"
type
  BRepLPropCLProps* {.importcpp: "BRepLProp_CLProps",
                     header: "BRepLProp_CLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                                                   ## ! The current point and the derivatives are
                                                                   ## ! computed at the same time, which allows an
                                                                   ## ! optimization of the computation time.
                                                                   ## ! <N> indicates the maximum number of derivations to
                                                                   ## ! be done (0, 1, 2 or 3). For example, to compute
                                                                   ## ! only the tangent, N should be equal to 1.
                                                                   ## ! <Resolution> is the linear tolerance (it is used to test
                                                                   ## ! if a vector is null).


proc constructBRepLPropCLProps*(c: BRepAdaptorCurve; n: cint; resolution: cfloat): BRepLPropCLProps {.
    constructor, importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc constructBRepLPropCLProps*(c: BRepAdaptorCurve; u: cfloat; n: cint;
                               resolution: cfloat): BRepLPropCLProps {.constructor,
    importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc constructBRepLPropCLProps*(n: cint; resolution: cfloat): BRepLPropCLProps {.
    constructor, importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc setParameter*(this: var BRepLPropCLProps; u: cfloat) {.importcpp: "SetParameter",
    header: "BRepLProp_CLProps.hxx".}
proc setCurve*(this: var BRepLPropCLProps; c: BRepAdaptorCurve) {.
    importcpp: "SetCurve", header: "BRepLProp_CLProps.hxx".}
proc value*(this: BRepLPropCLProps): Pnt {.noSideEffect, importcpp: "Value",
                                       header: "BRepLProp_CLProps.hxx".}
proc d1*(this: var BRepLPropCLProps): Vec {.importcpp: "D1",
                                       header: "BRepLProp_CLProps.hxx".}
proc d2*(this: var BRepLPropCLProps): Vec {.importcpp: "D2",
                                       header: "BRepLProp_CLProps.hxx".}
proc d3*(this: var BRepLPropCLProps): Vec {.importcpp: "D3",
                                       header: "BRepLProp_CLProps.hxx".}
proc isTangentDefined*(this: var BRepLPropCLProps): bool {.
    importcpp: "IsTangentDefined", header: "BRepLProp_CLProps.hxx".}
proc tangent*(this: var BRepLPropCLProps; d: var Dir) {.importcpp: "Tangent",
    header: "BRepLProp_CLProps.hxx".}
proc curvature*(this: var BRepLPropCLProps): cfloat {.importcpp: "Curvature",
    header: "BRepLProp_CLProps.hxx".}
proc normal*(this: var BRepLPropCLProps; n: var Dir) {.importcpp: "Normal",
    header: "BRepLProp_CLProps.hxx".}
proc centreOfCurvature*(this: var BRepLPropCLProps; p: var Pnt) {.
    importcpp: "CentreOfCurvature", header: "BRepLProp_CLProps.hxx".}


























##  Created on: 2002-08-02
##  Created by: Alexander KARTOMIN  (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of LProp3d_CurveTool"
type
  LProp3dCLProps* {.importcpp: "LProp3d_CLProps", header: "LProp3d_CLProps.hxx",
                   bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                  ## ! The current point and the derivatives are
                                  ## ! computed at the same time, which allows an
                                  ## ! optimization of the computation time.
                                  ## ! <N> indicates the maximum number of derivations to
                                  ## ! be done (0, 1, 2 or 3). For example, to compute
                                  ## ! only the tangent, N should be equal to 1.
                                  ## ! <Resolution> is the linear tolerance (it is used to test
                                  ## ! if a vector is null).


proc constructLProp3dCLProps*(c: Handle[Adaptor3dHCurve]; n: cint; resolution: cfloat): LProp3dCLProps {.
    constructor, importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc constructLProp3dCLProps*(c: Handle[Adaptor3dHCurve]; u: cfloat; n: cint;
                             resolution: cfloat): LProp3dCLProps {.constructor,
    importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc constructLProp3dCLProps*(n: cint; resolution: cfloat): LProp3dCLProps {.
    constructor, importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc setParameter*(this: var LProp3dCLProps; u: cfloat) {.importcpp: "SetParameter",
    header: "LProp3d_CLProps.hxx".}
proc setCurve*(this: var LProp3dCLProps; c: Handle[Adaptor3dHCurve]) {.
    importcpp: "SetCurve", header: "LProp3d_CLProps.hxx".}
proc value*(this: LProp3dCLProps): Pnt {.noSideEffect, importcpp: "Value",
                                     header: "LProp3d_CLProps.hxx".}
proc d1*(this: var LProp3dCLProps): Vec {.importcpp: "D1",
                                     header: "LProp3d_CLProps.hxx".}
proc d2*(this: var LProp3dCLProps): Vec {.importcpp: "D2",
                                     header: "LProp3d_CLProps.hxx".}
proc d3*(this: var LProp3dCLProps): Vec {.importcpp: "D3",
                                     header: "LProp3d_CLProps.hxx".}
proc isTangentDefined*(this: var LProp3dCLProps): bool {.
    importcpp: "IsTangentDefined", header: "LProp3d_CLProps.hxx".}
proc tangent*(this: var LProp3dCLProps; d: var Dir) {.importcpp: "Tangent",
    header: "LProp3d_CLProps.hxx".}
proc curvature*(this: var LProp3dCLProps): cfloat {.importcpp: "Curvature",
    header: "LProp3d_CLProps.hxx".}
proc normal*(this: var LProp3dCLProps; n: var Dir) {.importcpp: "Normal",
    header: "LProp3d_CLProps.hxx".}
proc centreOfCurvature*(this: var LProp3dCLProps; p: var Pnt) {.
    importcpp: "CentreOfCurvature", header: "LProp3d_CLProps.hxx".}


























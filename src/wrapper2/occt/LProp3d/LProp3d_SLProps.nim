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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of LProp3d_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  LProp3dSLProps* {.importcpp: "LProp3d_SLProps", header: "LProp3d_SLProps.hxx",
                   bycopy.} = object ## ! Initializes the local properties of the surface <S>
                                  ## ! for the parameter values (<U>, <V>).
                                  ## ! The current point and the derivatives are
                                  ## ! computed at the same time, which allows an
                                  ## ! optimization of the computation time.
                                  ## ! <N> indicates the maximum number of derivations to
                                  ## ! be done (0, 1, or 2). For example, to compute
                                  ## ! only the tangent, N should be equal to 1.
                                  ## ! <Resolution> is the linear tolerance (it is used to test
                                  ## ! if a vector is null).


proc constructLProp3dSLProps*(s: Handle[Adaptor3dHSurface]; u: StandardReal;
                             v: StandardReal; n: StandardInteger;
                             resolution: StandardReal): LProp3dSLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc constructLProp3dSLProps*(s: Handle[Adaptor3dHSurface]; n: StandardInteger;
                             resolution: StandardReal): LProp3dSLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc constructLProp3dSLProps*(n: StandardInteger; resolution: StandardReal): LProp3dSLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc setSurface*(this: var LProp3dSLProps; s: Handle[Adaptor3dHSurface]) {.
    importcpp: "SetSurface", header: "LProp3d_SLProps.hxx".}
proc setParameters*(this: var LProp3dSLProps; u: StandardReal; v: StandardReal) {.
    importcpp: "SetParameters", header: "LProp3d_SLProps.hxx".}
proc value*(this: LProp3dSLProps): GpPnt {.noSideEffect, importcpp: "Value",
                                       header: "LProp3d_SLProps.hxx".}
proc d1u*(this: var LProp3dSLProps): GpVec {.importcpp: "D1U",
                                        header: "LProp3d_SLProps.hxx".}
proc d1v*(this: var LProp3dSLProps): GpVec {.importcpp: "D1V",
                                        header: "LProp3d_SLProps.hxx".}
proc d2u*(this: var LProp3dSLProps): GpVec {.importcpp: "D2U",
                                        header: "LProp3d_SLProps.hxx".}
proc d2v*(this: var LProp3dSLProps): GpVec {.importcpp: "D2V",
                                        header: "LProp3d_SLProps.hxx".}
proc duv*(this: var LProp3dSLProps): GpVec {.importcpp: "DUV",
                                        header: "LProp3d_SLProps.hxx".}
proc isTangentUDefined*(this: var LProp3dSLProps): StandardBoolean {.
    importcpp: "IsTangentUDefined", header: "LProp3d_SLProps.hxx".}
proc tangentU*(this: var LProp3dSLProps; d: var GpDir) {.importcpp: "TangentU",
    header: "LProp3d_SLProps.hxx".}
proc isTangentVDefined*(this: var LProp3dSLProps): StandardBoolean {.
    importcpp: "IsTangentVDefined", header: "LProp3d_SLProps.hxx".}
proc tangentV*(this: var LProp3dSLProps; d: var GpDir) {.importcpp: "TangentV",
    header: "LProp3d_SLProps.hxx".}
proc isNormalDefined*(this: var LProp3dSLProps): StandardBoolean {.
    importcpp: "IsNormalDefined", header: "LProp3d_SLProps.hxx".}
proc normal*(this: var LProp3dSLProps): GpDir {.importcpp: "Normal",
    header: "LProp3d_SLProps.hxx".}
proc isCurvatureDefined*(this: var LProp3dSLProps): StandardBoolean {.
    importcpp: "IsCurvatureDefined", header: "LProp3d_SLProps.hxx".}
proc isUmbilic*(this: var LProp3dSLProps): StandardBoolean {.importcpp: "IsUmbilic",
    header: "LProp3d_SLProps.hxx".}
proc maxCurvature*(this: var LProp3dSLProps): StandardReal {.
    importcpp: "MaxCurvature", header: "LProp3d_SLProps.hxx".}
proc minCurvature*(this: var LProp3dSLProps): StandardReal {.
    importcpp: "MinCurvature", header: "LProp3d_SLProps.hxx".}
proc curvatureDirections*(this: var LProp3dSLProps; maxD: var GpDir; minD: var GpDir) {.
    importcpp: "CurvatureDirections", header: "LProp3d_SLProps.hxx".}
proc meanCurvature*(this: var LProp3dSLProps): StandardReal {.
    importcpp: "MeanCurvature", header: "LProp3d_SLProps.hxx".}
proc gaussianCurvature*(this: var LProp3dSLProps): StandardReal {.
    importcpp: "GaussianCurvature", header: "LProp3d_SLProps.hxx".}


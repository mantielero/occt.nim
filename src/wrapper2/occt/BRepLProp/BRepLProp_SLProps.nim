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
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepLProp_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  BRepLPropSLProps* {.importcpp: "BRepLProp_SLProps",
                     header: "BRepLProp_SLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the surface <S>
                                                                   ## ! for the parameter values (<U>, <V>).
                                                                   ## ! The current point and the derivatives are
                                                                   ## ! computed at the same time, which allows an
                                                                   ## ! optimization of the computation time.
                                                                   ## ! <N> indicates the maximum number of derivations to
                                                                   ## ! be done (0, 1, or 2). For example, to compute
                                                                   ## ! only the tangent, N should be equal to 1.
                                                                   ## ! <Resolution> is the linear tolerance (it is used to test
                                                                   ## ! if a vector is null).


proc constructBRepLPropSLProps*(s: BRepAdaptorSurface; u: StandardReal;
                               v: StandardReal; n: StandardInteger;
                               resolution: StandardReal): BRepLPropSLProps {.
    constructor, importcpp: "BRepLProp_SLProps(@)", header: "BRepLProp_SLProps.hxx".}
proc constructBRepLPropSLProps*(s: BRepAdaptorSurface; n: StandardInteger;
                               resolution: StandardReal): BRepLPropSLProps {.
    constructor, importcpp: "BRepLProp_SLProps(@)", header: "BRepLProp_SLProps.hxx".}
proc constructBRepLPropSLProps*(n: StandardInteger; resolution: StandardReal): BRepLPropSLProps {.
    constructor, importcpp: "BRepLProp_SLProps(@)", header: "BRepLProp_SLProps.hxx".}
proc setSurface*(this: var BRepLPropSLProps; s: BRepAdaptorSurface) {.
    importcpp: "SetSurface", header: "BRepLProp_SLProps.hxx".}
proc setParameters*(this: var BRepLPropSLProps; u: StandardReal; v: StandardReal) {.
    importcpp: "SetParameters", header: "BRepLProp_SLProps.hxx".}
proc value*(this: BRepLPropSLProps): GpPnt {.noSideEffect, importcpp: "Value",
    header: "BRepLProp_SLProps.hxx".}
proc d1u*(this: var BRepLPropSLProps): GpVec {.importcpp: "D1U",
    header: "BRepLProp_SLProps.hxx".}
proc d1v*(this: var BRepLPropSLProps): GpVec {.importcpp: "D1V",
    header: "BRepLProp_SLProps.hxx".}
proc d2u*(this: var BRepLPropSLProps): GpVec {.importcpp: "D2U",
    header: "BRepLProp_SLProps.hxx".}
proc d2v*(this: var BRepLPropSLProps): GpVec {.importcpp: "D2V",
    header: "BRepLProp_SLProps.hxx".}
proc duv*(this: var BRepLPropSLProps): GpVec {.importcpp: "DUV",
    header: "BRepLProp_SLProps.hxx".}
proc isTangentUDefined*(this: var BRepLPropSLProps): StandardBoolean {.
    importcpp: "IsTangentUDefined", header: "BRepLProp_SLProps.hxx".}
proc tangentU*(this: var BRepLPropSLProps; d: var GpDir) {.importcpp: "TangentU",
    header: "BRepLProp_SLProps.hxx".}
proc isTangentVDefined*(this: var BRepLPropSLProps): StandardBoolean {.
    importcpp: "IsTangentVDefined", header: "BRepLProp_SLProps.hxx".}
proc tangentV*(this: var BRepLPropSLProps; d: var GpDir) {.importcpp: "TangentV",
    header: "BRepLProp_SLProps.hxx".}
proc isNormalDefined*(this: var BRepLPropSLProps): StandardBoolean {.
    importcpp: "IsNormalDefined", header: "BRepLProp_SLProps.hxx".}
proc normal*(this: var BRepLPropSLProps): GpDir {.importcpp: "Normal",
    header: "BRepLProp_SLProps.hxx".}
proc isCurvatureDefined*(this: var BRepLPropSLProps): StandardBoolean {.
    importcpp: "IsCurvatureDefined", header: "BRepLProp_SLProps.hxx".}
proc isUmbilic*(this: var BRepLPropSLProps): StandardBoolean {.
    importcpp: "IsUmbilic", header: "BRepLProp_SLProps.hxx".}
proc maxCurvature*(this: var BRepLPropSLProps): StandardReal {.
    importcpp: "MaxCurvature", header: "BRepLProp_SLProps.hxx".}
proc minCurvature*(this: var BRepLPropSLProps): StandardReal {.
    importcpp: "MinCurvature", header: "BRepLProp_SLProps.hxx".}
proc curvatureDirections*(this: var BRepLPropSLProps; maxD: var GpDir; minD: var GpDir) {.
    importcpp: "CurvatureDirections", header: "BRepLProp_SLProps.hxx".}
proc meanCurvature*(this: var BRepLPropSLProps): StandardReal {.
    importcpp: "MeanCurvature", header: "BRepLProp_SLProps.hxx".}
proc gaussianCurvature*(this: var BRepLPropSLProps): StandardReal {.
    importcpp: "GaussianCurvature", header: "BRepLProp_SLProps.hxx".}


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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_Pnt, ../gp/gp_Vec, ../gp/gp_Dir,
  ../LProp/LProp_Status, ../Standard/Standard_Boolean

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
  LProp3d_SLProps* {.importcpp: "LProp3d_SLProps", header: "LProp3d_SLProps.hxx",
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


proc constructLProp3d_SLProps*(S: handle[Adaptor3d_HSurface]; U: Standard_Real;
                              V: Standard_Real; N: Standard_Integer;
                              Resolution: Standard_Real): LProp3d_SLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc constructLProp3d_SLProps*(S: handle[Adaptor3d_HSurface]; N: Standard_Integer;
                              Resolution: Standard_Real): LProp3d_SLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc constructLProp3d_SLProps*(N: Standard_Integer; Resolution: Standard_Real): LProp3d_SLProps {.
    constructor, importcpp: "LProp3d_SLProps(@)", header: "LProp3d_SLProps.hxx".}
proc SetSurface*(this: var LProp3d_SLProps; S: handle[Adaptor3d_HSurface]) {.
    importcpp: "SetSurface", header: "LProp3d_SLProps.hxx".}
proc SetParameters*(this: var LProp3d_SLProps; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetParameters", header: "LProp3d_SLProps.hxx".}
proc Value*(this: LProp3d_SLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "LProp3d_SLProps.hxx".}
proc D1U*(this: var LProp3d_SLProps): gp_Vec {.importcpp: "D1U",
    header: "LProp3d_SLProps.hxx".}
proc D1V*(this: var LProp3d_SLProps): gp_Vec {.importcpp: "D1V",
    header: "LProp3d_SLProps.hxx".}
proc D2U*(this: var LProp3d_SLProps): gp_Vec {.importcpp: "D2U",
    header: "LProp3d_SLProps.hxx".}
proc D2V*(this: var LProp3d_SLProps): gp_Vec {.importcpp: "D2V",
    header: "LProp3d_SLProps.hxx".}
proc DUV*(this: var LProp3d_SLProps): gp_Vec {.importcpp: "DUV",
    header: "LProp3d_SLProps.hxx".}
proc IsTangentUDefined*(this: var LProp3d_SLProps): Standard_Boolean {.
    importcpp: "IsTangentUDefined", header: "LProp3d_SLProps.hxx".}
proc TangentU*(this: var LProp3d_SLProps; D: var gp_Dir) {.importcpp: "TangentU",
    header: "LProp3d_SLProps.hxx".}
proc IsTangentVDefined*(this: var LProp3d_SLProps): Standard_Boolean {.
    importcpp: "IsTangentVDefined", header: "LProp3d_SLProps.hxx".}
proc TangentV*(this: var LProp3d_SLProps; D: var gp_Dir) {.importcpp: "TangentV",
    header: "LProp3d_SLProps.hxx".}
proc IsNormalDefined*(this: var LProp3d_SLProps): Standard_Boolean {.
    importcpp: "IsNormalDefined", header: "LProp3d_SLProps.hxx".}
proc Normal*(this: var LProp3d_SLProps): gp_Dir {.importcpp: "Normal",
    header: "LProp3d_SLProps.hxx".}
proc IsCurvatureDefined*(this: var LProp3d_SLProps): Standard_Boolean {.
    importcpp: "IsCurvatureDefined", header: "LProp3d_SLProps.hxx".}
proc IsUmbilic*(this: var LProp3d_SLProps): Standard_Boolean {.
    importcpp: "IsUmbilic", header: "LProp3d_SLProps.hxx".}
proc MaxCurvature*(this: var LProp3d_SLProps): Standard_Real {.
    importcpp: "MaxCurvature", header: "LProp3d_SLProps.hxx".}
proc MinCurvature*(this: var LProp3d_SLProps): Standard_Real {.
    importcpp: "MinCurvature", header: "LProp3d_SLProps.hxx".}
proc CurvatureDirections*(this: var LProp3d_SLProps; MaxD: var gp_Dir; MinD: var gp_Dir) {.
    importcpp: "CurvatureDirections", header: "LProp3d_SLProps.hxx".}
proc MeanCurvature*(this: var LProp3d_SLProps): Standard_Real {.
    importcpp: "MeanCurvature", header: "LProp3d_SLProps.hxx".}
proc GaussianCurvature*(this: var LProp3d_SLProps): Standard_Real {.
    importcpp: "GaussianCurvature", header: "LProp3d_SLProps.hxx".}
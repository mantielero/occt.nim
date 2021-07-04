##  Created on: 1992-10-14
##  Created by: Christophe MARION
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
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../gp/gp_Dir, ../LProp/LProp_Status, ../Standard/Standard_Boolean

discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of HLRBRep_SLPropsATool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  HLRBRep_SLProps* {.importcpp: "HLRBRep_SLProps", header: "HLRBRep_SLProps.hxx",
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


proc constructHLRBRep_SLProps*(S: Standard_Address; U: Standard_Real;
                              V: Standard_Real; N: Standard_Integer;
                              Resolution: Standard_Real): HLRBRep_SLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc constructHLRBRep_SLProps*(S: Standard_Address; N: Standard_Integer;
                              Resolution: Standard_Real): HLRBRep_SLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc constructHLRBRep_SLProps*(N: Standard_Integer; Resolution: Standard_Real): HLRBRep_SLProps {.
    constructor, importcpp: "HLRBRep_SLProps(@)", header: "HLRBRep_SLProps.hxx".}
proc SetSurface*(this: var HLRBRep_SLProps; S: Standard_Address) {.
    importcpp: "SetSurface", header: "HLRBRep_SLProps.hxx".}
proc SetParameters*(this: var HLRBRep_SLProps; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetParameters", header: "HLRBRep_SLProps.hxx".}
proc Value*(this: HLRBRep_SLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "HLRBRep_SLProps.hxx".}
proc D1U*(this: var HLRBRep_SLProps): gp_Vec {.importcpp: "D1U",
    header: "HLRBRep_SLProps.hxx".}
proc D1V*(this: var HLRBRep_SLProps): gp_Vec {.importcpp: "D1V",
    header: "HLRBRep_SLProps.hxx".}
proc D2U*(this: var HLRBRep_SLProps): gp_Vec {.importcpp: "D2U",
    header: "HLRBRep_SLProps.hxx".}
proc D2V*(this: var HLRBRep_SLProps): gp_Vec {.importcpp: "D2V",
    header: "HLRBRep_SLProps.hxx".}
proc DUV*(this: var HLRBRep_SLProps): gp_Vec {.importcpp: "DUV",
    header: "HLRBRep_SLProps.hxx".}
proc IsTangentUDefined*(this: var HLRBRep_SLProps): Standard_Boolean {.
    importcpp: "IsTangentUDefined", header: "HLRBRep_SLProps.hxx".}
proc TangentU*(this: var HLRBRep_SLProps; D: var gp_Dir) {.importcpp: "TangentU",
    header: "HLRBRep_SLProps.hxx".}
proc IsTangentVDefined*(this: var HLRBRep_SLProps): Standard_Boolean {.
    importcpp: "IsTangentVDefined", header: "HLRBRep_SLProps.hxx".}
proc TangentV*(this: var HLRBRep_SLProps; D: var gp_Dir) {.importcpp: "TangentV",
    header: "HLRBRep_SLProps.hxx".}
proc IsNormalDefined*(this: var HLRBRep_SLProps): Standard_Boolean {.
    importcpp: "IsNormalDefined", header: "HLRBRep_SLProps.hxx".}
proc Normal*(this: var HLRBRep_SLProps): gp_Dir {.importcpp: "Normal",
    header: "HLRBRep_SLProps.hxx".}
proc IsCurvatureDefined*(this: var HLRBRep_SLProps): Standard_Boolean {.
    importcpp: "IsCurvatureDefined", header: "HLRBRep_SLProps.hxx".}
proc IsUmbilic*(this: var HLRBRep_SLProps): Standard_Boolean {.
    importcpp: "IsUmbilic", header: "HLRBRep_SLProps.hxx".}
proc MaxCurvature*(this: var HLRBRep_SLProps): Standard_Real {.
    importcpp: "MaxCurvature", header: "HLRBRep_SLProps.hxx".}
proc MinCurvature*(this: var HLRBRep_SLProps): Standard_Real {.
    importcpp: "MinCurvature", header: "HLRBRep_SLProps.hxx".}
proc CurvatureDirections*(this: var HLRBRep_SLProps; MaxD: var gp_Dir; MinD: var gp_Dir) {.
    importcpp: "CurvatureDirections", header: "HLRBRep_SLProps.hxx".}
proc MeanCurvature*(this: var HLRBRep_SLProps): Standard_Real {.
    importcpp: "MeanCurvature", header: "HLRBRep_SLProps.hxx".}
proc GaussianCurvature*(this: var HLRBRep_SLProps): Standard_Real {.
    importcpp: "GaussianCurvature", header: "HLRBRep_SLProps.hxx".}
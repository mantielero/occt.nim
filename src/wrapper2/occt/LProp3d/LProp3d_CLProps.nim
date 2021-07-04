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
  LProp3d_CLProps* {.importcpp: "LProp3d_CLProps", header: "LProp3d_CLProps.hxx",
                    bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                   ## ! The current point and the derivatives are
                                   ## ! computed at the same time, which allows an
                                   ## ! optimization of the computation time.
                                   ## ! <N> indicates the maximum number of derivations to
                                   ## ! be done (0, 1, 2 or 3). For example, to compute
                                   ## ! only the tangent, N should be equal to 1.
                                   ## ! <Resolution> is the linear tolerance (it is used to test
                                   ## ! if a vector is null).


proc constructLProp3d_CLProps*(C: handle[Adaptor3d_HCurve]; N: Standard_Integer;
                              Resolution: Standard_Real): LProp3d_CLProps {.
    constructor, importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc constructLProp3d_CLProps*(C: handle[Adaptor3d_HCurve]; U: Standard_Real;
                              N: Standard_Integer; Resolution: Standard_Real): LProp3d_CLProps {.
    constructor, importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc constructLProp3d_CLProps*(N: Standard_Integer; Resolution: Standard_Real): LProp3d_CLProps {.
    constructor, importcpp: "LProp3d_CLProps(@)", header: "LProp3d_CLProps.hxx".}
proc SetParameter*(this: var LProp3d_CLProps; U: Standard_Real) {.
    importcpp: "SetParameter", header: "LProp3d_CLProps.hxx".}
proc SetCurve*(this: var LProp3d_CLProps; C: handle[Adaptor3d_HCurve]) {.
    importcpp: "SetCurve", header: "LProp3d_CLProps.hxx".}
proc Value*(this: LProp3d_CLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "LProp3d_CLProps.hxx".}
proc D1*(this: var LProp3d_CLProps): gp_Vec {.importcpp: "D1",
    header: "LProp3d_CLProps.hxx".}
proc D2*(this: var LProp3d_CLProps): gp_Vec {.importcpp: "D2",
    header: "LProp3d_CLProps.hxx".}
proc D3*(this: var LProp3d_CLProps): gp_Vec {.importcpp: "D3",
    header: "LProp3d_CLProps.hxx".}
proc IsTangentDefined*(this: var LProp3d_CLProps): Standard_Boolean {.
    importcpp: "IsTangentDefined", header: "LProp3d_CLProps.hxx".}
proc Tangent*(this: var LProp3d_CLProps; D: var gp_Dir) {.importcpp: "Tangent",
    header: "LProp3d_CLProps.hxx".}
proc Curvature*(this: var LProp3d_CLProps): Standard_Real {.importcpp: "Curvature",
    header: "LProp3d_CLProps.hxx".}
proc Normal*(this: var LProp3d_CLProps; N: var gp_Dir) {.importcpp: "Normal",
    header: "LProp3d_CLProps.hxx".}
proc CentreOfCurvature*(this: var LProp3d_CLProps; P: var gp_Pnt) {.
    importcpp: "CentreOfCurvature", header: "LProp3d_CLProps.hxx".}
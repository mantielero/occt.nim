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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_Pnt2d, ../gp/gp_Vec2d, ../gp/gp_Dir2d,
  ../LProp/LProp_Status, ../Standard/Standard_Boolean

discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of HLRBRep_CLPropsATool"
discard "forward decl of HLRBRep_Curve"
type
  HLRBRep_CLProps* {.importcpp: "HLRBRep_CLProps", header: "HLRBRep_CLProps.hxx",
                    bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                   ## ! The current point and the derivatives are
                                   ## ! computed at the same time, which allows an
                                   ## ! optimization of the computation time.
                                   ## ! <N> indicates the maximum number of derivations to
                                   ## ! be done (0, 1, 2 or 3). For example, to compute
                                   ## ! only the tangent, N should be equal to 1.
                                   ## ! <Resolution> is the linear tolerance (it is used to test
                                   ## ! if a vector is null).


proc constructHLRBRep_CLProps*(C: ptr HLRBRep_Curve; N: Standard_Integer;
                              Resolution: Standard_Real): HLRBRep_CLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc constructHLRBRep_CLProps*(C: ptr HLRBRep_Curve; U: Standard_Real;
                              N: Standard_Integer; Resolution: Standard_Real): HLRBRep_CLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc constructHLRBRep_CLProps*(N: Standard_Integer; Resolution: Standard_Real): HLRBRep_CLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc SetParameter*(this: var HLRBRep_CLProps; U: Standard_Real) {.
    importcpp: "SetParameter", header: "HLRBRep_CLProps.hxx".}
proc SetCurve*(this: var HLRBRep_CLProps; C: ptr HLRBRep_Curve) {.
    importcpp: "SetCurve", header: "HLRBRep_CLProps.hxx".}
proc Value*(this: HLRBRep_CLProps): gp_Pnt2d {.noSideEffect, importcpp: "Value",
    header: "HLRBRep_CLProps.hxx".}
proc D1*(this: var HLRBRep_CLProps): gp_Vec2d {.importcpp: "D1",
    header: "HLRBRep_CLProps.hxx".}
proc D2*(this: var HLRBRep_CLProps): gp_Vec2d {.importcpp: "D2",
    header: "HLRBRep_CLProps.hxx".}
proc D3*(this: var HLRBRep_CLProps): gp_Vec2d {.importcpp: "D3",
    header: "HLRBRep_CLProps.hxx".}
proc IsTangentDefined*(this: var HLRBRep_CLProps): Standard_Boolean {.
    importcpp: "IsTangentDefined", header: "HLRBRep_CLProps.hxx".}
proc Tangent*(this: var HLRBRep_CLProps; D: var gp_Dir2d) {.importcpp: "Tangent",
    header: "HLRBRep_CLProps.hxx".}
proc Curvature*(this: var HLRBRep_CLProps): Standard_Real {.importcpp: "Curvature",
    header: "HLRBRep_CLProps.hxx".}
proc Normal*(this: var HLRBRep_CLProps; N: var gp_Dir2d) {.importcpp: "Normal",
    header: "HLRBRep_CLProps.hxx".}
proc CentreOfCurvature*(this: var HLRBRep_CLProps; P: var gp_Pnt2d) {.
    importcpp: "CentreOfCurvature", header: "HLRBRep_CLProps.hxx".}
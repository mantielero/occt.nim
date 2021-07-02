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
  HLRBRepCLProps* {.importcpp: "HLRBRep_CLProps", header: "HLRBRep_CLProps.hxx",
                   bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                  ## ! The current point and the derivatives are
                                  ## ! computed at the same time, which allows an
                                  ## ! optimization of the computation time.
                                  ## ! <N> indicates the maximum number of derivations to
                                  ## ! be done (0, 1, 2 or 3). For example, to compute
                                  ## ! only the tangent, N should be equal to 1.
                                  ## ! <Resolution> is the linear tolerance (it is used to test
                                  ## ! if a vector is null).


proc constructHLRBRepCLProps*(c: ptr HLRBRepCurve; n: StandardInteger;
                             resolution: StandardReal): HLRBRepCLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc constructHLRBRepCLProps*(c: ptr HLRBRepCurve; u: StandardReal;
                             n: StandardInteger; resolution: StandardReal): HLRBRepCLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc constructHLRBRepCLProps*(n: StandardInteger; resolution: StandardReal): HLRBRepCLProps {.
    constructor, importcpp: "HLRBRep_CLProps(@)", header: "HLRBRep_CLProps.hxx".}
proc setParameter*(this: var HLRBRepCLProps; u: StandardReal) {.
    importcpp: "SetParameter", header: "HLRBRep_CLProps.hxx".}
proc setCurve*(this: var HLRBRepCLProps; c: ptr HLRBRepCurve) {.importcpp: "SetCurve",
    header: "HLRBRep_CLProps.hxx".}
proc value*(this: HLRBRepCLProps): GpPnt2d {.noSideEffect, importcpp: "Value",
    header: "HLRBRep_CLProps.hxx".}
proc d1*(this: var HLRBRepCLProps): GpVec2d {.importcpp: "D1",
    header: "HLRBRep_CLProps.hxx".}
proc d2*(this: var HLRBRepCLProps): GpVec2d {.importcpp: "D2",
    header: "HLRBRep_CLProps.hxx".}
proc d3*(this: var HLRBRepCLProps): GpVec2d {.importcpp: "D3",
    header: "HLRBRep_CLProps.hxx".}
proc isTangentDefined*(this: var HLRBRepCLProps): StandardBoolean {.
    importcpp: "IsTangentDefined", header: "HLRBRep_CLProps.hxx".}
proc tangent*(this: var HLRBRepCLProps; d: var GpDir2d) {.importcpp: "Tangent",
    header: "HLRBRep_CLProps.hxx".}
proc curvature*(this: var HLRBRepCLProps): StandardReal {.importcpp: "Curvature",
    header: "HLRBRep_CLProps.hxx".}
proc normal*(this: var HLRBRepCLProps; n: var GpDir2d) {.importcpp: "Normal",
    header: "HLRBRep_CLProps.hxx".}
proc centreOfCurvature*(this: var HLRBRepCLProps; p: var GpPnt2d) {.
    importcpp: "CentreOfCurvature", header: "HLRBRep_CLProps.hxx".}


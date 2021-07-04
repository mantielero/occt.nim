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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepAdaptor/BRepAdaptor_Curve,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, ../gp/gp_Pnt,
  ../gp/gp_Vec, ../gp/gp_Dir, ../LProp/LProp_Status, ../Standard/Standard_Boolean

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
  BRepLProp_CLProps* {.importcpp: "BRepLProp_CLProps",
                      header: "BRepLProp_CLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                                                    ## ! The current point and the derivatives are
                                                                    ## ! computed at the same time, which allows an
                                                                    ## ! optimization of the computation time.
                                                                    ## ! <N> indicates the maximum number of derivations to
                                                                    ## ! be done (0, 1, 2 or 3). For example, to compute
                                                                    ## ! only the tangent, N should be equal to 1.
                                                                    ## ! <Resolution> is the linear tolerance (it is used to test
                                                                    ## ! if a vector is null).


proc constructBRepLProp_CLProps*(C: BRepAdaptor_Curve; N: Standard_Integer;
                                Resolution: Standard_Real): BRepLProp_CLProps {.
    constructor, importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc constructBRepLProp_CLProps*(C: BRepAdaptor_Curve; U: Standard_Real;
                                N: Standard_Integer; Resolution: Standard_Real): BRepLProp_CLProps {.
    constructor, importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc constructBRepLProp_CLProps*(N: Standard_Integer; Resolution: Standard_Real): BRepLProp_CLProps {.
    constructor, importcpp: "BRepLProp_CLProps(@)", header: "BRepLProp_CLProps.hxx".}
proc SetParameter*(this: var BRepLProp_CLProps; U: Standard_Real) {.
    importcpp: "SetParameter", header: "BRepLProp_CLProps.hxx".}
proc SetCurve*(this: var BRepLProp_CLProps; C: BRepAdaptor_Curve) {.
    importcpp: "SetCurve", header: "BRepLProp_CLProps.hxx".}
proc Value*(this: BRepLProp_CLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "BRepLProp_CLProps.hxx".}
proc D1*(this: var BRepLProp_CLProps): gp_Vec {.importcpp: "D1",
    header: "BRepLProp_CLProps.hxx".}
proc D2*(this: var BRepLProp_CLProps): gp_Vec {.importcpp: "D2",
    header: "BRepLProp_CLProps.hxx".}
proc D3*(this: var BRepLProp_CLProps): gp_Vec {.importcpp: "D3",
    header: "BRepLProp_CLProps.hxx".}
proc IsTangentDefined*(this: var BRepLProp_CLProps): Standard_Boolean {.
    importcpp: "IsTangentDefined", header: "BRepLProp_CLProps.hxx".}
proc Tangent*(this: var BRepLProp_CLProps; D: var gp_Dir) {.importcpp: "Tangent",
    header: "BRepLProp_CLProps.hxx".}
proc Curvature*(this: var BRepLProp_CLProps): Standard_Real {.importcpp: "Curvature",
    header: "BRepLProp_CLProps.hxx".}
proc Normal*(this: var BRepLProp_CLProps; N: var gp_Dir) {.importcpp: "Normal",
    header: "BRepLProp_CLProps.hxx".}
proc CentreOfCurvature*(this: var BRepLProp_CLProps; P: var gp_Pnt) {.
    importcpp: "CentreOfCurvature", header: "BRepLProp_CLProps.hxx".}
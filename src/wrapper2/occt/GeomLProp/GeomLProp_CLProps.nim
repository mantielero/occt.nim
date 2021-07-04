##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
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
  ../Standard/Standard_Integer, ../gp/gp_Pnt, ../gp/gp_Vec, ../gp/gp_Dir,
  ../LProp/LProp_Status, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of GeomLProp_CurveTool"
type
  GeomLProp_CLProps* {.importcpp: "GeomLProp_CLProps",
                      header: "GeomLProp_CLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the curve <C>
                                                                    ## ! The current point and the derivatives are
                                                                    ## ! computed at the same time, which allows an
                                                                    ## ! optimization of the computation time.
                                                                    ## ! <N> indicates the maximum number of derivations to
                                                                    ## ! be done (0, 1, 2 or 3). For example, to compute
                                                                    ## ! only the tangent, N should be equal to 1.
                                                                    ## ! <Resolution> is the linear tolerance (it is used to test
                                                                    ## ! if a vector is null).


proc constructGeomLProp_CLProps*(C: handle[Geom_Curve]; N: Standard_Integer;
                                Resolution: Standard_Real): GeomLProp_CLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLProp_CLProps*(C: handle[Geom_Curve]; U: Standard_Real;
                                N: Standard_Integer; Resolution: Standard_Real): GeomLProp_CLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc constructGeomLProp_CLProps*(N: Standard_Integer; Resolution: Standard_Real): GeomLProp_CLProps {.
    constructor, importcpp: "GeomLProp_CLProps(@)", header: "GeomLProp_CLProps.hxx".}
proc SetParameter*(this: var GeomLProp_CLProps; U: Standard_Real) {.
    importcpp: "SetParameter", header: "GeomLProp_CLProps.hxx".}
proc SetCurve*(this: var GeomLProp_CLProps; C: handle[Geom_Curve]) {.
    importcpp: "SetCurve", header: "GeomLProp_CLProps.hxx".}
proc Value*(this: GeomLProp_CLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "GeomLProp_CLProps.hxx".}
proc D1*(this: var GeomLProp_CLProps): gp_Vec {.importcpp: "D1",
    header: "GeomLProp_CLProps.hxx".}
proc D2*(this: var GeomLProp_CLProps): gp_Vec {.importcpp: "D2",
    header: "GeomLProp_CLProps.hxx".}
proc D3*(this: var GeomLProp_CLProps): gp_Vec {.importcpp: "D3",
    header: "GeomLProp_CLProps.hxx".}
proc IsTangentDefined*(this: var GeomLProp_CLProps): Standard_Boolean {.
    importcpp: "IsTangentDefined", header: "GeomLProp_CLProps.hxx".}
proc Tangent*(this: var GeomLProp_CLProps; D: var gp_Dir) {.importcpp: "Tangent",
    header: "GeomLProp_CLProps.hxx".}
proc Curvature*(this: var GeomLProp_CLProps): Standard_Real {.importcpp: "Curvature",
    header: "GeomLProp_CLProps.hxx".}
proc Normal*(this: var GeomLProp_CLProps; N: var gp_Dir) {.importcpp: "Normal",
    header: "GeomLProp_CLProps.hxx".}
proc CentreOfCurvature*(this: var GeomLProp_CLProps; P: var gp_Pnt) {.
    importcpp: "CentreOfCurvature", header: "GeomLProp_CLProps.hxx".}
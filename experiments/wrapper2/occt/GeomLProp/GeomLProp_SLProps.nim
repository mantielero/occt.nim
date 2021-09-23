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

discard "forward decl of Geom_Surface"
discard "forward decl of LProp_BadContinuity"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of LProp_NotDefined"
discard "forward decl of GeomLProp_SurfaceTool"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Dir"
type
  GeomLProp_SLProps* {.importcpp: "GeomLProp_SLProps",
                      header: "GeomLProp_SLProps.hxx", bycopy.} = object ## ! Initializes the local properties of the surface <S>
                                                                    ## ! for the parameter values (<U>, <V>).
                                                                    ## ! The current point and the derivatives are
                                                                    ## ! computed at the same time, which allows an
                                                                    ## ! optimization of the computation time.
                                                                    ## ! <N> indicates the maximum number of derivations to
                                                                    ## ! be done (0, 1, or 2). For example, to compute
                                                                    ## ! only the tangent, N should be equal to 1.
                                                                    ## ! <Resolution> is the linear tolerance (it is used to test
                                                                    ## ! if a vector is null).


proc constructGeomLProp_SLProps*(S: handle[Geom_Surface]; U: Standard_Real;
                                V: Standard_Real; N: Standard_Integer;
                                Resolution: Standard_Real): GeomLProp_SLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc constructGeomLProp_SLProps*(S: handle[Geom_Surface]; N: Standard_Integer;
                                Resolution: Standard_Real): GeomLProp_SLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc constructGeomLProp_SLProps*(N: Standard_Integer; Resolution: Standard_Real): GeomLProp_SLProps {.
    constructor, importcpp: "GeomLProp_SLProps(@)", header: "GeomLProp_SLProps.hxx".}
proc SetSurface*(this: var GeomLProp_SLProps; S: handle[Geom_Surface]) {.
    importcpp: "SetSurface", header: "GeomLProp_SLProps.hxx".}
proc SetParameters*(this: var GeomLProp_SLProps; U: Standard_Real; V: Standard_Real) {.
    importcpp: "SetParameters", header: "GeomLProp_SLProps.hxx".}
proc Value*(this: GeomLProp_SLProps): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "GeomLProp_SLProps.hxx".}
proc D1U*(this: var GeomLProp_SLProps): gp_Vec {.importcpp: "D1U",
    header: "GeomLProp_SLProps.hxx".}
proc D1V*(this: var GeomLProp_SLProps): gp_Vec {.importcpp: "D1V",
    header: "GeomLProp_SLProps.hxx".}
proc D2U*(this: var GeomLProp_SLProps): gp_Vec {.importcpp: "D2U",
    header: "GeomLProp_SLProps.hxx".}
proc D2V*(this: var GeomLProp_SLProps): gp_Vec {.importcpp: "D2V",
    header: "GeomLProp_SLProps.hxx".}
proc DUV*(this: var GeomLProp_SLProps): gp_Vec {.importcpp: "DUV",
    header: "GeomLProp_SLProps.hxx".}
proc IsTangentUDefined*(this: var GeomLProp_SLProps): Standard_Boolean {.
    importcpp: "IsTangentUDefined", header: "GeomLProp_SLProps.hxx".}
proc TangentU*(this: var GeomLProp_SLProps; D: var gp_Dir) {.importcpp: "TangentU",
    header: "GeomLProp_SLProps.hxx".}
proc IsTangentVDefined*(this: var GeomLProp_SLProps): Standard_Boolean {.
    importcpp: "IsTangentVDefined", header: "GeomLProp_SLProps.hxx".}
proc TangentV*(this: var GeomLProp_SLProps; D: var gp_Dir) {.importcpp: "TangentV",
    header: "GeomLProp_SLProps.hxx".}
proc IsNormalDefined*(this: var GeomLProp_SLProps): Standard_Boolean {.
    importcpp: "IsNormalDefined", header: "GeomLProp_SLProps.hxx".}
proc Normal*(this: var GeomLProp_SLProps): gp_Dir {.importcpp: "Normal",
    header: "GeomLProp_SLProps.hxx".}
proc IsCurvatureDefined*(this: var GeomLProp_SLProps): Standard_Boolean {.
    importcpp: "IsCurvatureDefined", header: "GeomLProp_SLProps.hxx".}
proc IsUmbilic*(this: var GeomLProp_SLProps): Standard_Boolean {.
    importcpp: "IsUmbilic", header: "GeomLProp_SLProps.hxx".}
proc MaxCurvature*(this: var GeomLProp_SLProps): Standard_Real {.
    importcpp: "MaxCurvature", header: "GeomLProp_SLProps.hxx".}
proc MinCurvature*(this: var GeomLProp_SLProps): Standard_Real {.
    importcpp: "MinCurvature", header: "GeomLProp_SLProps.hxx".}
proc CurvatureDirections*(this: var GeomLProp_SLProps; MaxD: var gp_Dir;
                         MinD: var gp_Dir) {.importcpp: "CurvatureDirections",
    header: "GeomLProp_SLProps.hxx".}
proc MeanCurvature*(this: var GeomLProp_SLProps): Standard_Real {.
    importcpp: "MeanCurvature", header: "GeomLProp_SLProps.hxx".}
proc GaussianCurvature*(this: var GeomLProp_SLProps): Standard_Real {.
    importcpp: "GaussianCurvature", header: "GeomLProp_SLProps.hxx".}
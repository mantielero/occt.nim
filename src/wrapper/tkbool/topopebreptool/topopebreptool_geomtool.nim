##  Created on: 1993-06-24
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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

type
  TopOpeBRepToolGeomTool* {.importcpp: "TopOpeBRepTool_GeomTool",
                           header: "TopOpeBRepTool_GeomTool.hxx", bycopy.} = object ## !
                                                                               ## Boolean
                                                                               ## flags
                                                                               ## <CompC3D>,
                                                                               ## <CompPC1>,
                                                                               ## <CompPC2>
                                                                               ## !
                                                                               ## indicate
                                                                               ## whether
                                                                               ## the
                                                                               ## corresponding
                                                                               ## result
                                                                               ## curves
                                                                               ## !
                                                                               ## <C3D>,
                                                                               ## <PC1>,
                                                                               ## <PC2>
                                                                               ## of
                                                                               ## MakeCurves
                                                                               ## method
                                                                               ## must
                                                                               ## or
                                                                               ## not
                                                                               ## !
                                                                               ## be
                                                                               ## computed
                                                                               ## from
                                                                               ## an
                                                                               ## intersection
                                                                               ## line
                                                                               ## <L>.
                                                                               ## !
                                                                               ## When
                                                                               ## the
                                                                               ## line
                                                                               ## <L>
                                                                               ## is a
                                                                               ## walking
                                                                               ## one,
                                                                               ## <TypeC3D>
                                                                               ## is
                                                                               ## the
                                                                               ## !
                                                                               ## kind
                                                                               ## of
                                                                               ## the
                                                                               ## 3D
                                                                               ## curve
                                                                               ## <C3D>
                                                                               ## to
                                                                               ## compute  :
                                                                               ## ! -
                                                                               ## BSPLINE1
                                                                               ## to
                                                                               ## compute  a
                                                                               ## BSpline
                                                                               ## of
                                                                               ## degree 1
                                                                               ## on
                                                                               ## the
                                                                               ## !
                                                                               ## walking
                                                                               ## points
                                                                               ## of
                                                                               ## <L>,
                                                                               ## ! -
                                                                               ## APPROX
                                                                               ## to
                                                                               ## build
                                                                               ## an
                                                                               ## approximation
                                                                               ## curve
                                                                               ## on
                                                                               ## the
                                                                               ## !
                                                                               ## walking
                                                                               ## points
                                                                               ## of
                                                                               ## <L>.


proc newTopOpeBRepToolGeomTool*(typeC3D: TopOpeBRepToolOutCurveType = topOpeBRepToolBSPLINE1;
                               compC3D: bool = true; compPC1: bool = true;
                               compPC2: bool = true): TopOpeBRepToolGeomTool {.cdecl,
    constructor, importcpp: "TopOpeBRepTool_GeomTool(@)", dynlib: tkbool.}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType;
            compC3D: bool; compPC1: bool; compPC2: bool) {.cdecl, importcpp: "Define",
    dynlib: tkbool.}
proc define*(this: var TopOpeBRepToolGeomTool; typeC3D: TopOpeBRepToolOutCurveType) {.
    cdecl, importcpp: "Define", dynlib: tkbool.}
proc defineCurves*(this: var TopOpeBRepToolGeomTool; compC3D: bool) {.cdecl,
    importcpp: "DefineCurves", dynlib: tkbool.}
proc definePCurves1*(this: var TopOpeBRepToolGeomTool; compPC1: bool) {.cdecl,
    importcpp: "DefinePCurves1", dynlib: tkbool.}
proc definePCurves2*(this: var TopOpeBRepToolGeomTool; compPC2: bool) {.cdecl,
    importcpp: "DefinePCurves2", dynlib: tkbool.}
proc define*(this: var TopOpeBRepToolGeomTool; gt: TopOpeBRepToolGeomTool) {.cdecl,
    importcpp: "Define", dynlib: tkbool.}
proc getTolerances*(this: TopOpeBRepToolGeomTool; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "GetTolerances", dynlib: tkbool.}
proc setTolerances*(this: var TopOpeBRepToolGeomTool; tol3d: cfloat; tol2d: cfloat) {.
    cdecl, importcpp: "SetTolerances", dynlib: tkbool.}
proc nbPntMax*(this: TopOpeBRepToolGeomTool): cint {.noSideEffect, cdecl,
    importcpp: "NbPntMax", dynlib: tkbool.}
proc setNbPntMax*(this: var TopOpeBRepToolGeomTool; nbPntMax: cint) {.cdecl,
    importcpp: "SetNbPntMax", dynlib: tkbool.}
proc typeC3D*(this: TopOpeBRepToolGeomTool): TopOpeBRepToolOutCurveType {.
    noSideEffect, cdecl, importcpp: "TypeC3D", dynlib: tkbool.}
proc compC3D*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompC3D", dynlib: tkbool.}
proc compPC1*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompPC1", dynlib: tkbool.}
proc compPC2*(this: TopOpeBRepToolGeomTool): bool {.noSideEffect, cdecl,
    importcpp: "CompPC2", dynlib: tkbool.}
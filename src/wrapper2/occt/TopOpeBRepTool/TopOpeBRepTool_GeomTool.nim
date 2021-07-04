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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopOpeBRepTool_OutCurveType,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

type
  TopOpeBRepTool_GeomTool* {.importcpp: "TopOpeBRepTool_GeomTool",
                            header: "TopOpeBRepTool_GeomTool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Boolean
                                                                                ## flags
                                                                                ## <CompC3D>,
                                                                                ## <CompPC1>,
                                                                                ## <CompPC2>
                                                                                ##
                                                                                ## !
                                                                                ## indicate
                                                                                ## whether
                                                                                ## the
                                                                                ## corresponding
                                                                                ## result
                                                                                ## curves
                                                                                ##
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
                                                                                ##
                                                                                ## !
                                                                                ## be
                                                                                ## computed
                                                                                ## from
                                                                                ## an
                                                                                ## intersection
                                                                                ## line
                                                                                ## <L>.
                                                                                ##
                                                                                ## !
                                                                                ## When
                                                                                ## the
                                                                                ## line
                                                                                ## <L>
                                                                                ## is
                                                                                ## a
                                                                                ## walking
                                                                                ## one,
                                                                                ## <TypeC3D>
                                                                                ## is
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## kind
                                                                                ## of
                                                                                ## the
                                                                                ## 3D
                                                                                ## curve
                                                                                ## <C3D>
                                                                                ## to
                                                                                ## compute
                                                                                ## :
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## BSPLINE1
                                                                                ## to
                                                                                ## compute
                                                                                ## a
                                                                                ## BSpline
                                                                                ## of
                                                                                ## degree
                                                                                ## 1
                                                                                ## on
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## walking
                                                                                ## points
                                                                                ## of
                                                                                ## <L>,
                                                                                ##
                                                                                ## !
                                                                                ## -
                                                                                ## APPROX
                                                                                ## to
                                                                                ## build
                                                                                ## an
                                                                                ## approximation
                                                                                ## curve
                                                                                ## on
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## walking
                                                                                ## points
                                                                                ## of
                                                                                ## <L>.


proc constructTopOpeBRepTool_GeomTool*(TypeC3D: TopOpeBRepTool_OutCurveType = TopOpeBRepTool_BSPLINE1;
    CompC3D: Standard_Boolean = Standard_True; CompPC1: Standard_Boolean = Standard_True;
                                      CompPC2: Standard_Boolean = Standard_True): TopOpeBRepTool_GeomTool {.
    constructor, importcpp: "TopOpeBRepTool_GeomTool(@)",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc Define*(this: var TopOpeBRepTool_GeomTool;
            TypeC3D: TopOpeBRepTool_OutCurveType; CompC3D: Standard_Boolean;
            CompPC1: Standard_Boolean; CompPC2: Standard_Boolean) {.
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc Define*(this: var TopOpeBRepTool_GeomTool; TypeC3D: TopOpeBRepTool_OutCurveType) {.
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc DefineCurves*(this: var TopOpeBRepTool_GeomTool; CompC3D: Standard_Boolean) {.
    importcpp: "DefineCurves", header: "TopOpeBRepTool_GeomTool.hxx".}
proc DefinePCurves1*(this: var TopOpeBRepTool_GeomTool; CompPC1: Standard_Boolean) {.
    importcpp: "DefinePCurves1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc DefinePCurves2*(this: var TopOpeBRepTool_GeomTool; CompPC2: Standard_Boolean) {.
    importcpp: "DefinePCurves2", header: "TopOpeBRepTool_GeomTool.hxx".}
proc Define*(this: var TopOpeBRepTool_GeomTool; GT: TopOpeBRepTool_GeomTool) {.
    importcpp: "Define", header: "TopOpeBRepTool_GeomTool.hxx".}
proc GetTolerances*(this: TopOpeBRepTool_GeomTool; tol3d: var Standard_Real;
                   tol2d: var Standard_Real) {.noSideEffect,
    importcpp: "GetTolerances", header: "TopOpeBRepTool_GeomTool.hxx".}
proc SetTolerances*(this: var TopOpeBRepTool_GeomTool; tol3d: Standard_Real;
                   tol2d: Standard_Real) {.importcpp: "SetTolerances",
    header: "TopOpeBRepTool_GeomTool.hxx".}
proc NbPntMax*(this: TopOpeBRepTool_GeomTool): Standard_Integer {.noSideEffect,
    importcpp: "NbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc SetNbPntMax*(this: var TopOpeBRepTool_GeomTool; NbPntMax: Standard_Integer) {.
    importcpp: "SetNbPntMax", header: "TopOpeBRepTool_GeomTool.hxx".}
proc TypeC3D*(this: TopOpeBRepTool_GeomTool): TopOpeBRepTool_OutCurveType {.
    noSideEffect, importcpp: "TypeC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc CompC3D*(this: TopOpeBRepTool_GeomTool): Standard_Boolean {.noSideEffect,
    importcpp: "CompC3D", header: "TopOpeBRepTool_GeomTool.hxx".}
proc CompPC1*(this: TopOpeBRepTool_GeomTool): Standard_Boolean {.noSideEffect,
    importcpp: "CompPC1", header: "TopOpeBRepTool_GeomTool.hxx".}
proc CompPC2*(this: TopOpeBRepTool_GeomTool): Standard_Boolean {.noSideEffect,
    importcpp: "CompPC2", header: "TopOpeBRepTool_GeomTool.hxx".}
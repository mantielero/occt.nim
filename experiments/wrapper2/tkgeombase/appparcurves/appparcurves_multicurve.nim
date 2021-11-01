##  Created on: 1991-12-02
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AppParCurves_MultiPoint"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppParCurvesMultiCurve* {.importcpp: "AppParCurves_MultiCurve",
                           header: "AppParCurves_MultiCurve.hxx", bycopy.} = object of RootObj ## !
                                                                               ## returns
                                                                               ## an
                                                                               ## indefinite
                                                                               ## MultiCurve.


proc newAppParCurvesMultiCurve*(): AppParCurvesMultiCurve {.cdecl, constructor,
    importcpp: "AppParCurves_MultiCurve(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiCurve*(nbPol: cint): AppParCurvesMultiCurve {.cdecl,
    constructor, importcpp: "AppParCurves_MultiCurve(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiCurve*(tabMU: AppParCurvesArray1OfMultiPoint): AppParCurvesMultiCurve {.
    cdecl, constructor, importcpp: "AppParCurves_MultiCurve(@)", dynlib: tkgeombase.}
proc destroyAppParCurvesMultiCurve*(this: var AppParCurvesMultiCurve) {.cdecl,
    importcpp: "#.~AppParCurves_MultiCurve()", dynlib: tkgeombase.}
proc setNbPoles*(this: var AppParCurvesMultiCurve; nbPoles: cint) {.cdecl,
    importcpp: "SetNbPoles", dynlib: tkgeombase.}
proc setValue*(this: var AppParCurvesMultiCurve; index: cint;
              mPoint: AppParCurvesMultiPoint) {.cdecl, importcpp: "SetValue",
    dynlib: tkgeombase.}
proc nbCurves*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", dynlib: tkgeombase.}
proc nbPoles*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "NbPoles", dynlib: tkgeombase.}
proc degree*(this: AppParCurvesMultiCurve): cint {.noSideEffect, cdecl,
    importcpp: "Degree", dynlib: tkgeombase.}
proc dimension*(this: AppParCurvesMultiCurve; cuIndex: cint): cint {.noSideEffect,
    cdecl, importcpp: "Dimension", dynlib: tkgeombase.}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt) {.noSideEffect, cdecl, importcpp: "Curve",
    dynlib: tkgeombase.}
proc curve*(this: AppParCurvesMultiCurve; cuIndex: cint;
           tabPnt: var TColgpArray1OfPnt2d) {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkgeombase.}
proc value*(this: AppParCurvesMultiCurve; index: cint): AppParCurvesMultiPoint {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc pole*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): Pnt {.
    noSideEffect, cdecl, importcpp: "Pole", dynlib: tkgeombase.}
proc pole2d*(this: AppParCurvesMultiCurve; cuIndex: cint; nieme: cint): Pnt2d {.
    noSideEffect, cdecl, importcpp: "Pole2d", dynlib: tkgeombase.}
proc transform*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat; dx: cfloat;
               y: cfloat; dy: cfloat; z: cfloat; dz: cfloat) {.cdecl,
    importcpp: "Transform", dynlib: tkgeombase.}
proc transform2d*(this: var AppParCurvesMultiCurve; cuIndex: cint; x: cfloat;
                 dx: cfloat; y: cfloat; dy: cfloat) {.cdecl, importcpp: "Transform2d",
    dynlib: tkgeombase.}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt) {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc value*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d) {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkgeombase.}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt; v1: var Vec) {.
    noSideEffect, cdecl, importcpp: "D1", dynlib: tkgeombase.}
proc d1*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkgeombase.}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt; v1: var Vec;
        v2: var Vec) {.noSideEffect, cdecl, importcpp: "D2", dynlib: tkgeombase.}
proc d2*(this: AppParCurvesMultiCurve; cuIndex: cint; u: cfloat; pt: var Pnt2d;
        v1: var Vec2d; v2: var Vec2d) {.noSideEffect, cdecl, importcpp: "D2",
                                  dynlib: tkgeombase.}
proc dump*(this: AppParCurvesMultiCurve; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkgeombase.}
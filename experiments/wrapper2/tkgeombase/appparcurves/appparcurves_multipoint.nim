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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  AppParCurvesMultiPoint* {.importcpp: "AppParCurves_MultiPoint",
                           header: "AppParCurves_MultiPoint.hxx", bycopy.} = object ## !
                                                                               ## creates
                                                                               ## an
                                                                               ## indefinite
                                                                               ## MultiPoint.


proc newAppParCurvesMultiPoint*(): AppParCurvesMultiPoint {.cdecl, constructor,
    importcpp: "AppParCurves_MultiPoint(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiPoint*(nbPoints: cint; nbPoints2d: cint): AppParCurvesMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_MultiPoint(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiPoint*(tabP: TColgpArray1OfPnt): AppParCurvesMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_MultiPoint(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiPoint*(tabP2d: TColgpArray1OfPnt2d): AppParCurvesMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_MultiPoint(@)", dynlib: tkgeombase.}
proc newAppParCurvesMultiPoint*(tabP: TColgpArray1OfPnt;
                               tabP2d: TColgpArray1OfPnt2d): AppParCurvesMultiPoint {.
    cdecl, constructor, importcpp: "AppParCurves_MultiPoint(@)", dynlib: tkgeombase.}
proc destroyAppParCurvesMultiPoint*(this: var AppParCurvesMultiPoint) {.cdecl,
    importcpp: "#.~AppParCurves_MultiPoint()", dynlib: tkgeombase.}
proc setPoint*(this: var AppParCurvesMultiPoint; index: cint; point: Pnt) {.cdecl,
    importcpp: "SetPoint", dynlib: tkgeombase.}
proc point*(this: AppParCurvesMultiPoint; index: cint): Pnt {.noSideEffect, cdecl,
    importcpp: "Point", dynlib: tkgeombase.}
proc setPoint2d*(this: var AppParCurvesMultiPoint; index: cint; point: Pnt2d) {.cdecl,
    importcpp: "SetPoint2d", dynlib: tkgeombase.}
proc point2d*(this: AppParCurvesMultiPoint; index: cint): Pnt2d {.noSideEffect, cdecl,
    importcpp: "Point2d", dynlib: tkgeombase.}
proc dimension*(this: AppParCurvesMultiPoint; index: cint): cint {.noSideEffect, cdecl,
    importcpp: "Dimension", dynlib: tkgeombase.}
proc nbPoints*(this: AppParCurvesMultiPoint): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", dynlib: tkgeombase.}
proc nbPoints2d*(this: AppParCurvesMultiPoint): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints2d", dynlib: tkgeombase.}
proc transform*(this: var AppParCurvesMultiPoint; cuIndex: cint; x: cfloat; dx: cfloat;
               y: cfloat; dy: cfloat; z: cfloat; dz: cfloat) {.cdecl,
    importcpp: "Transform", dynlib: tkgeombase.}
proc transform2d*(this: var AppParCurvesMultiPoint; cuIndex: cint; x: cfloat;
                 dx: cfloat; y: cfloat; dy: cfloat) {.cdecl, importcpp: "Transform2d",
    dynlib: tkgeombase.}
proc dump*(this: AppParCurvesMultiPoint; o: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkgeombase.}
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


proc constructAppParCurvesMultiPoint*(): AppParCurvesMultiPoint {.constructor,
    importcpp: "AppParCurves_MultiPoint(@)", header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurvesMultiPoint*(nbPoints: int; nbPoints2d: int): AppParCurvesMultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurvesMultiPoint*(tabP: TColgpArray1OfPnt): AppParCurvesMultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurvesMultiPoint*(tabP2d: TColgpArray1OfPnt2d): AppParCurvesMultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurvesMultiPoint*(tabP: TColgpArray1OfPnt;
                                     tabP2d: TColgpArray1OfPnt2d): AppParCurvesMultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc destroyAppParCurvesMultiPoint*(this: var AppParCurvesMultiPoint) {.
    importcpp: "#.~AppParCurves_MultiPoint()",
    header: "AppParCurves_MultiPoint.hxx".}
proc setPoint*(this: var AppParCurvesMultiPoint; index: int; point: Pnt) {.
    importcpp: "SetPoint", header: "AppParCurves_MultiPoint.hxx".}
proc point*(this: AppParCurvesMultiPoint; index: int): Pnt {.noSideEffect,
    importcpp: "Point", header: "AppParCurves_MultiPoint.hxx".}
proc setPoint2d*(this: var AppParCurvesMultiPoint; index: int; point: Pnt2d) {.
    importcpp: "SetPoint2d", header: "AppParCurves_MultiPoint.hxx".}
proc point2d*(this: AppParCurvesMultiPoint; index: int): Pnt2d {.noSideEffect,
    importcpp: "Point2d", header: "AppParCurves_MultiPoint.hxx".}
proc dimension*(this: AppParCurvesMultiPoint; index: int): int {.noSideEffect,
    importcpp: "Dimension", header: "AppParCurves_MultiPoint.hxx".}
proc nbPoints*(this: AppParCurvesMultiPoint): int {.noSideEffect,
    importcpp: "NbPoints", header: "AppParCurves_MultiPoint.hxx".}
proc nbPoints2d*(this: AppParCurvesMultiPoint): int {.noSideEffect,
    importcpp: "NbPoints2d", header: "AppParCurves_MultiPoint.hxx".}
proc transform*(this: var AppParCurvesMultiPoint; cuIndex: int; x: float; dx: float;
               y: float; dy: float; z: float; dz: float) {.importcpp: "Transform",
    header: "AppParCurves_MultiPoint.hxx".}
proc transform2d*(this: var AppParCurvesMultiPoint; cuIndex: int; x: float; dx: float;
                 y: float; dy: float) {.importcpp: "Transform2d",
                                    header: "AppParCurves_MultiPoint.hxx".}
proc dump*(this: AppParCurvesMultiPoint; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiPoint.hxx".}

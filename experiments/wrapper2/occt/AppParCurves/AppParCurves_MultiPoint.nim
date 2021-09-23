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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  AppParCurves_MultiPoint* {.importcpp: "AppParCurves_MultiPoint",
                            header: "AppParCurves_MultiPoint.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## creates
                                                                                ## an
                                                                                ## indefinite
                                                                                ## MultiPoint.


proc constructAppParCurves_MultiPoint*(): AppParCurves_MultiPoint {.constructor,
    importcpp: "AppParCurves_MultiPoint(@)", header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurves_MultiPoint*(NbPoints: Standard_Integer;
                                      NbPoints2d: Standard_Integer): AppParCurves_MultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurves_MultiPoint*(tabP: TColgp_Array1OfPnt): AppParCurves_MultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurves_MultiPoint*(tabP2d: TColgp_Array1OfPnt2d): AppParCurves_MultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc constructAppParCurves_MultiPoint*(tabP: TColgp_Array1OfPnt;
                                      tabP2d: TColgp_Array1OfPnt2d): AppParCurves_MultiPoint {.
    constructor, importcpp: "AppParCurves_MultiPoint(@)",
    header: "AppParCurves_MultiPoint.hxx".}
proc destroyAppParCurves_MultiPoint*(this: var AppParCurves_MultiPoint) {.
    importcpp: "#.~AppParCurves_MultiPoint()",
    header: "AppParCurves_MultiPoint.hxx".}
proc SetPoint*(this: var AppParCurves_MultiPoint; Index: Standard_Integer;
              Point: gp_Pnt) {.importcpp: "SetPoint",
                             header: "AppParCurves_MultiPoint.hxx".}
proc Point*(this: AppParCurves_MultiPoint; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "AppParCurves_MultiPoint.hxx".}
proc SetPoint2d*(this: var AppParCurves_MultiPoint; Index: Standard_Integer;
                Point: gp_Pnt2d) {.importcpp: "SetPoint2d",
                                 header: "AppParCurves_MultiPoint.hxx".}
proc Point2d*(this: AppParCurves_MultiPoint; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Point2d", header: "AppParCurves_MultiPoint.hxx".}
proc Dimension*(this: AppParCurves_MultiPoint; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Dimension", header: "AppParCurves_MultiPoint.hxx".}
proc NbPoints*(this: AppParCurves_MultiPoint): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "AppParCurves_MultiPoint.hxx".}
proc NbPoints2d*(this: AppParCurves_MultiPoint): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints2d", header: "AppParCurves_MultiPoint.hxx".}
proc Transform*(this: var AppParCurves_MultiPoint; CuIndex: Standard_Integer;
               x: Standard_Real; dx: Standard_Real; y: Standard_Real;
               dy: Standard_Real; z: Standard_Real; dz: Standard_Real) {.
    importcpp: "Transform", header: "AppParCurves_MultiPoint.hxx".}
proc Transform2d*(this: var AppParCurves_MultiPoint; CuIndex: Standard_Integer;
                 x: Standard_Real; dx: Standard_Real; y: Standard_Real;
                 dy: Standard_Real) {.importcpp: "Transform2d",
                                    header: "AppParCurves_MultiPoint.hxx".}
proc Dump*(this: AppParCurves_MultiPoint; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiPoint.hxx".}
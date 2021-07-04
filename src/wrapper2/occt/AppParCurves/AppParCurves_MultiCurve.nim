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
  ../Standard/Standard_Handle, AppParCurves_HArray1OfMultiPoint,
  ../Standard/Standard_Integer, AppParCurves_Array1OfMultiPoint,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Real, ../Standard/Standard_OStream

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DimensionError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of AppParCurves_MultiPoint"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  AppParCurves_MultiCurve* {.importcpp: "AppParCurves_MultiCurve",
                            header: "AppParCurves_MultiCurve.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## returns
                                                                                ## an
                                                                                ## indefinite
                                                                                ## MultiCurve.


proc constructAppParCurves_MultiCurve*(): AppParCurves_MultiCurve {.constructor,
    importcpp: "AppParCurves_MultiCurve(@)", header: "AppParCurves_MultiCurve.hxx".}
proc constructAppParCurves_MultiCurve*(NbPol: Standard_Integer): AppParCurves_MultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc constructAppParCurves_MultiCurve*(tabMU: AppParCurves_Array1OfMultiPoint): AppParCurves_MultiCurve {.
    constructor, importcpp: "AppParCurves_MultiCurve(@)",
    header: "AppParCurves_MultiCurve.hxx".}
proc destroyAppParCurves_MultiCurve*(this: var AppParCurves_MultiCurve) {.
    importcpp: "#.~AppParCurves_MultiCurve()",
    header: "AppParCurves_MultiCurve.hxx".}
proc SetNbPoles*(this: var AppParCurves_MultiCurve; nbPoles: Standard_Integer) {.
    importcpp: "SetNbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc SetValue*(this: var AppParCurves_MultiCurve; Index: Standard_Integer;
              MPoint: AppParCurves_MultiPoint) {.importcpp: "SetValue",
    header: "AppParCurves_MultiCurve.hxx".}
proc NbCurves*(this: AppParCurves_MultiCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "AppParCurves_MultiCurve.hxx".}
proc NbPoles*(this: AppParCurves_MultiCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "AppParCurves_MultiCurve.hxx".}
proc Degree*(this: AppParCurves_MultiCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "AppParCurves_MultiCurve.hxx".}
proc Dimension*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Dimension", header: "AppParCurves_MultiCurve.hxx".}
proc Curve*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
           TabPnt: var TColgp_Array1OfPnt) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc Curve*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
           TabPnt: var TColgp_Array1OfPnt2d) {.noSideEffect, importcpp: "Curve",
    header: "AppParCurves_MultiCurve.hxx".}
proc Value*(this: AppParCurves_MultiCurve; Index: Standard_Integer): AppParCurves_MultiPoint {.
    noSideEffect, importcpp: "Value", header: "AppParCurves_MultiCurve.hxx".}
proc Pole*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
          Nieme: Standard_Integer): gp_Pnt {.noSideEffect, importcpp: "Pole",
    header: "AppParCurves_MultiCurve.hxx".}
proc Pole2d*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
            Nieme: Standard_Integer): gp_Pnt2d {.noSideEffect, importcpp: "Pole2d",
    header: "AppParCurves_MultiCurve.hxx".}
proc Transform*(this: var AppParCurves_MultiCurve; CuIndex: Standard_Integer;
               x: Standard_Real; dx: Standard_Real; y: Standard_Real;
               dy: Standard_Real; z: Standard_Real; dz: Standard_Real) {.
    importcpp: "Transform", header: "AppParCurves_MultiCurve.hxx".}
proc Transform2d*(this: var AppParCurves_MultiCurve; CuIndex: Standard_Integer;
                 x: Standard_Real; dx: Standard_Real; y: Standard_Real;
                 dy: Standard_Real) {.importcpp: "Transform2d",
                                    header: "AppParCurves_MultiCurve.hxx".}
proc Value*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
           U: Standard_Real; Pt: var gp_Pnt) {.noSideEffect, importcpp: "Value",
    header: "AppParCurves_MultiCurve.hxx".}
proc Value*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer;
           U: Standard_Real; Pt: var gp_Pnt2d) {.noSideEffect, importcpp: "Value",
    header: "AppParCurves_MultiCurve.hxx".}
proc D1*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer; U: Standard_Real;
        Pt: var gp_Pnt; V1: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                    header: "AppParCurves_MultiCurve.hxx".}
proc D1*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer; U: Standard_Real;
        Pt: var gp_Pnt2d; V1: var gp_Vec2d) {.noSideEffect, importcpp: "D1",
                                        header: "AppParCurves_MultiCurve.hxx".}
proc D2*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer; U: Standard_Real;
        Pt: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.noSideEffect, importcpp: "D2",
    header: "AppParCurves_MultiCurve.hxx".}
proc D2*(this: AppParCurves_MultiCurve; CuIndex: Standard_Integer; U: Standard_Real;
        Pt: var gp_Pnt2d; V1: var gp_Vec2d; V2: var gp_Vec2d) {.noSideEffect,
    importcpp: "D2", header: "AppParCurves_MultiCurve.hxx".}
proc Dump*(this: AppParCurves_MultiCurve; o: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "AppParCurves_MultiCurve.hxx".}
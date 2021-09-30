##  Created on: 1995-03-22
##  Created by: Laurent BUCHARD
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  IntToolsFClass2d* {.importcpp: "IntTools_FClass2d",
                     header: "IntTools_FClass2d.hxx", bycopy.} = object ## ! Empty constructor


proc constructIntToolsFClass2d*(): IntToolsFClass2d {.constructor,
    importcpp: "IntTools_FClass2d(@)", header: "IntTools_FClass2d.hxx".}
proc constructIntToolsFClass2d*(f: TopoDS_Face; tol: float): IntToolsFClass2d {.
    constructor, importcpp: "IntTools_FClass2d(@)", header: "IntTools_FClass2d.hxx".}
proc init*(this: var IntToolsFClass2d; f: TopoDS_Face; tol: float) {.importcpp: "Init",
    header: "IntTools_FClass2d.hxx".}
proc performInfinitePoint*(this: IntToolsFClass2d): TopAbsState {.noSideEffect,
    importcpp: "PerformInfinitePoint", header: "IntTools_FClass2d.hxx".}
proc perform*(this: IntToolsFClass2d; puv: Pnt2d; recadreOnPeriodic: bool = true): TopAbsState {.
    noSideEffect, importcpp: "Perform", header: "IntTools_FClass2d.hxx".}
proc destroy*(this: var IntToolsFClass2d) {.importcpp: "Destroy",
                                        header: "IntTools_FClass2d.hxx".}
proc destroyIntToolsFClass2d*(this: var IntToolsFClass2d) {.
    importcpp: "#.~IntTools_FClass2d()", header: "IntTools_FClass2d.hxx".}
proc testOnRestriction*(this: IntToolsFClass2d; puv: Pnt2d; tol: float;
                       recadreOnPeriodic: bool = true): TopAbsState {.noSideEffect,
    importcpp: "TestOnRestriction", header: "IntTools_FClass2d.hxx".}
proc isHole*(this: IntToolsFClass2d): bool {.noSideEffect, importcpp: "IsHole",
    header: "IntTools_FClass2d.hxx".}
## !!!Ignored construct:  # _MSC_VER [NewLine] # _MSC_VER < 1600 [NewLine] mutable std :: auto_ptr < BRepClass_FaceExplorer > myFExplorer ;
## Error: identifier expected, but got: #!!!















































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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepClass/BRepClass_FaceExplorer,
  ../BRepTopAdaptor/BRepTopAdaptor_SeqOfPtr,
  ../TColStd/TColStd_SequenceOfInteger, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Face, ../Standard/Standard_Boolean, ../TopAbs/TopAbs_State

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
type
  IntTools_FClass2d* {.importcpp: "IntTools_FClass2d",
                      header: "IntTools_FClass2d.hxx", bycopy.} = object ## ! Empty constructor


proc constructIntTools_FClass2d*(): IntTools_FClass2d {.constructor,
    importcpp: "IntTools_FClass2d(@)", header: "IntTools_FClass2d.hxx".}
proc constructIntTools_FClass2d*(F: TopoDS_Face; Tol: Standard_Real): IntTools_FClass2d {.
    constructor, importcpp: "IntTools_FClass2d(@)", header: "IntTools_FClass2d.hxx".}
proc Init*(this: var IntTools_FClass2d; F: TopoDS_Face; Tol: Standard_Real) {.
    importcpp: "Init", header: "IntTools_FClass2d.hxx".}
proc PerformInfinitePoint*(this: IntTools_FClass2d): TopAbs_State {.noSideEffect,
    importcpp: "PerformInfinitePoint", header: "IntTools_FClass2d.hxx".}
proc Perform*(this: IntTools_FClass2d; Puv: gp_Pnt2d;
             RecadreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    noSideEffect, importcpp: "Perform", header: "IntTools_FClass2d.hxx".}
proc Destroy*(this: var IntTools_FClass2d) {.importcpp: "Destroy",
    header: "IntTools_FClass2d.hxx".}
proc destroyIntTools_FClass2d*(this: var IntTools_FClass2d) {.
    importcpp: "#.~IntTools_FClass2d()", header: "IntTools_FClass2d.hxx".}
proc TestOnRestriction*(this: IntTools_FClass2d; Puv: gp_Pnt2d; Tol: Standard_Real;
                       RecadreOnPeriodic: Standard_Boolean = Standard_True): TopAbs_State {.
    noSideEffect, importcpp: "TestOnRestriction", header: "IntTools_FClass2d.hxx".}
proc IsHole*(this: IntTools_FClass2d): Standard_Boolean {.noSideEffect,
    importcpp: "IsHole", header: "IntTools_FClass2d.hxx".}
## !!!Ignored construct:  # _MSC_VER [NewLine] # _MSC_VER < 1600 [NewLine] mutable std :: auto_ptr < BRepClass_FaceExplorer > myFExplorer ;
## Error: identifier expected, but got: #!!!

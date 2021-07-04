##  Created on: 1995-12-07
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, BRepCheck_DataMapOfShapeListOfStatus,
  BRepCheck_DataMapIteratorOfDataMapOfShapeListOfStatus,
  ../Standard/Standard_Transient, BRepCheck_ListOfStatus

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Result"
discard "forward decl of BRepCheck_Result"
type
  Handle_BRepCheck_Result* = handle[BRepCheck_Result]
  BRepCheck_Result* {.importcpp: "BRepCheck_Result",
                     header: "BRepCheck_Result.hxx", bycopy.} = object of Standard_Transient


proc Init*(this: var BRepCheck_Result; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepCheck_Result.hxx".}
proc InContext*(this: var BRepCheck_Result; ContextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Result.hxx".}
proc Minimum*(this: var BRepCheck_Result) {.importcpp: "Minimum",
                                        header: "BRepCheck_Result.hxx".}
proc Blind*(this: var BRepCheck_Result) {.importcpp: "Blind",
                                      header: "BRepCheck_Result.hxx".}
proc SetFailStatus*(this: var BRepCheck_Result; S: TopoDS_Shape) {.
    importcpp: "SetFailStatus", header: "BRepCheck_Result.hxx".}
proc Status*(this: BRepCheck_Result): BRepCheck_ListOfStatus {.noSideEffect,
    importcpp: "Status", header: "BRepCheck_Result.hxx".}
proc IsMinimum*(this: BRepCheck_Result): Standard_Boolean {.noSideEffect,
    importcpp: "IsMinimum", header: "BRepCheck_Result.hxx".}
proc IsBlind*(this: BRepCheck_Result): Standard_Boolean {.noSideEffect,
    importcpp: "IsBlind", header: "BRepCheck_Result.hxx".}
proc StatusOnShape*(this: var BRepCheck_Result; S: TopoDS_Shape): BRepCheck_ListOfStatus {.
    importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
proc InitContextIterator*(this: var BRepCheck_Result) {.
    importcpp: "InitContextIterator", header: "BRepCheck_Result.hxx".}
proc MoreShapeInContext*(this: BRepCheck_Result): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShapeInContext", header: "BRepCheck_Result.hxx".}
proc ContextualShape*(this: BRepCheck_Result): TopoDS_Shape {.noSideEffect,
    importcpp: "ContextualShape", header: "BRepCheck_Result.hxx".}
proc StatusOnShape*(this: BRepCheck_Result): BRepCheck_ListOfStatus {.noSideEffect,
    importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
proc NextShapeInContext*(this: var BRepCheck_Result) {.
    importcpp: "NextShapeInContext", header: "BRepCheck_Result.hxx".}
type
  BRepCheck_Resultbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepCheck_Result::get_type_name(@)",
                              header: "BRepCheck_Result.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepCheck_Result::get_type_descriptor(@)",
    header: "BRepCheck_Result.hxx".}
proc DynamicType*(this: BRepCheck_Result): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Result.hxx".}
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Result"
discard "forward decl of BRepCheck_Result"
type
  HandleBRepCheckResult* = Handle[BRepCheckResult]
  BRepCheckResult* {.importcpp: "BRepCheck_Result", header: "BRepCheck_Result.hxx",
                    bycopy.} = object of StandardTransient


proc init*(this: var BRepCheckResult; s: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepCheck_Result.hxx".}
proc inContext*(this: var BRepCheckResult; contextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Result.hxx".}
proc minimum*(this: var BRepCheckResult) {.importcpp: "Minimum",
                                       header: "BRepCheck_Result.hxx".}
proc blind*(this: var BRepCheckResult) {.importcpp: "Blind",
                                     header: "BRepCheck_Result.hxx".}
proc setFailStatus*(this: var BRepCheckResult; s: TopoDS_Shape) {.
    importcpp: "SetFailStatus", header: "BRepCheck_Result.hxx".}
proc status*(this: BRepCheckResult): BRepCheckListOfStatus {.noSideEffect,
    importcpp: "Status", header: "BRepCheck_Result.hxx".}
proc isMinimum*(this: BRepCheckResult): StandardBoolean {.noSideEffect,
    importcpp: "IsMinimum", header: "BRepCheck_Result.hxx".}
proc isBlind*(this: BRepCheckResult): StandardBoolean {.noSideEffect,
    importcpp: "IsBlind", header: "BRepCheck_Result.hxx".}
proc statusOnShape*(this: var BRepCheckResult; s: TopoDS_Shape): BRepCheckListOfStatus {.
    importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
proc initContextIterator*(this: var BRepCheckResult) {.
    importcpp: "InitContextIterator", header: "BRepCheck_Result.hxx".}
proc moreShapeInContext*(this: BRepCheckResult): StandardBoolean {.noSideEffect,
    importcpp: "MoreShapeInContext", header: "BRepCheck_Result.hxx".}
proc contextualShape*(this: BRepCheckResult): TopoDS_Shape {.noSideEffect,
    importcpp: "ContextualShape", header: "BRepCheck_Result.hxx".}
proc statusOnShape*(this: BRepCheckResult): BRepCheckListOfStatus {.noSideEffect,
    importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
proc nextShapeInContext*(this: var BRepCheckResult) {.
    importcpp: "NextShapeInContext", header: "BRepCheck_Result.hxx".}
type
  BRepCheckResultbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Result::get_type_name(@)",
                            header: "BRepCheck_Result.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Result::get_type_descriptor(@)",
    header: "BRepCheck_Result.hxx".}
proc dynamicType*(this: BRepCheckResult): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Result.hxx".}


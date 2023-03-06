import brepcheck_types
import ../topods/topods_types

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


proc Init*(this: var BRepCheck_Result; S: TopoDS_Shape) {.cdecl, importcpp: "Init",
    header: "BRepCheck_Result.hxx".}
proc InContext*(this: var BRepCheck_Result; ContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Result.hxx".}
proc Minimum*(this: var BRepCheck_Result) {.cdecl, importcpp: "Minimum",
                                        header: "BRepCheck_Result.hxx".}
proc Blind*(this: var BRepCheck_Result) {.cdecl, importcpp: "Blind",
                                      header: "BRepCheck_Result.hxx".}
proc SetFailStatus*(this: var BRepCheck_Result; S: TopoDS_Shape) {.cdecl,
    importcpp: "SetFailStatus", header: "BRepCheck_Result.hxx".}
proc Status*(this: BRepCheck_Result): BRepCheck_ListOfStatus {.noSideEffect, cdecl,
    importcpp: "Status", header: "BRepCheck_Result.hxx".}
proc IsMinimum*(this: BRepCheck_Result): bool {.noSideEffect, cdecl,
    importcpp: "IsMinimum", header: "BRepCheck_Result.hxx".}
proc IsBlind*(this: BRepCheck_Result): bool {.noSideEffect, cdecl,
    importcpp: "IsBlind", header: "BRepCheck_Result.hxx".}
proc InitContextIterator*(this: var BRepCheck_Result) {.cdecl,
    importcpp: "InitContextIterator", header: "BRepCheck_Result.hxx".}
proc MoreShapeInContext*(this: BRepCheck_Result): bool {.noSideEffect, cdecl,
    importcpp: "MoreShapeInContext", header: "BRepCheck_Result.hxx".}
proc ContextualShape*(this: BRepCheck_Result): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "ContextualShape", header: "BRepCheck_Result.hxx".}
proc StatusOnShape*(this: BRepCheck_Result): BRepCheck_ListOfStatus {.noSideEffect,
    cdecl, importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
proc NextShapeInContext*(this: var BRepCheck_Result) {.cdecl,
    importcpp: "NextShapeInContext", header: "BRepCheck_Result.hxx".}
proc SetParallel*(this: var BRepCheck_Result; theIsParallel: bool) {.cdecl,
    importcpp: "SetParallel", header: "BRepCheck_Result.hxx".}
proc IsStatusOnShape*(this: BRepCheck_Result; theShape: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "IsStatusOnShape",
    header: "BRepCheck_Result.hxx".}
proc StatusOnShape*(this: BRepCheck_Result; theShape: TopoDS_Shape): BRepCheck_ListOfStatus {.
    noSideEffect, cdecl, importcpp: "StatusOnShape", header: "BRepCheck_Result.hxx".}
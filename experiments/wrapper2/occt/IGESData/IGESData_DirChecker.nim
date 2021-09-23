##  Created on: 1992-11-10
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, IGESData_DefType

discard "forward decl of Interface_Check"
discard "forward decl of IGESData_IGESEntity"
type
  IGESData_DirChecker* {.importcpp: "IGESData_DirChecker",
                        header: "IGESData_DirChecker.hxx", bycopy.} = object ## ! Returns a
                                                                        ## DirChecker, with no
                                                                        ## criterium at all to be checked


proc constructIGESData_DirChecker*(): IGESData_DirChecker {.constructor,
    importcpp: "IGESData_DirChecker(@)", header: "IGESData_DirChecker.hxx".}
proc constructIGESData_DirChecker*(atype: Standard_Integer): IGESData_DirChecker {.
    constructor, importcpp: "IGESData_DirChecker(@)",
    header: "IGESData_DirChecker.hxx".}
proc constructIGESData_DirChecker*(atype: Standard_Integer; aform: Standard_Integer): IGESData_DirChecker {.
    constructor, importcpp: "IGESData_DirChecker(@)",
    header: "IGESData_DirChecker.hxx".}
proc constructIGESData_DirChecker*(atype: Standard_Integer;
                                  aform1: Standard_Integer;
                                  aform2: Standard_Integer): IGESData_DirChecker {.
    constructor, importcpp: "IGESData_DirChecker(@)",
    header: "IGESData_DirChecker.hxx".}
proc IsSet*(this: IGESData_DirChecker): Standard_Boolean {.noSideEffect,
    importcpp: "IsSet", header: "IGESData_DirChecker.hxx".}
proc SetDefault*(this: var IGESData_DirChecker) {.importcpp: "SetDefault",
    header: "IGESData_DirChecker.hxx".}
proc Structure*(this: var IGESData_DirChecker; crit: IGESData_DefType) {.
    importcpp: "Structure", header: "IGESData_DirChecker.hxx".}
proc LineFont*(this: var IGESData_DirChecker; crit: IGESData_DefType) {.
    importcpp: "LineFont", header: "IGESData_DirChecker.hxx".}
proc LineWeight*(this: var IGESData_DirChecker; crit: IGESData_DefType) {.
    importcpp: "LineWeight", header: "IGESData_DirChecker.hxx".}
proc Color*(this: var IGESData_DirChecker; crit: IGESData_DefType) {.
    importcpp: "Color", header: "IGESData_DirChecker.hxx".}
proc GraphicsIgnored*(this: var IGESData_DirChecker;
                     hierarchy: Standard_Integer = -1) {.
    importcpp: "GraphicsIgnored", header: "IGESData_DirChecker.hxx".}
proc BlankStatusIgnored*(this: var IGESData_DirChecker) {.
    importcpp: "BlankStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc BlankStatusRequired*(this: var IGESData_DirChecker; val: Standard_Integer) {.
    importcpp: "BlankStatusRequired", header: "IGESData_DirChecker.hxx".}
proc SubordinateStatusIgnored*(this: var IGESData_DirChecker) {.
    importcpp: "SubordinateStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc SubordinateStatusRequired*(this: var IGESData_DirChecker; val: Standard_Integer) {.
    importcpp: "SubordinateStatusRequired", header: "IGESData_DirChecker.hxx".}
proc UseFlagIgnored*(this: var IGESData_DirChecker) {.importcpp: "UseFlagIgnored",
    header: "IGESData_DirChecker.hxx".}
proc UseFlagRequired*(this: var IGESData_DirChecker; val: Standard_Integer) {.
    importcpp: "UseFlagRequired", header: "IGESData_DirChecker.hxx".}
proc HierarchyStatusIgnored*(this: var IGESData_DirChecker) {.
    importcpp: "HierarchyStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc HierarchyStatusRequired*(this: var IGESData_DirChecker; val: Standard_Integer) {.
    importcpp: "HierarchyStatusRequired", header: "IGESData_DirChecker.hxx".}
proc Check*(this: IGESData_DirChecker; ach: var handle[Interface_Check];
           ent: handle[IGESData_IGESEntity]) {.noSideEffect, importcpp: "Check",
    header: "IGESData_DirChecker.hxx".}
proc CheckTypeAndForm*(this: IGESData_DirChecker; ach: var handle[Interface_Check];
                      ent: handle[IGESData_IGESEntity]) {.noSideEffect,
    importcpp: "CheckTypeAndForm", header: "IGESData_DirChecker.hxx".}
proc Correct*(this: IGESData_DirChecker; ent: handle[IGESData_IGESEntity]): Standard_Boolean {.
    noSideEffect, importcpp: "Correct", header: "IGESData_DirChecker.hxx".}
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

discard "forward decl of Interface_Check"
discard "forward decl of IGESData_IGESEntity"
type
  IGESDataDirChecker* {.importcpp: "IGESData_DirChecker",
                       header: "IGESData_DirChecker.hxx", bycopy.} = object ## ! Returns a
                                                                       ## DirChecker, with no criterium at all to be checked


proc constructIGESDataDirChecker*(): IGESDataDirChecker {.constructor,
    importcpp: "IGESData_DirChecker(@)", header: "IGESData_DirChecker.hxx".}
proc constructIGESDataDirChecker*(atype: int): IGESDataDirChecker {.constructor,
    importcpp: "IGESData_DirChecker(@)", header: "IGESData_DirChecker.hxx".}
proc constructIGESDataDirChecker*(atype: int; aform: int): IGESDataDirChecker {.
    constructor, importcpp: "IGESData_DirChecker(@)",
    header: "IGESData_DirChecker.hxx".}
proc constructIGESDataDirChecker*(atype: int; aform1: int; aform2: int): IGESDataDirChecker {.
    constructor, importcpp: "IGESData_DirChecker(@)",
    header: "IGESData_DirChecker.hxx".}
proc isSet*(this: IGESDataDirChecker): bool {.noSideEffect, importcpp: "IsSet",
    header: "IGESData_DirChecker.hxx".}
proc setDefault*(this: var IGESDataDirChecker) {.importcpp: "SetDefault",
    header: "IGESData_DirChecker.hxx".}
proc structure*(this: var IGESDataDirChecker; crit: IGESDataDefType) {.
    importcpp: "Structure", header: "IGESData_DirChecker.hxx".}
proc lineFont*(this: var IGESDataDirChecker; crit: IGESDataDefType) {.
    importcpp: "LineFont", header: "IGESData_DirChecker.hxx".}
proc lineWeight*(this: var IGESDataDirChecker; crit: IGESDataDefType) {.
    importcpp: "LineWeight", header: "IGESData_DirChecker.hxx".}
proc color*(this: var IGESDataDirChecker; crit: IGESDataDefType) {.importcpp: "Color",
    header: "IGESData_DirChecker.hxx".}
proc graphicsIgnored*(this: var IGESDataDirChecker; hierarchy: int = -1) {.
    importcpp: "GraphicsIgnored", header: "IGESData_DirChecker.hxx".}
proc blankStatusIgnored*(this: var IGESDataDirChecker) {.
    importcpp: "BlankStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc blankStatusRequired*(this: var IGESDataDirChecker; val: int) {.
    importcpp: "BlankStatusRequired", header: "IGESData_DirChecker.hxx".}
proc subordinateStatusIgnored*(this: var IGESDataDirChecker) {.
    importcpp: "SubordinateStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc subordinateStatusRequired*(this: var IGESDataDirChecker; val: int) {.
    importcpp: "SubordinateStatusRequired", header: "IGESData_DirChecker.hxx".}
proc useFlagIgnored*(this: var IGESDataDirChecker) {.importcpp: "UseFlagIgnored",
    header: "IGESData_DirChecker.hxx".}
proc useFlagRequired*(this: var IGESDataDirChecker; val: int) {.
    importcpp: "UseFlagRequired", header: "IGESData_DirChecker.hxx".}
proc hierarchyStatusIgnored*(this: var IGESDataDirChecker) {.
    importcpp: "HierarchyStatusIgnored", header: "IGESData_DirChecker.hxx".}
proc hierarchyStatusRequired*(this: var IGESDataDirChecker; val: int) {.
    importcpp: "HierarchyStatusRequired", header: "IGESData_DirChecker.hxx".}
proc check*(this: IGESDataDirChecker; ach: var Handle[InterfaceCheck];
           ent: Handle[IGESDataIGESEntity]) {.noSideEffect, importcpp: "Check",
    header: "IGESData_DirChecker.hxx".}
proc checkTypeAndForm*(this: IGESDataDirChecker; ach: var Handle[InterfaceCheck];
                      ent: Handle[IGESDataIGESEntity]) {.noSideEffect,
    importcpp: "CheckTypeAndForm", header: "IGESData_DirChecker.hxx".}
proc correct*(this: IGESDataDirChecker; ent: Handle[IGESDataIGESEntity]): bool {.
    noSideEffect, importcpp: "Correct", header: "IGESData_DirChecker.hxx".}

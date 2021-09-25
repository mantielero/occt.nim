##  Created on: 1995-03-21
##  Created by: Jean-Louis Frenkel
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

## ! Class holding the list of selected owners.

type
  AIS_Selection* {.importcpp: "AIS_Selection", header: "AIS_Selection.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## creates
                                                                                                         ## a
                                                                                                         ## new
                                                                                                         ## selection.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Start
                                                                                                         ## iteration
                                                                                                         ## through
                                                                                                         ## selected
                                                                                                         ## objects.

  AIS_SelectionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "AIS_Selection::get_type_name(@)",
                            header: "AIS_Selection.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Selection::get_type_descriptor(@)",
    header: "AIS_Selection.hxx".}
proc dynamicType*(this: AIS_Selection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Selection.hxx".}
proc constructAIS_Selection*(): AIS_Selection {.constructor,
    importcpp: "AIS_Selection(@)", header: "AIS_Selection.hxx".}
proc clear*(this: var AIS_Selection) {.importcpp: "Clear", header: "AIS_Selection.hxx".}
proc select*(this: var AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): AIS_SelectStatus {.
    importcpp: "Select", header: "AIS_Selection.hxx".}
proc addSelect*(this: var AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): AIS_SelectStatus {.
    importcpp: "AddSelect", header: "AIS_Selection.hxx".}
proc clearAndSelect*(this: var AIS_Selection;
                    theObject: Handle[SelectMgrEntityOwner]) {.
    importcpp: "ClearAndSelect", header: "AIS_Selection.hxx".}
proc isSelected*(this: AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsSelected", header: "AIS_Selection.hxx".}
proc objects*(this: AIS_Selection): AIS_NListOfEntityOwner {.noSideEffect,
    importcpp: "Objects", header: "AIS_Selection.hxx".}
proc extent*(this: AIS_Selection): int {.noSideEffect, importcpp: "Extent",
                                     header: "AIS_Selection.hxx".}
proc isEmpty*(this: AIS_Selection): bool {.noSideEffect, importcpp: "IsEmpty",
                                       header: "AIS_Selection.hxx".}
proc init*(this: var AIS_Selection) {.importcpp: "Init", header: "AIS_Selection.hxx".}
proc more*(this: AIS_Selection): bool {.noSideEffect, importcpp: "More",
                                    header: "AIS_Selection.hxx".}
proc next*(this: var AIS_Selection) {.importcpp: "Next", header: "AIS_Selection.hxx".}
proc value*(this: AIS_Selection): Handle[SelectMgrEntityOwner] {.noSideEffect,
    importcpp: "Value", header: "AIS_Selection.hxx".}
discard "forward decl of AIS_Selection"
type
  HandleAIS_Selection* = Handle[AIS_Selection]


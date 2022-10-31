import ../selectmgr/selectmgr_types
import ../../tkernel/standard/standard_types
import ais_types





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



proc newAIS_Selection*(): AIS_Selection {.cdecl, constructor,
                                       importcpp: "AIS_Selection(@)",
                                       header: "AIS_Selection.hxx".}
proc clear*(this: var AIS_Selection) {.cdecl, importcpp: "Clear", header: "AIS_Selection.hxx".}
proc select*(this: var AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): AIS_SelectStatus {.
    cdecl, importcpp: "Select", header: "AIS_Selection.hxx".}
proc addSelect*(this: var AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): AIS_SelectStatus {.
    cdecl, importcpp: "AddSelect", header: "AIS_Selection.hxx".}
proc clearAndSelect*(this: var AIS_Selection;
                    theObject: Handle[SelectMgrEntityOwner]) {.cdecl,
    importcpp: "ClearAndSelect", header: "AIS_Selection.hxx".}
proc isSelected*(this: AIS_Selection; theObject: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, cdecl, importcpp: "IsSelected", header: "AIS_Selection.hxx".}
proc objects*(this: AIS_Selection): AIS_NListOfEntityOwner {.noSideEffect, cdecl,
    importcpp: "Objects", header: "AIS_Selection.hxx".}
proc extent*(this: AIS_Selection): cint {.noSideEffect, cdecl, importcpp: "Extent",
                                      header: "AIS_Selection.hxx".}
proc isEmpty*(this: AIS_Selection): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                       header: "AIS_Selection.hxx".}
proc init*(this: var AIS_Selection) {.cdecl, importcpp: "Init", header: "AIS_Selection.hxx".}
proc more*(this: AIS_Selection): bool {.noSideEffect, cdecl, importcpp: "More",
                                    header: "AIS_Selection.hxx".}
proc next*(this: var AIS_Selection) {.cdecl, importcpp: "Next", header: "AIS_Selection.hxx".}
proc value*(this: AIS_Selection): Handle[SelectMgrEntityOwner] {.noSideEffect, cdecl,
    importcpp: "Value", header: "AIS_Selection.hxx".}




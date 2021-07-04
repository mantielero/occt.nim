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

import
  AIS_NListOfEntityOwner, AIS_SelectStatus, ../Standard/Standard,
  ../Standard/Standard_Type

## ! Class holding the list of selected owners.

type
  AIS_Selection* {.importcpp: "AIS_Selection", header: "AIS_Selection.hxx", bycopy.} = object of Standard_Transient ##
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

  AIS_Selectionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "AIS_Selection::get_type_name(@)",
                              header: "AIS_Selection.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Selection::get_type_descriptor(@)",
    header: "AIS_Selection.hxx".}
proc DynamicType*(this: AIS_Selection): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Selection.hxx".}
proc constructAIS_Selection*(): AIS_Selection {.constructor,
    importcpp: "AIS_Selection(@)", header: "AIS_Selection.hxx".}
proc Clear*(this: var AIS_Selection) {.importcpp: "Clear", header: "AIS_Selection.hxx".}
proc Select*(this: var AIS_Selection; theObject: handle[SelectMgr_EntityOwner]): AIS_SelectStatus {.
    importcpp: "Select", header: "AIS_Selection.hxx".}
proc AddSelect*(this: var AIS_Selection; theObject: handle[SelectMgr_EntityOwner]): AIS_SelectStatus {.
    importcpp: "AddSelect", header: "AIS_Selection.hxx".}
proc ClearAndSelect*(this: var AIS_Selection;
                    theObject: handle[SelectMgr_EntityOwner]) {.
    importcpp: "ClearAndSelect", header: "AIS_Selection.hxx".}
proc IsSelected*(this: AIS_Selection; theObject: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSelected", header: "AIS_Selection.hxx".}
proc Objects*(this: AIS_Selection): AIS_NListOfEntityOwner {.noSideEffect,
    importcpp: "Objects", header: "AIS_Selection.hxx".}
proc Extent*(this: AIS_Selection): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "AIS_Selection.hxx".}
proc IsEmpty*(this: AIS_Selection): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "AIS_Selection.hxx".}
proc Init*(this: var AIS_Selection) {.importcpp: "Init", header: "AIS_Selection.hxx".}
proc More*(this: AIS_Selection): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "AIS_Selection.hxx".}
proc Next*(this: var AIS_Selection) {.importcpp: "Next", header: "AIS_Selection.hxx".}
proc Value*(this: AIS_Selection): handle[SelectMgr_EntityOwner] {.noSideEffect,
    importcpp: "Value", header: "AIS_Selection.hxx".}
discard "forward decl of AIS_Selection"
type
  Handle_AIS_Selection* = handle[AIS_Selection]

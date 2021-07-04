##  Created on: 2004-11-23
##  Created by: Pavel DURANDIN
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  TObj_Common, TObj_Container, ../TDF/TDF_Attribute

discard "forward decl of TObj_TNameContainer"
type
  TObj_TNameContainer* {.importcpp: "TObj_TNameContainer",
                        header: "TObj_TNameContainer.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                       ## !
                                                                                       ## Standard
                                                                                       ## methods
                                                                                       ## of
                                                                                       ## OCAF
                                                                                       ## attribute
                                                                                       ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor
                                                                                       ##
                                                                                       ## !
                                                                                       ## Method
                                                                                       ## for
                                                                                       ## create
                                                                                       ## TObj_TNameContainer
                                                                                       ## object
                                                                                       ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## TObj_DataMapOfNameLabel
                                                                                       ## attribute
                                                                                       ## on
                                                                                       ## given
                                                                                       ## label
                                                                                       ## if
                                                                                       ## not
                                                                                       ## exist
                                                                                       ##
                                                                                       ## !
                                                                                       ## Methods
                                                                                       ## for
                                                                                       ## adding
                                                                                       ## and
                                                                                       ## removing
                                                                                       ## names
                                                                                       ##
                                                                                       ## !
                                                                                       ## Records
                                                                                       ## name
                                                                                       ## with
                                                                                       ## label
                                                                                       ## attached
                                                                                       ##
                                                                                       ## !
                                                                                       ## Methods
                                                                                       ## for
                                                                                       ## setting
                                                                                       ## and
                                                                                       ## obtaining
                                                                                       ## TObj_TNameContainer
                                                                                       ##
                                                                                       ## !
                                                                                       ## Sets
                                                                                       ## the
                                                                                       ## TObj_DataMapOfNameLabel
                                                                                       ## object
                                                                                       ##
                                                                                       ## !
                                                                                       ## Redefined
                                                                                       ## OCAF
                                                                                       ## abstract
                                                                                       ## methods
                                                                                       ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## an
                                                                                       ## new
                                                                                       ## empty
                                                                                       ## TObj_TNameContainer
                                                                                       ## attribute.
                                                                                       ## It
                                                                                       ## is
                                                                                       ## used
                                                                                       ## by
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## copy
                                                                                       ## algorithm.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Fields
                                                                                       ##
                                                                                       ## !
                                                                                       ## CASCADE
                                                                                       ## RTTI
    ## !< The map of the names


proc constructTObj_TNameContainer*(): TObj_TNameContainer {.constructor,
    importcpp: "TObj_TNameContainer(@)", header: "TObj_TNameContainer.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TNameContainer::GetID(@)",
                            header: "TObj_TNameContainer.hxx".}
proc ID*(this: TObj_TNameContainer): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TNameContainer.hxx".}
proc Set*(theLabel: TDF_Label): handle[TObj_TNameContainer] {.
    importcpp: "TObj_TNameContainer::Set(@)", header: "TObj_TNameContainer.hxx".}
proc RecordName*(this: var TObj_TNameContainer;
                theName: handle[TCollection_HExtendedString]; theLabel: TDF_Label) {.
    importcpp: "RecordName", header: "TObj_TNameContainer.hxx".}
proc RemoveName*(this: var TObj_TNameContainer;
                theName: handle[TCollection_HExtendedString]) {.
    importcpp: "RemoveName", header: "TObj_TNameContainer.hxx".}
proc IsRegistered*(this: TObj_TNameContainer;
                  theName: handle[TCollection_HExtendedString]): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegistered", header: "TObj_TNameContainer.hxx".}
proc Clear*(this: var TObj_TNameContainer) {.importcpp: "Clear",
    header: "TObj_TNameContainer.hxx".}
proc Set*(this: var TObj_TNameContainer; theElem: TObj_DataMapOfNameLabel) {.
    importcpp: "Set", header: "TObj_TNameContainer.hxx".}
proc Get*(this: TObj_TNameContainer): TObj_DataMapOfNameLabel {.noSideEffect,
    importcpp: "Get", header: "TObj_TNameContainer.hxx".}
proc NewEmpty*(this: TObj_TNameContainer): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TNameContainer.hxx".}
proc Restore*(this: var TObj_TNameContainer; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TNameContainer.hxx".}
proc Paste*(this: TObj_TNameContainer; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TNameContainer.hxx".}
type
  TObj_TNameContainerbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TNameContainer::get_type_name(@)",
                              header: "TObj_TNameContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TNameContainer::get_type_descriptor(@)",
    header: "TObj_TNameContainer.hxx".}
proc DynamicType*(this: TObj_TNameContainer): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TNameContainer.hxx".}
## ! Define handle class for TObj_TObject

discard "forward decl of TObj_TNameContainer"
type
  Handle_TObj_TNameContainer* = handle[TObj_TNameContainer]

when defined(_MSC_VER):
  discard
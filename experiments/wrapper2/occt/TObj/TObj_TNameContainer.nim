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

discard "forward decl of TObj_TNameContainer"
type
  TObjTNameContainer* {.importcpp: "TObj_TNameContainer",
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


proc constructTObjTNameContainer*(): TObjTNameContainer {.constructor,
    importcpp: "TObj_TNameContainer(@)", header: "TObj_TNameContainer.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TNameContainer::GetID(@)",
                           header: "TObj_TNameContainer.hxx".}
proc id*(this: TObjTNameContainer): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TNameContainer.hxx".}
proc set*(theLabel: TDF_Label): Handle[TObjTNameContainer] {.
    importcpp: "TObj_TNameContainer::Set(@)", header: "TObj_TNameContainer.hxx".}
proc recordName*(this: var TObjTNameContainer;
                theName: Handle[TCollectionHExtendedString]; theLabel: TDF_Label) {.
    importcpp: "RecordName", header: "TObj_TNameContainer.hxx".}
proc removeName*(this: var TObjTNameContainer;
                theName: Handle[TCollectionHExtendedString]) {.
    importcpp: "RemoveName", header: "TObj_TNameContainer.hxx".}
proc isRegistered*(this: TObjTNameContainer;
                  theName: Handle[TCollectionHExtendedString]): bool {.
    noSideEffect, importcpp: "IsRegistered", header: "TObj_TNameContainer.hxx".}
proc clear*(this: var TObjTNameContainer) {.importcpp: "Clear",
                                        header: "TObj_TNameContainer.hxx".}
proc set*(this: var TObjTNameContainer; theElem: TObjDataMapOfNameLabel) {.
    importcpp: "Set", header: "TObj_TNameContainer.hxx".}
proc get*(this: TObjTNameContainer): TObjDataMapOfNameLabel {.noSideEffect,
    importcpp: "Get", header: "TObj_TNameContainer.hxx".}
proc newEmpty*(this: TObjTNameContainer): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TNameContainer.hxx".}
proc restore*(this: var TObjTNameContainer; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TNameContainer.hxx".}
proc paste*(this: TObjTNameContainer; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TNameContainer.hxx".}
type
  TObjTNameContainerbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TNameContainer::get_type_name(@)",
                            header: "TObj_TNameContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TNameContainer::get_type_descriptor(@)",
    header: "TObj_TNameContainer.hxx".}
proc dynamicType*(this: TObjTNameContainer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TNameContainer.hxx".}
## ! Define handle class for TObj_TObject

discard "forward decl of TObj_TNameContainer"
type
  HandleC1C1* = Handle[TObjTNameContainer]

# when defined(_MSC_VER):
#   discard


























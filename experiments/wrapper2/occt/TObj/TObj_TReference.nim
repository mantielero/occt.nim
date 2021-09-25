##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
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

discard "forward decl of TObj_Object"
discard "forward decl of Standard_GUID"
type
  TObjTReference* {.importcpp: "TObj_TReference", header: "TObj_TReference.hxx",
                   bycopy.} = object of TDF_Attribute ## ! Standard methods of OCAF attribute
                                                 ## ! Empty constructor
                                                 ## ! Method for create TObj_TReference object
                                                 ## ! Creates reference on TDF_Label <theLabel> to the object <theObject> and
                                                 ## ! creates backreference from the object <theObject> to <theMaster> one.
                                                 ## ! Methods for setting and obtaining referenced object
                                                 ## ! Sets the reference to the theObject
                                                 ## ! Redefined OCAF abstract methods
                                                 ## ! Returns an new empty TObj_TReference attribute. It is used by the
                                                 ## ! copy algorithm.
                                                 ## ! Fields
                                                 ## ! CASCADE RTTI
    ## !< Label that indicate referenced object
    ## !< Label of object that have this reference.


proc constructTObjTReference*(): TObjTReference {.constructor,
    importcpp: "TObj_TReference(@)", header: "TObj_TReference.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TReference::GetID(@)",
                           header: "TObj_TReference.hxx".}
proc id*(this: TObjTReference): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TReference.hxx".}
proc set*(theLabel: TDF_Label; theObject: Handle[TObjObject];
         theMaster: Handle[TObjObject]): Handle[TObjTReference] {.
    importcpp: "TObj_TReference::Set(@)", header: "TObj_TReference.hxx".}
proc set*(this: var TObjTReference; theObject: Handle[TObjObject];
         theMasterLabel: TDF_Label) {.importcpp: "Set",
                                    header: "TObj_TReference.hxx".}
proc set*(this: var TObjTReference; theLabel: TDF_Label; theMasterLabel: TDF_Label) {.
    importcpp: "Set", header: "TObj_TReference.hxx".}
proc get*(this: TObjTReference): Handle[TObjObject] {.noSideEffect, importcpp: "Get",
    header: "TObj_TReference.hxx".}
proc getMasterLabel*(this: TObjTReference): TDF_Label {.noSideEffect,
    importcpp: "GetMasterLabel", header: "TObj_TReference.hxx".}
proc getLabel*(this: TObjTReference): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "TObj_TReference.hxx".}
proc newEmpty*(this: TObjTReference): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TReference.hxx".}
proc restore*(this: var TObjTReference; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TReference.hxx".}
proc paste*(this: TObjTReference; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TReference.hxx".}
proc beforeForget*(this: var TObjTReference) {.importcpp: "BeforeForget",
    header: "TObj_TReference.hxx".}
proc beforeUndo*(this: var TObjTReference; theDelta: Handle[TDF_AttributeDelta];
                isForced: bool = false): bool {.importcpp: "BeforeUndo",
    header: "TObj_TReference.hxx".}
proc afterUndo*(this: var TObjTReference; theDelta: Handle[TDF_AttributeDelta];
               isForced: bool = false): bool {.importcpp: "AfterUndo",
    header: "TObj_TReference.hxx".}
proc afterResume*(this: var TObjTReference) {.importcpp: "AfterResume",
    header: "TObj_TReference.hxx".}
proc afterRetrieval*(this: var TObjTReference; forceIt: bool = false): bool {.
    importcpp: "AfterRetrieval", header: "TObj_TReference.hxx".}
type
  TObjTReferencebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TReference::get_type_name(@)",
                            header: "TObj_TReference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TReference::get_type_descriptor(@)",
    header: "TObj_TReference.hxx".}
proc dynamicType*(this: TObjTReference): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TReference.hxx".}
## ! Define handle class for TObj_TReference

discard "forward decl of TObj_TReference"
type
  HandleTObjTReference* = Handle[TObjTReference]

# when defined(_MSC_VER):
#   discard

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

import
  TObj_Common, ../TDF/TDF_Attribute, ../TDF/TDF_Label

discard "forward decl of TObj_Object"
discard "forward decl of Standard_GUID"
type
  TObj_TReference* {.importcpp: "TObj_TReference", header: "TObj_TReference.hxx",
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


proc constructTObj_TReference*(): TObj_TReference {.constructor,
    importcpp: "TObj_TReference(@)", header: "TObj_TReference.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TReference::GetID(@)",
                            header: "TObj_TReference.hxx".}
proc ID*(this: TObj_TReference): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TReference.hxx".}
proc Set*(theLabel: TDF_Label; theObject: handle[TObj_Object];
         theMaster: handle[TObj_Object]): handle[TObj_TReference] {.
    importcpp: "TObj_TReference::Set(@)", header: "TObj_TReference.hxx".}
proc Set*(this: var TObj_TReference; theObject: handle[TObj_Object];
         theMasterLabel: TDF_Label) {.importcpp: "Set",
                                    header: "TObj_TReference.hxx".}
proc Set*(this: var TObj_TReference; theLabel: TDF_Label; theMasterLabel: TDF_Label) {.
    importcpp: "Set", header: "TObj_TReference.hxx".}
proc Get*(this: TObj_TReference): handle[TObj_Object] {.noSideEffect,
    importcpp: "Get", header: "TObj_TReference.hxx".}
proc GetMasterLabel*(this: TObj_TReference): TDF_Label {.noSideEffect,
    importcpp: "GetMasterLabel", header: "TObj_TReference.hxx".}
proc GetLabel*(this: TObj_TReference): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "TObj_TReference.hxx".}
proc NewEmpty*(this: TObj_TReference): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TReference.hxx".}
proc Restore*(this: var TObj_TReference; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TReference.hxx".}
proc Paste*(this: TObj_TReference; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TReference.hxx".}
proc BeforeForget*(this: var TObj_TReference) {.importcpp: "BeforeForget",
    header: "TObj_TReference.hxx".}
proc BeforeUndo*(this: var TObj_TReference; theDelta: handle[TDF_AttributeDelta];
                isForced: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TObj_TReference.hxx".}
proc AfterUndo*(this: var TObj_TReference; theDelta: handle[TDF_AttributeDelta];
               isForced: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TObj_TReference.hxx".}
proc AfterResume*(this: var TObj_TReference) {.importcpp: "AfterResume",
    header: "TObj_TReference.hxx".}
proc AfterRetrieval*(this: var TObj_TReference;
                    forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterRetrieval", header: "TObj_TReference.hxx".}
type
  TObj_TReferencebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TReference::get_type_name(@)",
                              header: "TObj_TReference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TReference::get_type_descriptor(@)",
    header: "TObj_TReference.hxx".}
proc DynamicType*(this: TObj_TReference): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TReference.hxx".}
## ! Define handle class for TObj_TReference

discard "forward decl of TObj_TReference"
type
  Handle_TObj_TReference* = handle[TObj_TReference]

when defined(_MSC_VER):
  discard
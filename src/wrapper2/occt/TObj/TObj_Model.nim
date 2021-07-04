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
  ../Message/Message_Messenger, ../TDF/TDF_Label, TObj_Partition,
  ../TCollection/TCollection_ExtendedString

discard "forward decl of TObj_TNameContainer"
discard "forward decl of TObj_Partition"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TDocStd_Document"
discard "forward decl of TObj_CheckModel"
discard "forward decl of TObj_Application"
discard "forward decl of TObj_Model"
discard "forward decl of TObj_Model"
type
  Handle_TObj_Model* = handle[TObj_Model]

## *
##  Base class for OCAF based models.
##  Defines common behaviour for all models based on TObject
##  classes, basic services to access model objects and common
##  operations with the model.
##  Provides default implementation for many methods.
##

type
  TObj_Model* {.importcpp: "TObj_Model", header: "TObj_Model.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                 ## !
                                                                                                 ## Model
                                                                                                 ## may
                                                                                                 ## store
                                                                                                 ## some
                                                                                                 ## data
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## data
                                                                                                 ## labels
                                                                                                 ## of
                                                                                                 ## its
                                                                                                 ## main
                                                                                                 ## partition
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## See
                                                                                                 ## TObj_Object
                                                                                                 ## for
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Constructors
                                                                                                 ## and
                                                                                                 ## Persistence
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Messages
                                                                                                 ## mechanism
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Set
                                                                                                 ## messenger
                                                                                                 ## to
                                                                                                 ## use
                                                                                                 ## for
                                                                                                 ## messages
                                                                                                 ## output
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Implementation
                                                                                                 ## of
                                                                                                 ## Load/Save
                                                                                                 ## for
                                                                                                 ## OCAF
                                                                                                 ## based
                                                                                                 ## models
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Load
                                                                                                 ## the
                                                                                                 ## OCAF
                                                                                                 ## model
                                                                                                 ## from
                                                                                                 ## a
                                                                                                 ## file.
                                                                                                 ## If
                                                                                                 ## the
                                                                                                 ## filename
                                                                                                 ## is
                                                                                                 ## empty
                                                                                                 ## or
                                                                                                 ## file
                                                                                                 ## does
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## not
                                                                                                 ## exists,
                                                                                                 ## it
                                                                                                 ## just
                                                                                                 ## initializes
                                                                                                 ## model
                                                                                                 ## by
                                                                                                 ## empty
                                                                                                 ## data.
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Work
                                                                                                 ## with
                                                                                                 ## document
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Close
                                                                                                 ## the
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Access
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## objects
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## an
                                                                                                 ## Iterator
                                                                                                 ## on
                                                                                                 ## all
                                                                                                 ## objects
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## Model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## iteration
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## root
                                                                                                 ## object
                                                                                                 ## of
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## OCAF
                                                                                                 ## methods
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## OCAF
                                                                                                 ## label
                                                                                                 ## on
                                                                                                 ## which
                                                                                                 ## model
                                                                                                 ## data
                                                                                                 ## are
                                                                                                 ## stored.
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## supporting
                                                                                                 ## unique
                                                                                                 ## naming
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## objects
                                                                                                 ## in
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## name
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## API
                                                                                                 ## for
                                                                                                 ## transaction
                                                                                                 ## mechanism
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## True
                                                                                                 ## if
                                                                                                 ## a
                                                                                                 ## Command
                                                                                                 ## transaction
                                                                                                 ## is
                                                                                                 ## open
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Starting,
                                                                                                 ## finishing
                                                                                                 ## the
                                                                                                 ## transaction
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## obtaining
                                                                                                 ## application
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## handle
                                                                                                 ## to
                                                                                                 ## static
                                                                                                 ## instance
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## relevant
                                                                                                 ## application
                                                                                                 ## class
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## obtaining
                                                                                                 ## the
                                                                                                 ## version
                                                                                                 ## of
                                                                                                 ## Format
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## format
                                                                                                 ## for
                                                                                                 ## save/restore.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## implementation
                                                                                                 ## returns
                                                                                                 ## "BinOcaf".
                                                                                                 ## The
                                                                                                 ## method
                                                                                                 ## should
                                                                                                 ## be
                                                                                                 ## redefined
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## for
                                                                                                 ## those
                                                                                                 ## models
                                                                                                 ## that
                                                                                                 ## should
                                                                                                 ## use
                                                                                                 ## another
                                                                                                 ## format.
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## handling
                                                                                                 ## the
                                                                                                 ## version
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## Format
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## format
                                                                                                 ## version
                                                                                                 ## to
                                                                                                 ## save
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## updating
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## this
                                                                                                 ## method
                                                                                                 ## is
                                                                                                 ## called
                                                                                                 ## before
                                                                                                 ## activating
                                                                                                 ## this
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Definition
                                                                                                 ## of
                                                                                                 ## interface
                                                                                                 ## GUID
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Defines
                                                                                                 ## interface
                                                                                                 ## GUID
                                                                                                 ## for
                                                                                                 ## TObj_Model
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Internal
                                                                                                 ## methods
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## map
                                                                                                 ## of
                                                                                                 ## names
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## objects
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Internal
                                                                                                 ## methods
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## (or
                                                                                                 ## creates
                                                                                                 ## a
                                                                                                 ## new)
                                                                                                 ## partition
                                                                                                 ## on
                                                                                                 ## a
                                                                                                 ## given
                                                                                                 ## label
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## OCAF
                                                                                                 ## document
                                                                                                 ## of
                                                                                                 ## Model
                                                                                                 ##
                                                                                                 ## all
                                                                                                 ## that
                                                                                                 ## labels
                                                                                                 ## is
                                                                                                 ## sublabels
                                                                                                 ## of
                                                                                                 ## main
                                                                                                 ## partition
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## labels
                                                                                                 ## under
                                                                                                 ## which
                                                                                                 ## the
                                                                                                 ## data
                                                                                                 ## is
                                                                                                 ## stored.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## data
                                                                                                 ## stored
                                                                                                 ## from
                                                                                                 ## the
                                                                                                 ## third
                                                                                                 ## sublabel
                                                                                                 ## of
                                                                                                 ## this
                                                                                                 ## one.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## OCAF
                                                                                                 ## label
                                                                                                 ## on
                                                                                                 ## which
                                                                                                 ## model
                                                                                                 ## data
                                                                                                 ## are
                                                                                                 ## stored.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Used
                                                                                                 ## by
                                                                                                 ## persistence
                                                                                                 ## mechanism.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Do
                                                                                                 ## the
                                                                                                 ## necessary
                                                                                                 ## initialisations
                                                                                                 ## after
                                                                                                 ## creation
                                                                                                 ## of
                                                                                                 ## a
                                                                                                 ## new
                                                                                                 ## model.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## function
                                                                                                 ## is
                                                                                                 ## called
                                                                                                 ## by
                                                                                                 ## LoadModel
                                                                                                 ## after
                                                                                                 ## creation
                                                                                                 ## of
                                                                                                 ## OCAF
                                                                                                 ## document
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## and
                                                                                                 ## setting
                                                                                                 ## myModel
                                                                                                 ## on
                                                                                                 ## its
                                                                                                 ## main
                                                                                                 ## label.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Default
                                                                                                 ## implementation
                                                                                                 ## does
                                                                                                 ## nothing.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## True
                                                                                                 ## is
                                                                                                 ## model
                                                                                                 ## sucsesfully
                                                                                                 ## initialized
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Methods
                                                                                                 ## for
                                                                                                 ## clone
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Pastes
                                                                                                 ## me
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## new
                                                                                                 ## model
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## references
                                                                                                 ## will
                                                                                                 ## not
                                                                                                 ## be
                                                                                                 ## copied
                                                                                                 ## if
                                                                                                 ## theRelocTable
                                                                                                 ## is
                                                                                                 ## not
                                                                                                 ## 0
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## if
                                                                                                 ## theRelocTable
                                                                                                 ## is
                                                                                                 ## not
                                                                                                 ## NULL
                                                                                                 ## theRelocTable
                                                                                                 ## is
                                                                                                 ## filled
                                                                                                 ## by
                                                                                                 ## objects
                                                                                                 ##
                                                                                                 ## *
                                                                                                 ##
                                                                                                 ## Fields
                                                                                                 ##
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## CASCADE
                                                                                                 ## RTTI
    ## !< Root label of the model in OCAF document
    ## !< Messenger object


proc SetMessenger*(this: var TObj_Model; theMsgr: handle[Message_Messenger]) {.
    importcpp: "SetMessenger", header: "TObj_Model.hxx".}
proc Messenger*(this: TObj_Model): handle[Message_Messenger] {.noSideEffect,
    importcpp: "Messenger", header: "TObj_Model.hxx".}
proc Load*(this: var TObj_Model; theFile: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "Load", header: "TObj_Model.hxx".}
proc SaveAs*(this: var TObj_Model; theFile: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "SaveAs", header: "TObj_Model.hxx".}
proc Save*(this: var TObj_Model): Standard_Boolean {.importcpp: "Save",
    header: "TObj_Model.hxx".}
proc Close*(this: var TObj_Model): Standard_Boolean {.importcpp: "Close",
    header: "TObj_Model.hxx".}
proc CloseDocument*(this: var TObj_Model; theDoc: handle[TDocStd_Document]) {.
    importcpp: "CloseDocument", header: "TObj_Model.hxx".}
proc GetDocumentModel*(theLabel: TDF_Label): handle[TObj_Model] {.
    importcpp: "TObj_Model::GetDocumentModel(@)", header: "TObj_Model.hxx".}
proc GetFile*(this: TObj_Model): handle[TCollection_HExtendedString] {.noSideEffect,
    importcpp: "GetFile", header: "TObj_Model.hxx".}
proc GetObjects*(this: TObj_Model): handle[TObj_ObjectIterator] {.noSideEffect,
    importcpp: "GetObjects", header: "TObj_Model.hxx".}
proc GetChildren*(this: TObj_Model): handle[TObj_ObjectIterator] {.noSideEffect,
    importcpp: "GetChildren", header: "TObj_Model.hxx".}
proc FindObject*(this: TObj_Model; theName: handle[TCollection_HExtendedString];
                theDictionary: handle[TObj_TNameContainer]): handle[TObj_Object] {.
    noSideEffect, importcpp: "FindObject", header: "TObj_Model.hxx".}
proc GetChecker*(this: TObj_Model): handle[TObj_CheckModel] {.noSideEffect,
    importcpp: "GetChecker", header: "TObj_Model.hxx".}
proc GetRoot*(this: TObj_Model): handle[TObj_Object] {.noSideEffect,
    importcpp: "GetRoot", header: "TObj_Model.hxx".}
proc GetMainPartition*(this: TObj_Model): handle[TObj_Partition] {.noSideEffect,
    importcpp: "GetMainPartition", header: "TObj_Model.hxx".}
proc GetLabel*(this: TObj_Model): TDF_Label {.noSideEffect, importcpp: "GetLabel",
    header: "TObj_Model.hxx".}
proc GetModelName*(this: TObj_Model): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "GetModelName", header: "TObj_Model.hxx".}
proc SetNewName*(theObject: handle[TObj_Object]) {.
    importcpp: "TObj_Model::SetNewName(@)", header: "TObj_Model.hxx".}
proc IsRegisteredName*(this: TObj_Model;
                      theName: handle[TCollection_HExtendedString];
                      theDictionary: handle[TObj_TNameContainer]): Standard_Boolean {.
    noSideEffect, importcpp: "IsRegisteredName", header: "TObj_Model.hxx".}
proc RegisterName*(this: TObj_Model; theName: handle[TCollection_HExtendedString];
                  theLabel: TDF_Label; theDictionary: handle[TObj_TNameContainer]) {.
    noSideEffect, importcpp: "RegisterName", header: "TObj_Model.hxx".}
proc UnRegisterName*(this: TObj_Model;
                    theName: handle[TCollection_HExtendedString];
                    theDictionary: handle[TObj_TNameContainer]) {.noSideEffect,
    importcpp: "UnRegisterName", header: "TObj_Model.hxx".}
proc HasOpenCommand*(this: TObj_Model): Standard_Boolean {.noSideEffect,
    importcpp: "HasOpenCommand", header: "TObj_Model.hxx".}
proc OpenCommand*(this: TObj_Model) {.noSideEffect, importcpp: "OpenCommand",
                                   header: "TObj_Model.hxx".}
proc CommitCommand*(this: TObj_Model) {.noSideEffect, importcpp: "CommitCommand",
                                     header: "TObj_Model.hxx".}
proc AbortCommand*(this: TObj_Model) {.noSideEffect, importcpp: "AbortCommand",
                                    header: "TObj_Model.hxx".}
proc IsModified*(this: TObj_Model): Standard_Boolean {.noSideEffect,
    importcpp: "IsModified", header: "TObj_Model.hxx".}
proc SetModified*(this: var TObj_Model; theModified: Standard_Boolean) {.
    importcpp: "SetModified", header: "TObj_Model.hxx".}
proc GetApplication*(this: var TObj_Model): handle[TObj_Application] {.
    importcpp: "GetApplication", header: "TObj_Model.hxx".}
proc GetFormat*(this: TObj_Model): TCollection_ExtendedString {.noSideEffect,
    importcpp: "GetFormat", header: "TObj_Model.hxx".}
proc GetFormatVersion*(this: TObj_Model): Standard_Integer {.noSideEffect,
    importcpp: "GetFormatVersion", header: "TObj_Model.hxx".}
proc Update*(this: var TObj_Model): Standard_Boolean {.importcpp: "Update",
    header: "TObj_Model.hxx".}
proc GetGUID*(this: TObj_Model): Standard_GUID {.noSideEffect, importcpp: "GetGUID",
    header: "TObj_Model.hxx".}
proc GetDictionary*(this: TObj_Model): handle[TObj_TNameContainer] {.noSideEffect,
    importcpp: "GetDictionary", header: "TObj_Model.hxx".}
proc GetDocument*(this: TObj_Model): handle[TDocStd_Document] {.noSideEffect,
    importcpp: "GetDocument", header: "TObj_Model.hxx".}
proc SetLabel*(this: var TObj_Model; theLabel: TDF_Label) {.importcpp: "SetLabel",
    header: "TObj_Model.hxx".}
proc Paste*(this: var TObj_Model; theModel: handle[TObj_Model];
           theRelocTable: handle[TDF_RelocationTable] = 0): Standard_Boolean {.
    importcpp: "Paste", header: "TObj_Model.hxx".}
proc NewEmpty*(this: var TObj_Model): handle[TObj_Model] {.importcpp: "NewEmpty",
    header: "TObj_Model.hxx".}
proc CopyReferences*(this: var TObj_Model; theTarget: handle[TObj_Model];
                    theRelocTable: handle[TDF_RelocationTable]) {.
    importcpp: "CopyReferences", header: "TObj_Model.hxx".}
type
  TObj_Modelbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TObj_Model::get_type_name(@)",
                              header: "TObj_Model.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_Model::get_type_descriptor(@)", header: "TObj_Model.hxx".}
proc DynamicType*(this: TObj_Model): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Model.hxx".}
## ! The Model Handle is defined in a separate header file

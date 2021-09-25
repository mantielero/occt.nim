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

discard "forward decl of TObj_TNameContainer"
discard "forward decl of TObj_Partition"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TDocStd_Document"
discard "forward decl of TObj_CheckModel"
discard "forward decl of TObj_Application"
discard "forward decl of TObj_Model"
discard "forward decl of TObj_Model"
type
  HandleTObjModel* = Handle[TObjModel]

## *
##  Base class for OCAF based models.
##  Defines common behaviour for all models based on TObject
##  classes, basic services to access model objects and common
##  operations with the model.
##  Provides default implementation for many methods.
##

type
  TObjModel* {.importcpp: "TObj_Model", header: "TObj_Model.hxx", bycopy.} = object of StandardTransient ##
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


proc setMessenger*(this: var TObjModel; theMsgr: Handle[MessageMessenger]) {.
    importcpp: "SetMessenger", header: "TObj_Model.hxx".}
proc messenger*(this: TObjModel): Handle[MessageMessenger] {.noSideEffect,
    importcpp: "Messenger", header: "TObj_Model.hxx".}
proc load*(this: var TObjModel; theFile: TCollectionExtendedString): bool {.
    importcpp: "Load", header: "TObj_Model.hxx".}
proc saveAs*(this: var TObjModel; theFile: TCollectionExtendedString): bool {.
    importcpp: "SaveAs", header: "TObj_Model.hxx".}
proc save*(this: var TObjModel): bool {.importcpp: "Save", header: "TObj_Model.hxx".}
proc close*(this: var TObjModel): bool {.importcpp: "Close", header: "TObj_Model.hxx".}
proc closeDocument*(this: var TObjModel; theDoc: Handle[TDocStdDocument]) {.
    importcpp: "CloseDocument", header: "TObj_Model.hxx".}
proc getDocumentModel*(theLabel: TDF_Label): Handle[TObjModel] {.
    importcpp: "TObj_Model::GetDocumentModel(@)", header: "TObj_Model.hxx".}
proc getFile*(this: TObjModel): Handle[TCollectionHExtendedString] {.noSideEffect,
    importcpp: "GetFile", header: "TObj_Model.hxx".}
proc getObjects*(this: TObjModel): Handle[TObjObjectIterator] {.noSideEffect,
    importcpp: "GetObjects", header: "TObj_Model.hxx".}
proc getChildren*(this: TObjModel): Handle[TObjObjectIterator] {.noSideEffect,
    importcpp: "GetChildren", header: "TObj_Model.hxx".}
proc findObject*(this: TObjModel; theName: Handle[TCollectionHExtendedString];
                theDictionary: Handle[TObjTNameContainer]): Handle[TObjObject] {.
    noSideEffect, importcpp: "FindObject", header: "TObj_Model.hxx".}
proc getChecker*(this: TObjModel): Handle[TObjCheckModel] {.noSideEffect,
    importcpp: "GetChecker", header: "TObj_Model.hxx".}
proc getRoot*(this: TObjModel): Handle[TObjObject] {.noSideEffect,
    importcpp: "GetRoot", header: "TObj_Model.hxx".}
proc getMainPartition*(this: TObjModel): Handle[TObjPartition] {.noSideEffect,
    importcpp: "GetMainPartition", header: "TObj_Model.hxx".}
proc getLabel*(this: TObjModel): TDF_Label {.noSideEffect, importcpp: "GetLabel",
    header: "TObj_Model.hxx".}
proc getModelName*(this: TObjModel): Handle[TCollectionHExtendedString] {.
    noSideEffect, importcpp: "GetModelName", header: "TObj_Model.hxx".}
proc setNewName*(theObject: Handle[TObjObject]) {.
    importcpp: "TObj_Model::SetNewName(@)", header: "TObj_Model.hxx".}
proc isRegisteredName*(this: TObjModel;
                      theName: Handle[TCollectionHExtendedString];
                      theDictionary: Handle[TObjTNameContainer]): bool {.
    noSideEffect, importcpp: "IsRegisteredName", header: "TObj_Model.hxx".}
proc registerName*(this: TObjModel; theName: Handle[TCollectionHExtendedString];
                  theLabel: TDF_Label; theDictionary: Handle[TObjTNameContainer]) {.
    noSideEffect, importcpp: "RegisterName", header: "TObj_Model.hxx".}
proc unRegisterName*(this: TObjModel; theName: Handle[TCollectionHExtendedString];
                    theDictionary: Handle[TObjTNameContainer]) {.noSideEffect,
    importcpp: "UnRegisterName", header: "TObj_Model.hxx".}
proc hasOpenCommand*(this: TObjModel): bool {.noSideEffect,
    importcpp: "HasOpenCommand", header: "TObj_Model.hxx".}
proc openCommand*(this: TObjModel) {.noSideEffect, importcpp: "OpenCommand",
                                  header: "TObj_Model.hxx".}
proc commitCommand*(this: TObjModel) {.noSideEffect, importcpp: "CommitCommand",
                                    header: "TObj_Model.hxx".}
proc abortCommand*(this: TObjModel) {.noSideEffect, importcpp: "AbortCommand",
                                   header: "TObj_Model.hxx".}
proc isModified*(this: TObjModel): bool {.noSideEffect, importcpp: "IsModified",
                                      header: "TObj_Model.hxx".}
proc setModified*(this: var TObjModel; theModified: bool) {.importcpp: "SetModified",
    header: "TObj_Model.hxx".}
proc getApplication*(this: var TObjModel): Handle[TObjApplication] {.
    importcpp: "GetApplication", header: "TObj_Model.hxx".}
proc getFormat*(this: TObjModel): TCollectionExtendedString {.noSideEffect,
    importcpp: "GetFormat", header: "TObj_Model.hxx".}
proc getFormatVersion*(this: TObjModel): int {.noSideEffect,
    importcpp: "GetFormatVersion", header: "TObj_Model.hxx".}
proc update*(this: var TObjModel): bool {.importcpp: "Update", header: "TObj_Model.hxx".}
proc getGUID*(this: TObjModel): StandardGUID {.noSideEffect, importcpp: "GetGUID",
    header: "TObj_Model.hxx".}
proc getDictionary*(this: TObjModel): Handle[TObjTNameContainer] {.noSideEffect,
    importcpp: "GetDictionary", header: "TObj_Model.hxx".}
proc getDocument*(this: TObjModel): Handle[TDocStdDocument] {.noSideEffect,
    importcpp: "GetDocument", header: "TObj_Model.hxx".}
proc setLabel*(this: var TObjModel; theLabel: TDF_Label) {.importcpp: "SetLabel",
    header: "TObj_Model.hxx".}
proc paste*(this: var TObjModel; theModel: Handle[TObjModel];
           theRelocTable: Handle[TDF_RelocationTable] = 0): bool {.
    importcpp: "Paste", header: "TObj_Model.hxx".}
proc newEmpty*(this: var TObjModel): Handle[TObjModel] {.importcpp: "NewEmpty",
    header: "TObj_Model.hxx".}
proc copyReferences*(this: var TObjModel; theTarget: Handle[TObjModel];
                    theRelocTable: Handle[TDF_RelocationTable]) {.
    importcpp: "CopyReferences", header: "TObj_Model.hxx".}
type
  TObjModelbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TObj_Model::get_type_name(@)",
                            header: "TObj_Model.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_Model::get_type_descriptor(@)", header: "TObj_Model.hxx".}
proc dynamicType*(this: TObjModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Model.hxx".}
## ! The Model Handle is defined in a separate header file


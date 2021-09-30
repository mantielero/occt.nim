##  Created on: 2004-11-22
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

discard "forward decl of TObj_Model"
discard "forward decl of TObj_Persistence"
discard "forward decl of TObj_ObjectIterator"
discard "forward decl of TObj_TNameContainer"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TObj_Object"
discard "forward decl of TObj_Object"
type
  HandleC1C1* = Handle[TObjObject]

## ! Basis class for transient objects in OCAF-based models

type
  TObjObject* {.importcpp: "TObj_Object", header: "TObj_Object.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## enumeration
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## ranks
                                                                                                  ## of
                                                                                                  ## label
                                                                                                  ## under
                                                                                                  ## Data
                                                                                                  ## section.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Constructors
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Constructor
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ## new
                                                                                                  ## object
                                                                                                  ## interface:
                                                                                                  ## requires
                                                                                                  ## label,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## which
                                                                                                  ## should
                                                                                                  ## be
                                                                                                  ## one
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## labels
                                                                                                  ## in
                                                                                                  ## model's
                                                                                                  ## data
                                                                                                  ## structure.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## This
                                                                                                  ## creates
                                                                                                  ## a
                                                                                                  ## new
                                                                                                  ## object
                                                                                                  ## and
                                                                                                  ## attaches
                                                                                                  ## it
                                                                                                  ## to
                                                                                                  ## a
                                                                                                  ## given
                                                                                                  ## label.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## initialisation
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## object's
                                                                                                  ## data
                                                                                                  ## and
                                                                                                  ## their
                                                                                                  ## integrity
                                                                                                  ## is
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## ensured
                                                                                                  ## by
                                                                                                  ## implementations
                                                                                                  ## and
                                                                                                  ## by
                                                                                                  ## persistence
                                                                                                  ## mechanism.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## the
                                                                                                  ## flag
                                                                                                  ## theSetName
                                                                                                  ## is
                                                                                                  ## true
                                                                                                  ## (default)
                                                                                                  ## the
                                                                                                  ## object
                                                                                                  ## is
                                                                                                  ## assign
                                                                                                  ## the
                                                                                                  ## default
                                                                                                  ## name
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## that
                                                                                                  ## is
                                                                                                  ## generated
                                                                                                  ## using
                                                                                                  ## the
                                                                                                  ## father
                                                                                                  ## partition
                                                                                                  ## object
                                                                                                  ## if
                                                                                                  ## any.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Virtual
                                                                                                  ## methods
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## model
                                                                                                  ## to
                                                                                                  ## which
                                                                                                  ## the
                                                                                                  ## object
                                                                                                  ## belongs
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Access
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## OCAF-specific
                                                                                                  ## data
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## OCAF
                                                                                                  ## label
                                                                                                  ## on
                                                                                                  ## which
                                                                                                  ## object`s
                                                                                                  ## data
                                                                                                  ## are
                                                                                                  ## stored
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Methods
                                                                                                  ## hanling
                                                                                                  ## name
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## object
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
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## implementation
                                                                                                  ## returns
                                                                                                  ## global
                                                                                                  ## Dictionary
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## model
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Analysis
                                                                                                  ## of
                                                                                                  ## dependencies
                                                                                                  ## on
                                                                                                  ## other
                                                                                                  ## objects
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## True
                                                                                                  ## if
                                                                                                  ## object
                                                                                                  ## has
                                                                                                  ## reference
                                                                                                  ## to
                                                                                                  ## indicated
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Methods
                                                                                                  ## for
                                                                                                  ## deleting
                                                                                                  ## the
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Checks
                                                                                                  ## if
                                                                                                  ## object
                                                                                                  ## can
                                                                                                  ## be
                                                                                                  ## detached
                                                                                                  ## with
                                                                                                  ## specified
                                                                                                  ## mode
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## methods
                                                                                                  ## for
                                                                                                  ## object
                                                                                                  ## retrieval
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## Object
                                                                                                  ## attached
                                                                                                  ## to
                                                                                                  ## a
                                                                                                  ## given
                                                                                                  ## label.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## False
                                                                                                  ## if
                                                                                                  ## no
                                                                                                  ## object
                                                                                                  ## of
                                                                                                  ## type
                                                                                                  ## TObj_Object
                                                                                                  ## is
                                                                                                  ## stored
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## specified
                                                                                                  ## label.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## isSuper
                                                                                                  ## is
                                                                                                  ## true
                                                                                                  ## tries
                                                                                                  ## to
                                                                                                  ## find
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## super
                                                                                                  ## labels.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Methods
                                                                                                  ## for
                                                                                                  ## checking
                                                                                                  ## and
                                                                                                  ## Updating
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Checks
                                                                                                  ## that
                                                                                                  ## object
                                                                                                  ## alive
                                                                                                  ## in
                                                                                                  ## model
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## implementation
                                                                                                  ## checks
                                                                                                  ## that
                                                                                                  ## object
                                                                                                  ## has
                                                                                                  ## TObject
                                                                                                  ## attribute
                                                                                                  ## at
                                                                                                  ## own
                                                                                                  ## label.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Cloning
                                                                                                  ## related
                                                                                                  ## methods
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Copy
                                                                                                  ## me
                                                                                                  ## to
                                                                                                  ## other
                                                                                                  ## label
                                                                                                  ## theTargetLabel
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## New
                                                                                                  ## object
                                                                                                  ## will
                                                                                                  ## not
                                                                                                  ## have
                                                                                                  ## all
                                                                                                  ## the
                                                                                                  ## reference
                                                                                                  ## that
                                                                                                  ## has
                                                                                                  ## me.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Coping
                                                                                                  ## object
                                                                                                  ## with
                                                                                                  ## data
                                                                                                  ## and
                                                                                                  ## childs,
                                                                                                  ## but
                                                                                                  ## change
                                                                                                  ## name
                                                                                                  ## by
                                                                                                  ## adding
                                                                                                  ## string
                                                                                                  ## "_copy"
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## As
                                                                                                  ## result
                                                                                                  ## return
                                                                                                  ## handle
                                                                                                  ## of
                                                                                                  ## new
                                                                                                  ## object
                                                                                                  ## (null
                                                                                                  ## handle
                                                                                                  ## is
                                                                                                  ## something
                                                                                                  ## wrong)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## NOTE:
                                                                                                  ## BackReferences
                                                                                                  ## not
                                                                                                  ## coping.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## After
                                                                                                  ## clonning
                                                                                                  ## all
                                                                                                  ## objects
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## neccessary
                                                                                                  ## to
                                                                                                  ## call
                                                                                                  ## copy
                                                                                                  ## references
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## same
                                                                                                  ## relocation
                                                                                                  ## table
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Public
                                                                                                  ## methods
                                                                                                  ## to
                                                                                                  ## access
                                                                                                  ## order
                                                                                                  ## of
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## order
                                                                                                  ## of
                                                                                                  ## object
                                                                                                  ## (or
                                                                                                  ## tag
                                                                                                  ## of
                                                                                                  ## their
                                                                                                  ## label
                                                                                                  ## if
                                                                                                  ## order
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## initialised)
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Public
                                                                                                  ## methods
                                                                                                  ## to
                                                                                                  ## check
                                                                                                  ## modifications
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## object
                                                                                                  ## since
                                                                                                  ## last
                                                                                                  ## commit
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## true
                                                                                                  ## if
                                                                                                  ## object
                                                                                                  ## attributes
                                                                                                  ## or
                                                                                                  ## or
                                                                                                  ## his
                                                                                                  ## children
                                                                                                  ## were
                                                                                                  ## modified
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## current
                                                                                                  ## open
                                                                                                  ## transaction
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Protected
                                                                                                  ## Methods
                                                                                                  ## copy
                                                                                                  ## data
                                                                                                  ## of
                                                                                                  ## object
                                                                                                  ## to
                                                                                                  ## other
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Coping
                                                                                                  ## the
                                                                                                  ## data
                                                                                                  ## of
                                                                                                  ## me
                                                                                                  ## to
                                                                                                  ## Target
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## return
                                                                                                  ## Standard_False
                                                                                                  ## is
                                                                                                  ## Target
                                                                                                  ## object
                                                                                                  ## is
                                                                                                  ## different
                                                                                                  ## type
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Access
                                                                                                  ## to
                                                                                                  ## object
                                                                                                  ## flags
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## flags
                                                                                                  ## (bitmask)
                                                                                                  ## that
                                                                                                  ## define
                                                                                                  ## properties
                                                                                                  ## of
                                                                                                  ## objects
                                                                                                  ## of
                                                                                                  ## that
                                                                                                  ## type
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## By
                                                                                                  ## default
                                                                                                  ## returns
                                                                                                  ## flag
                                                                                                  ## Visible
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Method
                                                                                                  ## for
                                                                                                  ## updating
                                                                                                  ## object
                                                                                                  ## afrer
                                                                                                  ## restoring
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Preforms
                                                                                                  ## updating
                                                                                                  ## the
                                                                                                  ## links
                                                                                                  ## and
                                                                                                  ## dependances
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## object
                                                                                                  ## which
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## stored
                                                                                                  ## in
                                                                                                  ## persistence.
                                                                                                  ## Should
                                                                                                  ## be
                                                                                                  ## redefined
                                                                                                  ## if
                                                                                                  ## necessary.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Internal
                                                                                                  ## tools
                                                                                                  ## for
                                                                                                  ## work
                                                                                                  ## with
                                                                                                  ## OCAF
                                                                                                  ## data
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## theRank2-th
                                                                                                  ## sub
                                                                                                  ## label
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## theRank1-th
                                                                                                  ## sublabel
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Data
                                                                                                  ## label
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## object.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## theRank2
                                                                                                  ## is
                                                                                                  ## 0
                                                                                                  ## (default),
                                                                                                  ## sub
                                                                                                  ## label
                                                                                                  ## theRank1
                                                                                                  ## of
                                                                                                  ## Data
                                                                                                  ## label
                                                                                                  ## is
                                                                                                  ## returned.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## requested
                                                                                                  ## label
                                                                                                  ## does
                                                                                                  ## not
                                                                                                  ## exist,
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## created.
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Fields
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## CASCADE
                                                                                                  ## RTTI
    ## !< Label on which object`s data are stored
    ## !< hsequence of back references.

  TObjObjectTypeFlags* {.size: sizeof(cint), importcpp: "TObj_Object::TypeFlags",
                        header: "TObj_Object.hxx".} = enum ## !< Flags that define type-specific behaviour of objects
    Visible = 0x0001


type
  TObjObjectObjectState* {.size: sizeof(cint),
                          importcpp: "TObj_Object::ObjectState",
                          header: "TObj_Object.hxx".} = enum
    ObjectStateHidden = 0x0001, ## !< object is hidden in tree browser
    ObjectStateSaved = 0x0002,  ## !< object has (or should have)
                            ## !<   corresponding saved file on disk
    ObjectStateImported = 0x0004, ## !< object's data are just imported from somewhere
    ObjectStateImportedByFile = 0x0008, ## !< a model imported by file may need a
                                     ## !<   sophisticated update of external references
    ObjectStateOrdered = 0x0010


proc getModel*(this: TObjObject): Handle[TObjModel] {.noSideEffect,
    importcpp: "GetModel", header: "TObj_Object.hxx".}
proc getChildren*(this: TObjObject; theType: Handle[StandardType] = nil): Handle[
    TObjObjectIterator] {.noSideEffect, importcpp: "GetChildren",
                         header: "TObj_Object.hxx".}
proc getChildLabel*(this: TObjObject): TDF_Label {.noSideEffect,
    importcpp: "GetChildLabel", header: "TObj_Object.hxx".}
proc getChildLabel*(this: TObjObject; theRank: cint): TDF_Label {.noSideEffect,
    importcpp: "getChildLabel", header: "TObj_Object.hxx".}
proc getLabel*(this: TObjObject): TDF_Label {.noSideEffect, importcpp: "GetLabel",
    header: "TObj_Object.hxx".}
proc getDataLabel*(this: TObjObject): TDF_Label {.noSideEffect,
    importcpp: "GetDataLabel", header: "TObj_Object.hxx".}
proc getReferenceLabel*(this: TObjObject): TDF_Label {.noSideEffect,
    importcpp: "GetReferenceLabel", header: "TObj_Object.hxx".}
proc getDictionary*(this: TObjObject): Handle[TObjTNameContainer] {.noSideEffect,
    importcpp: "GetDictionary", header: "TObj_Object.hxx".}
proc getName*(this: TObjObject): Handle[TCollectionHExtendedString] {.noSideEffect,
    importcpp: "GetName", header: "TObj_Object.hxx".}
proc getName*(this: TObjObject; theName: var TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "GetName", header: "TObj_Object.hxx".}
proc getName*(this: TObjObject; theName: var TCollectionAsciiString): bool {.
    noSideEffect, importcpp: "GetName", header: "TObj_Object.hxx".}
proc setName*(this: TObjObject; theName: Handle[TCollectionHExtendedString]): bool {.
    noSideEffect, importcpp: "SetName", header: "TObj_Object.hxx".}
proc setName*(this: TObjObject; theName: Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, importcpp: "SetName", header: "TObj_Object.hxx".}
proc setName*(this: TObjObject; name: StandardCString): bool {.noSideEffect,
    importcpp: "SetName", header: "TObj_Object.hxx".}
proc getNameForClone*(this: TObjObject; a2: Handle[TObjObject]): Handle[
    TCollectionHExtendedString] {.noSideEffect, importcpp: "GetNameForClone",
                                 header: "TObj_Object.hxx".}
proc hasReference*(this: TObjObject; theObject: Handle[TObjObject]): bool {.
    noSideEffect, importcpp: "HasReference", header: "TObj_Object.hxx".}
proc getReferences*(this: TObjObject; theType: Handle[StandardType] = nil): Handle[
    TObjObjectIterator] {.noSideEffect, importcpp: "GetReferences",
                         header: "TObj_Object.hxx".}
proc removeAllReferences*(this: var TObjObject) {.importcpp: "RemoveAllReferences",
    header: "TObj_Object.hxx".}
proc getBackReferences*(this: TObjObject; theType: Handle[StandardType] = nil): Handle[
    TObjObjectIterator] {.noSideEffect, importcpp: "GetBackReferences",
                         header: "TObj_Object.hxx".}
proc addBackReference*(this: var TObjObject; theObject: Handle[TObjObject]) {.
    importcpp: "AddBackReference", header: "TObj_Object.hxx".}
proc removeBackReference*(this: var TObjObject; theObject: Handle[TObjObject];
                         theSingleOnly: bool = true) {.
    importcpp: "RemoveBackReference", header: "TObj_Object.hxx".}
proc removeBackReferences*(this: var TObjObject;
                          theMode: TObjDeletingMode = tObjFreeOnly): bool {.
    importcpp: "RemoveBackReferences", header: "TObj_Object.hxx".}
proc clearBackReferences*(this: var TObjObject) {.importcpp: "ClearBackReferences",
    header: "TObj_Object.hxx".}
proc hasBackReferences*(this: TObjObject): bool {.noSideEffect,
    importcpp: "HasBackReferences", header: "TObj_Object.hxx".}
proc replaceReference*(this: var TObjObject; theOldObject: Handle[TObjObject];
                      theNewObject: Handle[TObjObject]) {.
    importcpp: "ReplaceReference", header: "TObj_Object.hxx".}
proc getBadReference*(this: TObjObject; theRoot: TDF_Label;
                     theBadReference: var TDF_Label): bool {.noSideEffect,
    importcpp: "GetBadReference", header: "TObj_Object.hxx".}
proc relocateReferences*(this: var TObjObject; theFromRoot: TDF_Label;
                        theToRoot: TDF_Label; theUpdateBackRefs: bool = true): bool {.
    importcpp: "RelocateReferences", header: "TObj_Object.hxx".}
proc canRemoveReference*(this: TObjObject; theObject: Handle[TObjObject]): bool {.
    noSideEffect, importcpp: "CanRemoveReference", header: "TObj_Object.hxx".}
proc removeReference*(this: var TObjObject; theObject: Handle[TObjObject]) {.
    importcpp: "RemoveReference", header: "TObj_Object.hxx".}
proc beforeForgetReference*(this: var TObjObject; a2: TDF_Label) {.
    importcpp: "BeforeForgetReference", header: "TObj_Object.hxx".}
  ## theLabel
proc canDetach*(this: var TObjObject; theMode: TObjDeletingMode = tObjFreeOnly): bool {.
    importcpp: "CanDetach", header: "TObj_Object.hxx".}
proc detach*(this: var TObjObject; theMode: TObjDeletingMode = tObjFreeOnly): bool {.
    importcpp: "Detach", header: "TObj_Object.hxx".}
proc detach*(theLabel: TDF_Label; theMode: TObjDeletingMode = tObjFreeOnly): bool {.
    importcpp: "TObj_Object::Detach(@)", header: "TObj_Object.hxx".}
proc getObj*(theLabel: TDF_Label; theResult: var Handle[TObjObject];
            isSuper: bool = false): bool {.importcpp: "TObj_Object::GetObj(@)",
                                      header: "TObj_Object.hxx".}
proc getFatherObject*(this: TObjObject; theType: Handle[StandardType] = nil): Handle[
    TObjObject] {.noSideEffect, importcpp: "GetFatherObject",
                 header: "TObj_Object.hxx".}
proc isAlive*(this: TObjObject): bool {.noSideEffect, importcpp: "IsAlive",
                                    header: "TObj_Object.hxx".}
proc clone*(this: var TObjObject; theTargetLabel: TDF_Label;
           theRelocTable: Handle[TDF_RelocationTable] = 0): Handle[TObjObject] {.
    importcpp: "Clone", header: "TObj_Object.hxx".}
proc copyReferences*(this: var TObjObject; theTargetObject: Handle[TObjObject];
                    theRelocTable: Handle[TDF_RelocationTable]) {.
    importcpp: "CopyReferences", header: "TObj_Object.hxx".}
proc copyChildren*(this: var TObjObject; theTargetLabel: var TDF_Label;
                  theRelocTable: Handle[TDF_RelocationTable]) {.
    importcpp: "CopyChildren", header: "TObj_Object.hxx".}
proc getOrder*(this: TObjObject): cint {.noSideEffect, importcpp: "GetOrder",
                                     header: "TObj_Object.hxx".}
proc setOrder*(this: var TObjObject; theIndx: cint): bool {.importcpp: "SetOrder",
    header: "TObj_Object.hxx".}
proc hasModifications*(this: TObjObject): bool {.noSideEffect,
    importcpp: "HasModifications", header: "TObj_Object.hxx".}
proc getTypeFlags*(this: TObjObject): cint {.noSideEffect, importcpp: "GetTypeFlags",
    header: "TObj_Object.hxx".}
proc getFlags*(this: TObjObject): cint {.noSideEffect, importcpp: "GetFlags",
                                     header: "TObj_Object.hxx".}
proc setFlags*(this: var TObjObject; theMask: cint) {.importcpp: "SetFlags",
    header: "TObj_Object.hxx".}
proc testFlags*(this: TObjObject; theMask: cint): bool {.noSideEffect,
    importcpp: "TestFlags", header: "TObj_Object.hxx".}
proc clearFlags*(this: var TObjObject; theMask: cint = not 0) {.importcpp: "ClearFlags",
    header: "TObj_Object.hxx".}
proc afterRetrieval*(this: var TObjObject) {.importcpp: "AfterRetrieval",
    header: "TObj_Object.hxx".}
proc beforeStoring*(this: var TObjObject) {.importcpp: "BeforeStoring",
                                        header: "TObj_Object.hxx".}
type
  TObjObjectbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TObj_Object::get_type_name(@)",
                            header: "TObj_Object.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_Object::get_type_descriptor(@)", header: "TObj_Object.hxx".}
proc dynamicType*(this: TObjObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Object.hxx".}
## ! Define handle in separate file

# when defined(_MSC_VER):
#   discard


























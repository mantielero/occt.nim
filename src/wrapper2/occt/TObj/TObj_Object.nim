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

import
  TObj_Common, TObj_DeletingMode, TObj_SequenceOfObject, ../TDF/TDF_Label,
  ../gp/gp_XYZ

discard "forward decl of TObj_Model"
discard "forward decl of TObj_Persistence"
discard "forward decl of TObj_ObjectIterator"
discard "forward decl of TObj_TNameContainer"
discard "forward decl of TCollection_HExtendedString"
import
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfExtendedString

discard "forward decl of TObj_Object"
discard "forward decl of TObj_Object"
type
  Handle_TObj_Object* = handle[TObj_Object]

## ! Basis class for transient objects in OCAF-based models

type
  TObj_Object* {.importcpp: "TObj_Object", header: "TObj_Object.hxx", bycopy.} = object of Standard_Transient ##
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

  TObj_ObjectTypeFlags* {.size: sizeof(cint), importcpp: "TObj_Object::TypeFlags",
                         header: "TObj_Object.hxx".} = enum ## !< Flags that define type-specific behaviour of objects
    Visible = 0x0001


type
  TObj_ObjectObjectState* {.size: sizeof(cint),
                           importcpp: "TObj_Object::ObjectState",
                           header: "TObj_Object.hxx".} = enum
    ObjectState_Hidden = 0x0001, ## !< object is hidden in tree browser
    ObjectState_Saved = 0x0002, ## !< object has (or should have)
                             ## !<   corresponding saved file on disk
    ObjectState_Imported = 0x0004, ## !< object's data are just imported from somewhere
    ObjectState_ImportedByFile = 0x0008, ## !< a model imported by file may need a
                                      ## !<   sophisticated update of external references
    ObjectState_Ordered = 0x0010


proc GetModel*(this: TObj_Object): handle[TObj_Model] {.noSideEffect,
    importcpp: "GetModel", header: "TObj_Object.hxx".}
proc GetChildren*(this: TObj_Object; theType: handle[Standard_Type] = nil): handle[
    TObj_ObjectIterator] {.noSideEffect, importcpp: "GetChildren",
                          header: "TObj_Object.hxx".}
proc GetChildLabel*(this: TObj_Object): TDF_Label {.noSideEffect,
    importcpp: "GetChildLabel", header: "TObj_Object.hxx".}
proc getChildLabel*(this: TObj_Object; theRank: Standard_Integer): TDF_Label {.
    noSideEffect, importcpp: "getChildLabel", header: "TObj_Object.hxx".}
proc GetLabel*(this: TObj_Object): TDF_Label {.noSideEffect, importcpp: "GetLabel",
    header: "TObj_Object.hxx".}
proc GetDataLabel*(this: TObj_Object): TDF_Label {.noSideEffect,
    importcpp: "GetDataLabel", header: "TObj_Object.hxx".}
proc GetReferenceLabel*(this: TObj_Object): TDF_Label {.noSideEffect,
    importcpp: "GetReferenceLabel", header: "TObj_Object.hxx".}
proc GetDictionary*(this: TObj_Object): handle[TObj_TNameContainer] {.noSideEffect,
    importcpp: "GetDictionary", header: "TObj_Object.hxx".}
proc GetName*(this: TObj_Object): handle[TCollection_HExtendedString] {.
    noSideEffect, importcpp: "GetName", header: "TObj_Object.hxx".}
proc GetName*(this: TObj_Object; theName: var TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "GetName", header: "TObj_Object.hxx".}
proc GetName*(this: TObj_Object; theName: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "GetName", header: "TObj_Object.hxx".}
proc SetName*(this: TObj_Object; theName: handle[TCollection_HExtendedString]): Standard_Boolean {.
    noSideEffect, importcpp: "SetName", header: "TObj_Object.hxx".}
proc SetName*(this: TObj_Object; theName: handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "SetName", header: "TObj_Object.hxx".}
proc SetName*(this: TObj_Object; name: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "SetName", header: "TObj_Object.hxx".}
proc GetNameForClone*(this: TObj_Object; a2: handle[TObj_Object]): handle[
    TCollection_HExtendedString] {.noSideEffect, importcpp: "GetNameForClone",
                                  header: "TObj_Object.hxx".}
proc HasReference*(this: TObj_Object; theObject: handle[TObj_Object]): Standard_Boolean {.
    noSideEffect, importcpp: "HasReference", header: "TObj_Object.hxx".}
proc GetReferences*(this: TObj_Object; theType: handle[Standard_Type] = nil): handle[
    TObj_ObjectIterator] {.noSideEffect, importcpp: "GetReferences",
                          header: "TObj_Object.hxx".}
proc RemoveAllReferences*(this: var TObj_Object) {.importcpp: "RemoveAllReferences",
    header: "TObj_Object.hxx".}
proc GetBackReferences*(this: TObj_Object; theType: handle[Standard_Type] = nil): handle[
    TObj_ObjectIterator] {.noSideEffect, importcpp: "GetBackReferences",
                          header: "TObj_Object.hxx".}
proc AddBackReference*(this: var TObj_Object; theObject: handle[TObj_Object]) {.
    importcpp: "AddBackReference", header: "TObj_Object.hxx".}
proc RemoveBackReference*(this: var TObj_Object; theObject: handle[TObj_Object];
                         theSingleOnly: Standard_Boolean = Standard_True) {.
    importcpp: "RemoveBackReference", header: "TObj_Object.hxx".}
proc RemoveBackReferences*(this: var TObj_Object;
                          theMode: TObj_DeletingMode = TObj_FreeOnly): Standard_Boolean {.
    importcpp: "RemoveBackReferences", header: "TObj_Object.hxx".}
proc ClearBackReferences*(this: var TObj_Object) {.importcpp: "ClearBackReferences",
    header: "TObj_Object.hxx".}
proc HasBackReferences*(this: TObj_Object): Standard_Boolean {.noSideEffect,
    importcpp: "HasBackReferences", header: "TObj_Object.hxx".}
proc ReplaceReference*(this: var TObj_Object; theOldObject: handle[TObj_Object];
                      theNewObject: handle[TObj_Object]) {.
    importcpp: "ReplaceReference", header: "TObj_Object.hxx".}
proc GetBadReference*(this: TObj_Object; theRoot: TDF_Label;
                     theBadReference: var TDF_Label): Standard_Boolean {.
    noSideEffect, importcpp: "GetBadReference", header: "TObj_Object.hxx".}
proc RelocateReferences*(this: var TObj_Object; theFromRoot: TDF_Label;
                        theToRoot: TDF_Label;
                        theUpdateBackRefs: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "RelocateReferences", header: "TObj_Object.hxx".}
proc CanRemoveReference*(this: TObj_Object; theObject: handle[TObj_Object]): Standard_Boolean {.
    noSideEffect, importcpp: "CanRemoveReference", header: "TObj_Object.hxx".}
proc RemoveReference*(this: var TObj_Object; theObject: handle[TObj_Object]) {.
    importcpp: "RemoveReference", header: "TObj_Object.hxx".}
proc BeforeForgetReference*(this: var TObj_Object; a2: TDF_Label) {.
    importcpp: "BeforeForgetReference", header: "TObj_Object.hxx".}
  ## theLabel
proc CanDetach*(this: var TObj_Object; theMode: TObj_DeletingMode = TObj_FreeOnly): Standard_Boolean {.
    importcpp: "CanDetach", header: "TObj_Object.hxx".}
proc Detach*(this: var TObj_Object; theMode: TObj_DeletingMode = TObj_FreeOnly): Standard_Boolean {.
    importcpp: "Detach", header: "TObj_Object.hxx".}
proc Detach*(theLabel: TDF_Label; theMode: TObj_DeletingMode = TObj_FreeOnly): Standard_Boolean {.
    importcpp: "TObj_Object::Detach(@)", header: "TObj_Object.hxx".}
proc GetObj*(theLabel: TDF_Label; theResult: var handle[TObj_Object];
            isSuper: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "TObj_Object::GetObj(@)", header: "TObj_Object.hxx".}
proc GetFatherObject*(this: TObj_Object; theType: handle[Standard_Type] = nil): handle[
    TObj_Object] {.noSideEffect, importcpp: "GetFatherObject",
                  header: "TObj_Object.hxx".}
proc IsAlive*(this: TObj_Object): Standard_Boolean {.noSideEffect,
    importcpp: "IsAlive", header: "TObj_Object.hxx".}
proc Clone*(this: var TObj_Object; theTargetLabel: TDF_Label;
           theRelocTable: handle[TDF_RelocationTable] = 0): handle[TObj_Object] {.
    importcpp: "Clone", header: "TObj_Object.hxx".}
proc CopyReferences*(this: var TObj_Object; theTargetObject: handle[TObj_Object];
                    theRelocTable: handle[TDF_RelocationTable]) {.
    importcpp: "CopyReferences", header: "TObj_Object.hxx".}
proc CopyChildren*(this: var TObj_Object; theTargetLabel: var TDF_Label;
                  theRelocTable: handle[TDF_RelocationTable]) {.
    importcpp: "CopyChildren", header: "TObj_Object.hxx".}
proc GetOrder*(this: TObj_Object): Standard_Integer {.noSideEffect,
    importcpp: "GetOrder", header: "TObj_Object.hxx".}
proc SetOrder*(this: var TObj_Object; theIndx: Standard_Integer): Standard_Boolean {.
    importcpp: "SetOrder", header: "TObj_Object.hxx".}
proc HasModifications*(this: TObj_Object): Standard_Boolean {.noSideEffect,
    importcpp: "HasModifications", header: "TObj_Object.hxx".}
proc GetTypeFlags*(this: TObj_Object): Standard_Integer {.noSideEffect,
    importcpp: "GetTypeFlags", header: "TObj_Object.hxx".}
proc GetFlags*(this: TObj_Object): Standard_Integer {.noSideEffect,
    importcpp: "GetFlags", header: "TObj_Object.hxx".}
proc SetFlags*(this: var TObj_Object; theMask: Standard_Integer) {.
    importcpp: "SetFlags", header: "TObj_Object.hxx".}
proc TestFlags*(this: TObj_Object; theMask: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "TestFlags", header: "TObj_Object.hxx".}
proc ClearFlags*(this: var TObj_Object; theMask: Standard_Integer = not 0) {.
    importcpp: "ClearFlags", header: "TObj_Object.hxx".}
proc AfterRetrieval*(this: var TObj_Object) {.importcpp: "AfterRetrieval",
    header: "TObj_Object.hxx".}
proc BeforeStoring*(this: var TObj_Object) {.importcpp: "BeforeStoring",
    header: "TObj_Object.hxx".}
type
  TObj_Objectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TObj_Object::get_type_name(@)",
                              header: "TObj_Object.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_Object::get_type_descriptor(@)", header: "TObj_Object.hxx".}
proc DynamicType*(this: TObj_Object): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Object.hxx".}
## ! Define handle in separate file

when defined(_MSC_VER):
  discard
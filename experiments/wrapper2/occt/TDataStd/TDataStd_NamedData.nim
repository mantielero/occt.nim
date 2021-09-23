##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../TDF/TDF_Attribute, ../TColStd/TColStd_DataMapOfStringInteger,
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfReal,
  TDataStd_DataMapOfStringReal, TDataStd_DataMapOfStringString,
  TDataStd_DataMapOfStringByte, TDataStd_DataMapOfStringHArray1OfInteger,
  TDataStd_DataMapOfStringHArray1OfReal

discard "forward decl of TDataStd_HDataMapOfStringInteger"
discard "forward decl of TDataStd_HDataMapOfStringReal"
discard "forward decl of TDataStd_HDataMapOfStringString"
discard "forward decl of TDataStd_HDataMapOfStringByte"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfInteger"
discard "forward decl of TDataStd_HDataMapOfStringHArray1OfReal"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDataStd_NamedData"
discard "forward decl of TDataStd_NamedData"
type
  Handle_TDataStd_NamedData* = handle[TDataStd_NamedData]

## ! Contains a named data.

type
  TDataStd_NamedData* {.importcpp: "TDataStd_NamedData",
                       header: "TDataStd_NamedData.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## ID
                                                                                     ## of
                                                                                     ## the
                                                                                     ## named
                                                                                     ## data
                                                                                     ## attribute.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Empty
                                                                                     ## constructor.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## late-load
                                                                                     ## deferred
                                                                                     ## data
                                                                                     ## interface
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## TRUE
                                                                                     ## if
                                                                                     ## some
                                                                                     ## data
                                                                                     ## is
                                                                                     ## not
                                                                                     ## loaded
                                                                                     ## from
                                                                                     ## deferred
                                                                                     ## storage
                                                                                     ## and
                                                                                     ## can
                                                                                     ## be
                                                                                     ## loaded
                                                                                     ## using
                                                                                     ## LoadDeferredData().
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## Late-load
                                                                                     ## interface
                                                                                     ## allows
                                                                                     ## to
                                                                                     ## avoid
                                                                                     ## loading
                                                                                     ## auxiliary
                                                                                     ## data
                                                                                     ## into
                                                                                     ## memory
                                                                                     ## until
                                                                                     ## it
                                                                                     ## is
                                                                                     ## needed
                                                                                     ## by
                                                                                     ## application
                                                                                     ##
                                                                                     ## !
                                                                                     ## and
                                                                                     ## also
                                                                                     ## speed
                                                                                     ## up
                                                                                     ## reader
                                                                                     ## by
                                                                                     ## skipping
                                                                                     ## data
                                                                                     ## chunks
                                                                                     ## in
                                                                                     ## file.
                                                                                     ##
                                                                                     ## !
                                                                                     ## This
                                                                                     ## feature
                                                                                     ## requires
                                                                                     ## file
                                                                                     ## format
                                                                                     ## having
                                                                                     ## special
                                                                                     ## structure,
                                                                                     ## and
                                                                                     ## usually
                                                                                     ## implies
                                                                                     ## read-only
                                                                                     ## access,
                                                                                     ##
                                                                                     ## !
                                                                                     ## therefore
                                                                                     ## default
                                                                                     ## implementation
                                                                                     ## will
                                                                                     ## return
                                                                                     ## FALSE
                                                                                     ## here.
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## Late-load
                                                                                     ## elements
                                                                                     ## require
                                                                                     ## special
                                                                                     ## attention
                                                                                     ## to
                                                                                     ## ensure
                                                                                     ## data
                                                                                     ## consistency,
                                                                                     ##
                                                                                     ## !
                                                                                     ## as
                                                                                     ## such
                                                                                     ## elements
                                                                                     ## are
                                                                                     ## created
                                                                                     ## in
                                                                                     ## undefined
                                                                                     ## state
                                                                                     ## (no
                                                                                     ## data)
                                                                                     ## and
                                                                                     ## Undo/Redo
                                                                                     ## mechanism
                                                                                     ## will
                                                                                     ## not
                                                                                     ## work
                                                                                     ## until
                                                                                     ## deferred
                                                                                     ## data
                                                                                     ## being
                                                                                     ## loaded.
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## Usage
                                                                                     ## scenarios:
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## Application
                                                                                     ## displays
                                                                                     ## model
                                                                                     ## in
                                                                                     ## read-only
                                                                                     ## way.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Late-load
                                                                                     ## elements
                                                                                     ## are
                                                                                     ## loaded
                                                                                     ## temporarily
                                                                                     ## on
                                                                                     ## demand
                                                                                     ## and
                                                                                     ## immediatly
                                                                                     ## unloaded.
                                                                                     ##
                                                                                     ## !
                                                                                     ## theNamedData->LoadDeferredData
                                                                                     ## (true);
                                                                                     ##
                                                                                     ## !
                                                                                     ## TCollection_AsciiString
                                                                                     ## aValue
                                                                                     ## =
                                                                                     ## theNamedData->GetString
                                                                                     ## (theKey);
                                                                                     ##
                                                                                     ## !
                                                                                     ## theNamedData->UnloadDeferredData();
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## Application
                                                                                     ## saves
                                                                                     ## the
                                                                                     ## model
                                                                                     ## into
                                                                                     ## another
                                                                                     ## format.
                                                                                     ##
                                                                                     ## !
                                                                                     ## All
                                                                                     ## late-load
                                                                                     ## elements
                                                                                     ## should
                                                                                     ## be
                                                                                     ## loaded
                                                                                     ## (at
                                                                                     ## least
                                                                                     ## temporary
                                                                                     ## during
                                                                                     ## operation).
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## Application
                                                                                     ## modifies
                                                                                     ## the
                                                                                     ## model.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Late-load
                                                                                     ## element
                                                                                     ## should
                                                                                     ## be
                                                                                     ## loaded
                                                                                     ## with
                                                                                     ## removed
                                                                                     ## link
                                                                                     ## to
                                                                                     ## deferred
                                                                                     ## storage,
                                                                                     ##
                                                                                     ## !
                                                                                     ## so
                                                                                     ## that
                                                                                     ## Undo()/Redo()
                                                                                     ## will
                                                                                     ## work
                                                                                     ## as
                                                                                     ## expected
                                                                                     ## since
                                                                                     ## loading.
                                                                                     ##
                                                                                     ## !
                                                                                     ## theNamedData->LoadDeferredData
                                                                                     ## (false);
                                                                                     ##
                                                                                     ## !
                                                                                     ## theNamedData->SetString
                                                                                     ## (theKey,
                                                                                     ## theNewValue);
                                                                                     ##
                                                                                     ## !
                                                                                     ## Clear
                                                                                     ## data
                                                                                     ## without
                                                                                     ## calling
                                                                                     ## Backup().
                                                                                     ##
                                                                                     ## !
                                                                                     ## @name
                                                                                     ## TDF_Attribute
                                                                                     ## interface


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_NamedData::GetID(@)",
                            header: "TDataStd_NamedData.hxx".}
proc Set*(label: TDF_Label): handle[TDataStd_NamedData] {.
    importcpp: "TDataStd_NamedData::Set(@)", header: "TDataStd_NamedData.hxx".}
proc constructTDataStd_NamedData*(): TDataStd_NamedData {.constructor,
    importcpp: "TDataStd_NamedData(@)", header: "TDataStd_NamedData.hxx".}
proc HasIntegers*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasIntegers", header: "TDataStd_NamedData.hxx".}
proc HasInteger*(this: TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasInteger", header: "TDataStd_NamedData.hxx".}
proc GetInteger*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Integer {.
    importcpp: "GetInteger", header: "TDataStd_NamedData.hxx".}
proc SetInteger*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
                theInteger: Standard_Integer) {.importcpp: "SetInteger",
    header: "TDataStd_NamedData.hxx".}
proc GetIntegersContainer*(this: var TDataStd_NamedData): TColStd_DataMapOfStringInteger {.
    importcpp: "GetIntegersContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeIntegers*(this: var TDataStd_NamedData;
                    theIntegers: TColStd_DataMapOfStringInteger) {.
    importcpp: "ChangeIntegers", header: "TDataStd_NamedData.hxx".}
proc HasReals*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasReals", header: "TDataStd_NamedData.hxx".}
proc HasReal*(this: TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasReal", header: "TDataStd_NamedData.hxx".}
proc GetReal*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Real {.
    importcpp: "GetReal", header: "TDataStd_NamedData.hxx".}
proc SetReal*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
             theReal: Standard_Real) {.importcpp: "SetReal",
                                     header: "TDataStd_NamedData.hxx".}
proc GetRealsContainer*(this: var TDataStd_NamedData): TDataStd_DataMapOfStringReal {.
    importcpp: "GetRealsContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeReals*(this: var TDataStd_NamedData;
                 theReals: TDataStd_DataMapOfStringReal) {.
    importcpp: "ChangeReals", header: "TDataStd_NamedData.hxx".}
proc HasStrings*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasStrings", header: "TDataStd_NamedData.hxx".}
proc HasString*(this: TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasString", header: "TDataStd_NamedData.hxx".}
proc GetString*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString): TCollection_ExtendedString {.
    importcpp: "GetString", header: "TDataStd_NamedData.hxx".}
proc SetString*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
               theString: TCollection_ExtendedString) {.importcpp: "SetString",
    header: "TDataStd_NamedData.hxx".}
proc GetStringsContainer*(this: var TDataStd_NamedData): TDataStd_DataMapOfStringString {.
    importcpp: "GetStringsContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeStrings*(this: var TDataStd_NamedData;
                   theStrings: TDataStd_DataMapOfStringString) {.
    importcpp: "ChangeStrings", header: "TDataStd_NamedData.hxx".}
proc HasBytes*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasBytes", header: "TDataStd_NamedData.hxx".}
proc HasByte*(this: TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasByte", header: "TDataStd_NamedData.hxx".}
proc GetByte*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Byte {.
    importcpp: "GetByte", header: "TDataStd_NamedData.hxx".}
proc SetByte*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
             theByte: Standard_Byte) {.importcpp: "SetByte",
                                     header: "TDataStd_NamedData.hxx".}
proc GetBytesContainer*(this: var TDataStd_NamedData): TDataStd_DataMapOfStringByte {.
    importcpp: "GetBytesContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeBytes*(this: var TDataStd_NamedData;
                 theBytes: TDataStd_DataMapOfStringByte) {.
    importcpp: "ChangeBytes", header: "TDataStd_NamedData.hxx".}
proc HasArraysOfIntegers*(this: TDataStd_NamedData): Standard_Boolean {.
    noSideEffect, importcpp: "HasArraysOfIntegers",
    header: "TDataStd_NamedData.hxx".}
proc HasArrayOfIntegers*(this: TDataStd_NamedData;
                        theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc GetArrayOfIntegers*(this: var TDataStd_NamedData;
                        theName: TCollection_ExtendedString): handle[
    TColStd_HArray1OfInteger] {.importcpp: "GetArrayOfIntegers",
                               header: "TDataStd_NamedData.hxx".}
proc SetArrayOfIntegers*(this: var TDataStd_NamedData;
                        theName: TCollection_ExtendedString;
                        theArrayOfIntegers: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc GetArraysOfIntegersContainer*(this: var TDataStd_NamedData): TDataStd_DataMapOfStringHArray1OfInteger {.
    importcpp: "GetArraysOfIntegersContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeArraysOfIntegers*(this: var TDataStd_NamedData; theArraysOfIntegers: TDataStd_DataMapOfStringHArray1OfInteger) {.
    importcpp: "ChangeArraysOfIntegers", header: "TDataStd_NamedData.hxx".}
proc HasArraysOfReals*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc HasArrayOfReals*(this: TDataStd_NamedData; theName: TCollection_ExtendedString): Standard_Boolean {.
    noSideEffect, importcpp: "HasArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc GetArrayOfReals*(this: var TDataStd_NamedData;
                     theName: TCollection_ExtendedString): handle[
    TColStd_HArray1OfReal] {.importcpp: "GetArrayOfReals",
                            header: "TDataStd_NamedData.hxx".}
proc SetArrayOfReals*(this: var TDataStd_NamedData;
                     theName: TCollection_ExtendedString;
                     theArrayOfReals: handle[TColStd_HArray1OfReal]) {.
    importcpp: "SetArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc GetArraysOfRealsContainer*(this: var TDataStd_NamedData): TDataStd_DataMapOfStringHArray1OfReal {.
    importcpp: "GetArraysOfRealsContainer", header: "TDataStd_NamedData.hxx".}
proc ChangeArraysOfReals*(this: var TDataStd_NamedData; theArraysOfReals: TDataStd_DataMapOfStringHArray1OfReal) {.
    importcpp: "ChangeArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc Clear*(this: var TDataStd_NamedData) {.importcpp: "Clear",
                                        header: "TDataStd_NamedData.hxx".}
proc HasDeferredData*(this: TDataStd_NamedData): Standard_Boolean {.noSideEffect,
    importcpp: "HasDeferredData", header: "TDataStd_NamedData.hxx".}
proc LoadDeferredData*(this: var TDataStd_NamedData;
                      theToKeepDeferred: Standard_Boolean = false): Standard_Boolean {.
    importcpp: "LoadDeferredData", header: "TDataStd_NamedData.hxx".}
proc UnloadDeferredData*(this: var TDataStd_NamedData): Standard_Boolean {.
    importcpp: "UnloadDeferredData", header: "TDataStd_NamedData.hxx".}
proc clear*(this: var TDataStd_NamedData) {.importcpp: "clear",
                                        header: "TDataStd_NamedData.hxx".}
proc setInteger*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
                theInteger: Standard_Integer) {.importcpp: "setInteger",
    header: "TDataStd_NamedData.hxx".}
proc setReal*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
             theReal: Standard_Real) {.importcpp: "setReal",
                                     header: "TDataStd_NamedData.hxx".}
proc setString*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
               theString: TCollection_ExtendedString) {.importcpp: "setString",
    header: "TDataStd_NamedData.hxx".}
proc setByte*(this: var TDataStd_NamedData; theName: TCollection_ExtendedString;
             theByte: Standard_Byte) {.importcpp: "setByte",
                                     header: "TDataStd_NamedData.hxx".}
proc setArrayOfIntegers*(this: var TDataStd_NamedData;
                        theName: TCollection_ExtendedString;
                        theArrayOfIntegers: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "setArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc setArrayOfReals*(this: var TDataStd_NamedData;
                     theName: TCollection_ExtendedString;
                     theArrayOfReals: handle[TColStd_HArray1OfReal]) {.
    importcpp: "setArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc ID*(this: TDataStd_NamedData): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_NamedData.hxx".}
proc Restore*(this: var TDataStd_NamedData; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_NamedData.hxx".}
proc NewEmpty*(this: TDataStd_NamedData): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_NamedData.hxx".}
proc Paste*(this: TDataStd_NamedData; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_NamedData.hxx".}
proc Dump*(this: TDataStd_NamedData; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_NamedData.hxx".}
proc DumpJson*(this: TDataStd_NamedData; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDataStd_NamedData.hxx".}
type
  TDataStd_NamedDatabase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataStd_NamedData::get_type_name(@)",
                              header: "TDataStd_NamedData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_NamedData::get_type_descriptor(@)",
    header: "TDataStd_NamedData.hxx".}
proc DynamicType*(this: TDataStd_NamedData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_NamedData.hxx".}
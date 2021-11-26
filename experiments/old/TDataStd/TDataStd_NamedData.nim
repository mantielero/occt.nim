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
  HandleC1C1* = Handle[TDataStdNamedData]

## ! Contains a named data.

type
  TDataStdNamedData* {.importcpp: "TDataStd_NamedData",
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


proc getID*(): StandardGUID {.importcpp: "TDataStd_NamedData::GetID(@)",
                           header: "TDataStd_NamedData.hxx".}
proc set*(label: TDF_Label): Handle[TDataStdNamedData] {.
    importcpp: "TDataStd_NamedData::Set(@)", header: "TDataStd_NamedData.hxx".}
proc constructTDataStdNamedData*(): TDataStdNamedData {.constructor,
    importcpp: "TDataStd_NamedData(@)", header: "TDataStd_NamedData.hxx".}
proc hasIntegers*(this: TDataStdNamedData): bool {.noSideEffect,
    importcpp: "HasIntegers", header: "TDataStd_NamedData.hxx".}
proc hasInteger*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "HasInteger", header: "TDataStd_NamedData.hxx".}
proc getInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString): cint {.
    importcpp: "GetInteger", header: "TDataStd_NamedData.hxx".}
proc setInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
                theInteger: cint) {.importcpp: "SetInteger",
                                  header: "TDataStd_NamedData.hxx".}
proc getIntegersContainer*(this: var TDataStdNamedData): TColStdDataMapOfStringInteger {.
    importcpp: "GetIntegersContainer", header: "TDataStd_NamedData.hxx".}
proc changeIntegers*(this: var TDataStdNamedData;
                    theIntegers: TColStdDataMapOfStringInteger) {.
    importcpp: "ChangeIntegers", header: "TDataStd_NamedData.hxx".}
proc hasReals*(this: TDataStdNamedData): bool {.noSideEffect, importcpp: "HasReals",
    header: "TDataStd_NamedData.hxx".}
proc hasReal*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "HasReal", header: "TDataStd_NamedData.hxx".}
proc getReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString): cfloat {.
    importcpp: "GetReal", header: "TDataStd_NamedData.hxx".}
proc setReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theReal: cfloat) {.importcpp: "SetReal",
                              header: "TDataStd_NamedData.hxx".}
proc getRealsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringReal {.
    importcpp: "GetRealsContainer", header: "TDataStd_NamedData.hxx".}
proc changeReals*(this: var TDataStdNamedData; theReals: TDataStdDataMapOfStringReal) {.
    importcpp: "ChangeReals", header: "TDataStd_NamedData.hxx".}
proc hasStrings*(this: TDataStdNamedData): bool {.noSideEffect,
    importcpp: "HasStrings", header: "TDataStd_NamedData.hxx".}
proc hasString*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "HasString", header: "TDataStd_NamedData.hxx".}
proc getString*(this: var TDataStdNamedData; theName: TCollectionExtendedString): TCollectionExtendedString {.
    importcpp: "GetString", header: "TDataStd_NamedData.hxx".}
proc setString*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
               theString: TCollectionExtendedString) {.importcpp: "SetString",
    header: "TDataStd_NamedData.hxx".}
proc getStringsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringString {.
    importcpp: "GetStringsContainer", header: "TDataStd_NamedData.hxx".}
proc changeStrings*(this: var TDataStdNamedData;
                   theStrings: TDataStdDataMapOfStringString) {.
    importcpp: "ChangeStrings", header: "TDataStd_NamedData.hxx".}
proc hasBytes*(this: TDataStdNamedData): bool {.noSideEffect, importcpp: "HasBytes",
    header: "TDataStd_NamedData.hxx".}
proc hasByte*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "HasByte", header: "TDataStd_NamedData.hxx".}
proc getByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString): StandardByte {.
    importcpp: "GetByte", header: "TDataStd_NamedData.hxx".}
proc setByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theByte: StandardByte) {.importcpp: "SetByte",
                                    header: "TDataStd_NamedData.hxx".}
proc getBytesContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringByte {.
    importcpp: "GetBytesContainer", header: "TDataStd_NamedData.hxx".}
proc changeBytes*(this: var TDataStdNamedData; theBytes: TDataStdDataMapOfStringByte) {.
    importcpp: "ChangeBytes", header: "TDataStd_NamedData.hxx".}
proc hasArraysOfIntegers*(this: TDataStdNamedData): bool {.noSideEffect,
    importcpp: "HasArraysOfIntegers", header: "TDataStd_NamedData.hxx".}
proc hasArrayOfIntegers*(this: TDataStdNamedData;
                        theName: TCollectionExtendedString): bool {.noSideEffect,
    importcpp: "HasArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc getArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString): Handle[
    TColStdHArray1OfInteger] {.importcpp: "GetArrayOfIntegers",
                              header: "TDataStd_NamedData.hxx".}
proc setArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString;
                        theArrayOfIntegers: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc getArraysOfIntegersContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringHArray1OfInteger {.
    importcpp: "GetArraysOfIntegersContainer", header: "TDataStd_NamedData.hxx".}
proc changeArraysOfIntegers*(this: var TDataStdNamedData; theArraysOfIntegers: TDataStdDataMapOfStringHArray1OfInteger) {.
    importcpp: "ChangeArraysOfIntegers", header: "TDataStd_NamedData.hxx".}
proc hasArraysOfReals*(this: TDataStdNamedData): bool {.noSideEffect,
    importcpp: "HasArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc hasArrayOfReals*(this: TDataStdNamedData; theName: TCollectionExtendedString): bool {.
    noSideEffect, importcpp: "HasArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc getArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString): Handle[
    TColStdHArray1OfReal] {.importcpp: "GetArrayOfReals",
                           header: "TDataStd_NamedData.hxx".}
proc setArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString;
                     theArrayOfReals: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc getArraysOfRealsContainer*(this: var TDataStdNamedData): TDataStdDataMapOfStringHArray1OfReal {.
    importcpp: "GetArraysOfRealsContainer", header: "TDataStd_NamedData.hxx".}
proc changeArraysOfReals*(this: var TDataStdNamedData;
                         theArraysOfReals: TDataStdDataMapOfStringHArray1OfReal) {.
    importcpp: "ChangeArraysOfReals", header: "TDataStd_NamedData.hxx".}
proc clear*(this: var TDataStdNamedData) {.importcpp: "Clear",
                                       header: "TDataStd_NamedData.hxx".}
proc hasDeferredData*(this: TDataStdNamedData): bool {.noSideEffect,
    importcpp: "HasDeferredData", header: "TDataStd_NamedData.hxx".}
proc loadDeferredData*(this: var TDataStdNamedData; theToKeepDeferred: bool = false): bool {.
    importcpp: "LoadDeferredData", header: "TDataStd_NamedData.hxx".}
proc unloadDeferredData*(this: var TDataStdNamedData): bool {.
    importcpp: "UnloadDeferredData", header: "TDataStd_NamedData.hxx".}
proc clear*(this: var TDataStdNamedData) {.importcpp: "clear",
                                       header: "TDataStd_NamedData.hxx".}
proc setInteger*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
                theInteger: cint) {.importcpp: "setInteger",
                                  header: "TDataStd_NamedData.hxx".}
proc setReal*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theReal: cfloat) {.importcpp: "setReal",
                              header: "TDataStd_NamedData.hxx".}
proc setString*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
               theString: TCollectionExtendedString) {.importcpp: "setString",
    header: "TDataStd_NamedData.hxx".}
proc setByte*(this: var TDataStdNamedData; theName: TCollectionExtendedString;
             theByte: StandardByte) {.importcpp: "setByte",
                                    header: "TDataStd_NamedData.hxx".}
proc setArrayOfIntegers*(this: var TDataStdNamedData;
                        theName: TCollectionExtendedString;
                        theArrayOfIntegers: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "setArrayOfIntegers", header: "TDataStd_NamedData.hxx".}
proc setArrayOfReals*(this: var TDataStdNamedData;
                     theName: TCollectionExtendedString;
                     theArrayOfReals: Handle[TColStdHArray1OfReal]) {.
    importcpp: "setArrayOfReals", header: "TDataStd_NamedData.hxx".}
proc id*(this: TDataStdNamedData): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_NamedData.hxx".}
proc restore*(this: var TDataStdNamedData; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_NamedData.hxx".}
proc newEmpty*(this: TDataStdNamedData): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_NamedData.hxx".}
proc paste*(this: TDataStdNamedData; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_NamedData.hxx".}
proc dump*(this: TDataStdNamedData; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_NamedData.hxx".}
proc dumpJson*(this: TDataStdNamedData; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TDataStd_NamedData.hxx".}
type
  TDataStdNamedDatabaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_NamedData::get_type_name(@)",
                            header: "TDataStd_NamedData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_NamedData::get_type_descriptor(@)",
    header: "TDataStd_NamedData.hxx".}
proc dynamicType*(this: TDataStdNamedData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_NamedData.hxx".}


























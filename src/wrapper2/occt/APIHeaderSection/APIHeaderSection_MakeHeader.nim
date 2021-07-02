##  Created on: 1993-08-12
##  Created by: Frederic MAUPAS
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of HeaderSection_FileName"
discard "forward decl of HeaderSection_FileSchema"
discard "forward decl of HeaderSection_FileDescription"
discard "forward decl of StepData_StepModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of TCollection_HAsciiString"
type
  APIHeaderSectionMakeHeader* {.importcpp: "APIHeaderSection_MakeHeader",
                               header: "APIHeaderSection_MakeHeader.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Prepares
                                                                                       ## a
                                                                                       ## new
                                                                                       ## MakeHeader
                                                                                       ## from
                                                                                       ## scratch


proc constructAPIHeaderSectionMakeHeader*(shapetype: StandardInteger = 0): APIHeaderSectionMakeHeader {.
    constructor, importcpp: "APIHeaderSection_MakeHeader(@)",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc constructAPIHeaderSectionMakeHeader*(model: Handle[StepDataStepModel]): APIHeaderSectionMakeHeader {.
    constructor, importcpp: "APIHeaderSection_MakeHeader(@)",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc init*(this: var APIHeaderSectionMakeHeader; nameval: StandardCString) {.
    importcpp: "Init", header: "APIHeaderSection_MakeHeader.hxx".}
proc isDone*(this: APIHeaderSectionMakeHeader): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "APIHeaderSection_MakeHeader.hxx".}
proc apply*(this: APIHeaderSectionMakeHeader; model: Handle[StepDataStepModel]) {.
    noSideEffect, importcpp: "Apply", header: "APIHeaderSection_MakeHeader.hxx".}
proc newModel*(this: APIHeaderSectionMakeHeader;
              protocol: Handle[InterfaceProtocol]): Handle[StepDataStepModel] {.
    noSideEffect, importcpp: "NewModel", header: "APIHeaderSection_MakeHeader.hxx".}
proc hasFn*(this: APIHeaderSectionMakeHeader): StandardBoolean {.noSideEffect,
    importcpp: "HasFn", header: "APIHeaderSection_MakeHeader.hxx".}
proc fnValue*(this: APIHeaderSectionMakeHeader): Handle[HeaderSectionFileName] {.
    noSideEffect, importcpp: "FnValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc setName*(this: var APIHeaderSectionMakeHeader;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc name*(this: APIHeaderSectionMakeHeader): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "APIHeaderSection_MakeHeader.hxx".}
proc setTimeStamp*(this: var APIHeaderSectionMakeHeader;
                  aTimeStamp: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTimeStamp", header: "APIHeaderSection_MakeHeader.hxx".}
proc timeStamp*(this: APIHeaderSectionMakeHeader): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TimeStamp", header: "APIHeaderSection_MakeHeader.hxx".}
proc setAuthor*(this: var APIHeaderSectionMakeHeader;
               aAuthor: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetAuthor", header: "APIHeaderSection_MakeHeader.hxx".}
proc setAuthorValue*(this: var APIHeaderSectionMakeHeader; num: StandardInteger;
                    aAuthor: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAuthorValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc author*(this: APIHeaderSectionMakeHeader): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect, importcpp: "Author",
                                     header: "APIHeaderSection_MakeHeader.hxx".}
proc authorValue*(this: APIHeaderSectionMakeHeader; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "AuthorValue",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc nbAuthor*(this: APIHeaderSectionMakeHeader): StandardInteger {.noSideEffect,
    importcpp: "NbAuthor", header: "APIHeaderSection_MakeHeader.hxx".}
proc setOrganization*(this: var APIHeaderSectionMakeHeader;
                     aOrganization: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetOrganization", header: "APIHeaderSection_MakeHeader.hxx".}
proc setOrganizationValue*(this: var APIHeaderSectionMakeHeader;
                          num: StandardInteger;
                          aOrganization: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetOrganizationValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc organization*(this: APIHeaderSectionMakeHeader): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect, importcpp: "Organization",
                                     header: "APIHeaderSection_MakeHeader.hxx".}
proc organizationValue*(this: APIHeaderSectionMakeHeader; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "OrganizationValue",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc nbOrganization*(this: APIHeaderSectionMakeHeader): StandardInteger {.
    noSideEffect, importcpp: "NbOrganization",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc setPreprocessorVersion*(this: var APIHeaderSectionMakeHeader;
    aPreprocessorVersion: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPreprocessorVersion", header: "APIHeaderSection_MakeHeader.hxx".}
proc preprocessorVersion*(this: APIHeaderSectionMakeHeader): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "PreprocessorVersion",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc setOriginatingSystem*(this: var APIHeaderSectionMakeHeader;
                          aOriginatingSystem: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetOriginatingSystem", header: "APIHeaderSection_MakeHeader.hxx".}
proc originatingSystem*(this: APIHeaderSectionMakeHeader): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "OriginatingSystem",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc setAuthorisation*(this: var APIHeaderSectionMakeHeader;
                      aAuthorisation: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAuthorisation", header: "APIHeaderSection_MakeHeader.hxx".}
proc authorisation*(this: APIHeaderSectionMakeHeader): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Authorisation",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc hasFs*(this: APIHeaderSectionMakeHeader): StandardBoolean {.noSideEffect,
    importcpp: "HasFs", header: "APIHeaderSection_MakeHeader.hxx".}
proc fsValue*(this: APIHeaderSectionMakeHeader): Handle[HeaderSectionFileSchema] {.
    noSideEffect, importcpp: "FsValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc setSchemaIdentifiers*(this: var APIHeaderSectionMakeHeader; aSchemaIdentifiers: Handle[
    InterfaceHArray1OfHAsciiString]) {.importcpp: "SetSchemaIdentifiers",
                                      header: "APIHeaderSection_MakeHeader.hxx".}
proc setSchemaIdentifiersValue*(this: var APIHeaderSectionMakeHeader;
                               num: StandardInteger; aSchemaIdentifier: Handle[
    TCollectionHAsciiString]) {.importcpp: "SetSchemaIdentifiersValue",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc schemaIdentifiers*(this: APIHeaderSectionMakeHeader): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect,
                                     importcpp: "SchemaIdentifiers",
                                     header: "APIHeaderSection_MakeHeader.hxx".}
proc schemaIdentifiersValue*(this: APIHeaderSectionMakeHeader; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SchemaIdentifiersValue",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc nbSchemaIdentifiers*(this: APIHeaderSectionMakeHeader): StandardInteger {.
    noSideEffect, importcpp: "NbSchemaIdentifiers",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc addSchemaIdentifier*(this: var APIHeaderSectionMakeHeader;
                         aSchemaIdentifier: Handle[TCollectionHAsciiString]) {.
    importcpp: "AddSchemaIdentifier", header: "APIHeaderSection_MakeHeader.hxx".}
proc hasFd*(this: APIHeaderSectionMakeHeader): StandardBoolean {.noSideEffect,
    importcpp: "HasFd", header: "APIHeaderSection_MakeHeader.hxx".}
proc fdValue*(this: APIHeaderSectionMakeHeader): Handle[
    HeaderSectionFileDescription] {.noSideEffect, importcpp: "FdValue",
                                   header: "APIHeaderSection_MakeHeader.hxx".}
proc setDescription*(this: var APIHeaderSectionMakeHeader;
                    aDescription: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetDescription", header: "APIHeaderSection_MakeHeader.hxx".}
proc setDescriptionValue*(this: var APIHeaderSectionMakeHeader;
                         num: StandardInteger;
                         aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescriptionValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc description*(this: APIHeaderSectionMakeHeader): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect, importcpp: "Description",
                                     header: "APIHeaderSection_MakeHeader.hxx".}
proc descriptionValue*(this: APIHeaderSectionMakeHeader; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "DescriptionValue",
                              header: "APIHeaderSection_MakeHeader.hxx".}
proc nbDescription*(this: APIHeaderSectionMakeHeader): StandardInteger {.
    noSideEffect, importcpp: "NbDescription",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc setImplementationLevel*(this: var APIHeaderSectionMakeHeader;
    aImplementationLevel: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetImplementationLevel", header: "APIHeaderSection_MakeHeader.hxx".}
proc implementationLevel*(this: APIHeaderSectionMakeHeader): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ImplementationLevel",
                              header: "APIHeaderSection_MakeHeader.hxx".}


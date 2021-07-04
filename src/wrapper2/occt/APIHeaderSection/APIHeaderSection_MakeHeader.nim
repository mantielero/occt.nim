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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_CString,
  ../Interface/Interface_HArray1OfHAsciiString

discard "forward decl of HeaderSection_FileName"
discard "forward decl of HeaderSection_FileSchema"
discard "forward decl of HeaderSection_FileDescription"
discard "forward decl of StepData_StepModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of TCollection_HAsciiString"
type
  APIHeaderSection_MakeHeader* {.importcpp: "APIHeaderSection_MakeHeader",
                                header: "APIHeaderSection_MakeHeader.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Prepares
                                                                                        ## a
                                                                                        ## new
                                                                                        ## MakeHeader
                                                                                        ## from
                                                                                        ## scratch


proc constructAPIHeaderSection_MakeHeader*(shapetype: Standard_Integer = 0): APIHeaderSection_MakeHeader {.
    constructor, importcpp: "APIHeaderSection_MakeHeader(@)",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc constructAPIHeaderSection_MakeHeader*(model: handle[StepData_StepModel]): APIHeaderSection_MakeHeader {.
    constructor, importcpp: "APIHeaderSection_MakeHeader(@)",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc Init*(this: var APIHeaderSection_MakeHeader; nameval: Standard_CString) {.
    importcpp: "Init", header: "APIHeaderSection_MakeHeader.hxx".}
proc IsDone*(this: APIHeaderSection_MakeHeader): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "APIHeaderSection_MakeHeader.hxx".}
proc Apply*(this: APIHeaderSection_MakeHeader; model: handle[StepData_StepModel]) {.
    noSideEffect, importcpp: "Apply", header: "APIHeaderSection_MakeHeader.hxx".}
proc NewModel*(this: APIHeaderSection_MakeHeader;
              protocol: handle[Interface_Protocol]): handle[StepData_StepModel] {.
    noSideEffect, importcpp: "NewModel", header: "APIHeaderSection_MakeHeader.hxx".}
proc HasFn*(this: APIHeaderSection_MakeHeader): Standard_Boolean {.noSideEffect,
    importcpp: "HasFn", header: "APIHeaderSection_MakeHeader.hxx".}
proc FnValue*(this: APIHeaderSection_MakeHeader): handle[HeaderSection_FileName] {.
    noSideEffect, importcpp: "FnValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetName*(this: var APIHeaderSection_MakeHeader;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc Name*(this: APIHeaderSection_MakeHeader): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetTimeStamp*(this: var APIHeaderSection_MakeHeader;
                  aTimeStamp: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTimeStamp", header: "APIHeaderSection_MakeHeader.hxx".}
proc TimeStamp*(this: APIHeaderSection_MakeHeader): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TimeStamp", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetAuthor*(this: var APIHeaderSection_MakeHeader;
               aAuthor: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetAuthor", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetAuthorValue*(this: var APIHeaderSection_MakeHeader; num: Standard_Integer;
                    aAuthor: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAuthorValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc Author*(this: APIHeaderSection_MakeHeader): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect, importcpp: "Author",
                                      header: "APIHeaderSection_MakeHeader.hxx".}
proc AuthorValue*(this: APIHeaderSection_MakeHeader; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AuthorValue",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc NbAuthor*(this: APIHeaderSection_MakeHeader): Standard_Integer {.noSideEffect,
    importcpp: "NbAuthor", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetOrganization*(this: var APIHeaderSection_MakeHeader;
                     aOrganization: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetOrganization", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetOrganizationValue*(this: var APIHeaderSection_MakeHeader;
                          num: Standard_Integer;
                          aOrganization: handle[TCollection_HAsciiString]) {.
    importcpp: "SetOrganizationValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc Organization*(this: APIHeaderSection_MakeHeader): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect, importcpp: "Organization",
                                      header: "APIHeaderSection_MakeHeader.hxx".}
proc OrganizationValue*(this: APIHeaderSection_MakeHeader; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "OrganizationValue",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc NbOrganization*(this: APIHeaderSection_MakeHeader): Standard_Integer {.
    noSideEffect, importcpp: "NbOrganization",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc SetPreprocessorVersion*(this: var APIHeaderSection_MakeHeader;
    aPreprocessorVersion: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPreprocessorVersion", header: "APIHeaderSection_MakeHeader.hxx".}
proc PreprocessorVersion*(this: APIHeaderSection_MakeHeader): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "PreprocessorVersion",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc SetOriginatingSystem*(this: var APIHeaderSection_MakeHeader;
                          aOriginatingSystem: handle[TCollection_HAsciiString]) {.
    importcpp: "SetOriginatingSystem", header: "APIHeaderSection_MakeHeader.hxx".}
proc OriginatingSystem*(this: APIHeaderSection_MakeHeader): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "OriginatingSystem",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc SetAuthorisation*(this: var APIHeaderSection_MakeHeader;
                      aAuthorisation: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAuthorisation", header: "APIHeaderSection_MakeHeader.hxx".}
proc Authorisation*(this: APIHeaderSection_MakeHeader): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Authorisation",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc HasFs*(this: APIHeaderSection_MakeHeader): Standard_Boolean {.noSideEffect,
    importcpp: "HasFs", header: "APIHeaderSection_MakeHeader.hxx".}
proc FsValue*(this: APIHeaderSection_MakeHeader): handle[HeaderSection_FileSchema] {.
    noSideEffect, importcpp: "FsValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetSchemaIdentifiers*(this: var APIHeaderSection_MakeHeader; aSchemaIdentifiers: handle[
    Interface_HArray1OfHAsciiString]) {.importcpp: "SetSchemaIdentifiers", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetSchemaIdentifiersValue*(this: var APIHeaderSection_MakeHeader;
                               num: Standard_Integer; aSchemaIdentifier: handle[
    TCollection_HAsciiString]) {.importcpp: "SetSchemaIdentifiersValue",
                                header: "APIHeaderSection_MakeHeader.hxx".}
proc SchemaIdentifiers*(this: APIHeaderSection_MakeHeader): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect,
                                      importcpp: "SchemaIdentifiers",
                                      header: "APIHeaderSection_MakeHeader.hxx".}
proc SchemaIdentifiersValue*(this: APIHeaderSection_MakeHeader;
                            num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "SchemaIdentifiersValue",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc NbSchemaIdentifiers*(this: APIHeaderSection_MakeHeader): Standard_Integer {.
    noSideEffect, importcpp: "NbSchemaIdentifiers",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc AddSchemaIdentifier*(this: var APIHeaderSection_MakeHeader;
                         aSchemaIdentifier: handle[TCollection_HAsciiString]) {.
    importcpp: "AddSchemaIdentifier", header: "APIHeaderSection_MakeHeader.hxx".}
proc HasFd*(this: APIHeaderSection_MakeHeader): Standard_Boolean {.noSideEffect,
    importcpp: "HasFd", header: "APIHeaderSection_MakeHeader.hxx".}
proc FdValue*(this: APIHeaderSection_MakeHeader): handle[
    HeaderSection_FileDescription] {.noSideEffect, importcpp: "FdValue",
                                    header: "APIHeaderSection_MakeHeader.hxx".}
proc SetDescription*(this: var APIHeaderSection_MakeHeader;
                    aDescription: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetDescription", header: "APIHeaderSection_MakeHeader.hxx".}
proc SetDescriptionValue*(this: var APIHeaderSection_MakeHeader;
                         num: Standard_Integer;
                         aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescriptionValue", header: "APIHeaderSection_MakeHeader.hxx".}
proc Description*(this: APIHeaderSection_MakeHeader): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect, importcpp: "Description",
                                      header: "APIHeaderSection_MakeHeader.hxx".}
proc DescriptionValue*(this: APIHeaderSection_MakeHeader; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "DescriptionValue",
                               header: "APIHeaderSection_MakeHeader.hxx".}
proc NbDescription*(this: APIHeaderSection_MakeHeader): Standard_Integer {.
    noSideEffect, importcpp: "NbDescription",
    header: "APIHeaderSection_MakeHeader.hxx".}
proc SetImplementationLevel*(this: var APIHeaderSection_MakeHeader;
    aImplementationLevel: handle[TCollection_HAsciiString]) {.
    importcpp: "SetImplementationLevel", header: "APIHeaderSection_MakeHeader.hxx".}
proc ImplementationLevel*(this: APIHeaderSection_MakeHeader): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ImplementationLevel",
                               header: "APIHeaderSection_MakeHeader.hxx".}
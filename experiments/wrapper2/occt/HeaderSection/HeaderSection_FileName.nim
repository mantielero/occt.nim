##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_HArray1OfHAsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of HeaderSection_FileName"
discard "forward decl of HeaderSection_FileName"
type
  Handle_HeaderSection_FileName* = handle[HeaderSection_FileName]
  HeaderSection_FileName* {.importcpp: "HeaderSection_FileName",
                           header: "HeaderSection_FileName.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## FileName


proc constructHeaderSection_FileName*(): HeaderSection_FileName {.constructor,
    importcpp: "HeaderSection_FileName(@)", header: "HeaderSection_FileName.hxx".}
proc Init*(this: var HeaderSection_FileName;
          aName: handle[TCollection_HAsciiString];
          aTimeStamp: handle[TCollection_HAsciiString];
          aAuthor: handle[Interface_HArray1OfHAsciiString];
          aOrganization: handle[Interface_HArray1OfHAsciiString];
          aPreprocessorVersion: handle[TCollection_HAsciiString];
          aOriginatingSystem: handle[TCollection_HAsciiString];
          aAuthorisation: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "HeaderSection_FileName.hxx".}
proc SetName*(this: var HeaderSection_FileName;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "HeaderSection_FileName.hxx".}
proc Name*(this: HeaderSection_FileName): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "HeaderSection_FileName.hxx".}
proc SetTimeStamp*(this: var HeaderSection_FileName;
                  aTimeStamp: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTimeStamp", header: "HeaderSection_FileName.hxx".}
proc TimeStamp*(this: HeaderSection_FileName): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TimeStamp", header: "HeaderSection_FileName.hxx".}
proc SetAuthor*(this: var HeaderSection_FileName;
               aAuthor: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetAuthor", header: "HeaderSection_FileName.hxx".}
proc Author*(this: HeaderSection_FileName): handle[Interface_HArray1OfHAsciiString] {.
    noSideEffect, importcpp: "Author", header: "HeaderSection_FileName.hxx".}
proc AuthorValue*(this: HeaderSection_FileName; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AuthorValue",
                               header: "HeaderSection_FileName.hxx".}
proc NbAuthor*(this: HeaderSection_FileName): Standard_Integer {.noSideEffect,
    importcpp: "NbAuthor", header: "HeaderSection_FileName.hxx".}
proc SetOrganization*(this: var HeaderSection_FileName;
                     aOrganization: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetOrganization", header: "HeaderSection_FileName.hxx".}
proc Organization*(this: HeaderSection_FileName): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect, importcpp: "Organization",
                                      header: "HeaderSection_FileName.hxx".}
proc OrganizationValue*(this: HeaderSection_FileName; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "OrganizationValue",
                               header: "HeaderSection_FileName.hxx".}
proc NbOrganization*(this: HeaderSection_FileName): Standard_Integer {.noSideEffect,
    importcpp: "NbOrganization", header: "HeaderSection_FileName.hxx".}
proc SetPreprocessorVersion*(this: var HeaderSection_FileName; aPreprocessorVersion: handle[
    TCollection_HAsciiString]) {.importcpp: "SetPreprocessorVersion",
                                header: "HeaderSection_FileName.hxx".}
proc PreprocessorVersion*(this: HeaderSection_FileName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "PreprocessorVersion",
                               header: "HeaderSection_FileName.hxx".}
proc SetOriginatingSystem*(this: var HeaderSection_FileName;
                          aOriginatingSystem: handle[TCollection_HAsciiString]) {.
    importcpp: "SetOriginatingSystem", header: "HeaderSection_FileName.hxx".}
proc OriginatingSystem*(this: HeaderSection_FileName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "OriginatingSystem",
                               header: "HeaderSection_FileName.hxx".}
proc SetAuthorisation*(this: var HeaderSection_FileName;
                      aAuthorisation: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAuthorisation", header: "HeaderSection_FileName.hxx".}
proc Authorisation*(this: HeaderSection_FileName): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Authorisation", header: "HeaderSection_FileName.hxx".}
type
  HeaderSection_FileNamebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HeaderSection_FileName::get_type_name(@)",
                              header: "HeaderSection_FileName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HeaderSection_FileName::get_type_descriptor(@)",
    header: "HeaderSection_FileName.hxx".}
proc DynamicType*(this: HeaderSection_FileName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HeaderSection_FileName.hxx".}
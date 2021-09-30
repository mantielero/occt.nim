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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of HeaderSection_FileName"
discard "forward decl of HeaderSection_FileName"
type
  HandleC1C1* = Handle[HeaderSectionFileName]
  HeaderSectionFileName* {.importcpp: "HeaderSection_FileName",
                          header: "HeaderSection_FileName.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## a
                                                                                                ## FileName


proc constructHeaderSectionFileName*(): HeaderSectionFileName {.constructor,
    importcpp: "HeaderSection_FileName(@)", header: "HeaderSection_FileName.hxx".}
proc init*(this: var HeaderSectionFileName; aName: Handle[TCollectionHAsciiString];
          aTimeStamp: Handle[TCollectionHAsciiString];
          aAuthor: Handle[InterfaceHArray1OfHAsciiString];
          aOrganization: Handle[InterfaceHArray1OfHAsciiString];
          aPreprocessorVersion: Handle[TCollectionHAsciiString];
          aOriginatingSystem: Handle[TCollectionHAsciiString];
          aAuthorisation: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "HeaderSection_FileName.hxx".}
proc setName*(this: var HeaderSectionFileName;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "HeaderSection_FileName.hxx".}
proc name*(this: HeaderSectionFileName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "HeaderSection_FileName.hxx".}
proc setTimeStamp*(this: var HeaderSectionFileName;
                  aTimeStamp: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTimeStamp", header: "HeaderSection_FileName.hxx".}
proc timeStamp*(this: HeaderSectionFileName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TimeStamp", header: "HeaderSection_FileName.hxx".}
proc setAuthor*(this: var HeaderSectionFileName;
               aAuthor: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetAuthor", header: "HeaderSection_FileName.hxx".}
proc author*(this: HeaderSectionFileName): Handle[InterfaceHArray1OfHAsciiString] {.
    noSideEffect, importcpp: "Author", header: "HeaderSection_FileName.hxx".}
proc authorValue*(this: HeaderSectionFileName; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "AuthorValue",
                              header: "HeaderSection_FileName.hxx".}
proc nbAuthor*(this: HeaderSectionFileName): cint {.noSideEffect,
    importcpp: "NbAuthor", header: "HeaderSection_FileName.hxx".}
proc setOrganization*(this: var HeaderSectionFileName;
                     aOrganization: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetOrganization", header: "HeaderSection_FileName.hxx".}
proc organization*(this: HeaderSectionFileName): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect, importcpp: "Organization",
                                     header: "HeaderSection_FileName.hxx".}
proc organizationValue*(this: HeaderSectionFileName; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "OrganizationValue",
                              header: "HeaderSection_FileName.hxx".}
proc nbOrganization*(this: HeaderSectionFileName): cint {.noSideEffect,
    importcpp: "NbOrganization", header: "HeaderSection_FileName.hxx".}
proc setPreprocessorVersion*(this: var HeaderSectionFileName; aPreprocessorVersion: Handle[
    TCollectionHAsciiString]) {.importcpp: "SetPreprocessorVersion",
                               header: "HeaderSection_FileName.hxx".}
proc preprocessorVersion*(this: HeaderSectionFileName): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "PreprocessorVersion",
                              header: "HeaderSection_FileName.hxx".}
proc setOriginatingSystem*(this: var HeaderSectionFileName;
                          aOriginatingSystem: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetOriginatingSystem", header: "HeaderSection_FileName.hxx".}
proc originatingSystem*(this: HeaderSectionFileName): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "OriginatingSystem",
                              header: "HeaderSection_FileName.hxx".}
proc setAuthorisation*(this: var HeaderSectionFileName;
                      aAuthorisation: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAuthorisation", header: "HeaderSection_FileName.hxx".}
proc authorisation*(this: HeaderSectionFileName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Authorisation", header: "HeaderSection_FileName.hxx".}
type
  HeaderSectionFileNamebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HeaderSection_FileName::get_type_name(@)",
                            header: "HeaderSection_FileName.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HeaderSection_FileName::get_type_descriptor(@)",
    header: "HeaderSection_FileName.hxx".}
proc dynamicType*(this: HeaderSectionFileName): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HeaderSection_FileName.hxx".}


























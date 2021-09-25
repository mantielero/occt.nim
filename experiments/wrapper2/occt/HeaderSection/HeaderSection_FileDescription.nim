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
discard "forward decl of HeaderSection_FileDescription"
discard "forward decl of HeaderSection_FileDescription"
type
  HandleHeaderSectionFileDescription* = Handle[HeaderSectionFileDescription]
  HeaderSectionFileDescription* {.importcpp: "HeaderSection_FileDescription",
                                 header: "HeaderSection_FileDescription.hxx",
                                 bycopy.} = object of StandardTransient ## ! Returns a
                                                                   ## FileDescription


proc constructHeaderSectionFileDescription*(): HeaderSectionFileDescription {.
    constructor, importcpp: "HeaderSection_FileDescription(@)",
    header: "HeaderSection_FileDescription.hxx".}
proc init*(this: var HeaderSectionFileDescription;
          aDescription: Handle[InterfaceHArray1OfHAsciiString];
          aImplementationLevel: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "HeaderSection_FileDescription.hxx".}
proc setDescription*(this: var HeaderSectionFileDescription;
                    aDescription: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetDescription", header: "HeaderSection_FileDescription.hxx".}
proc description*(this: HeaderSectionFileDescription): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect, importcpp: "Description", header: "HeaderSection_FileDescription.hxx".}
proc descriptionValue*(this: HeaderSectionFileDescription; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "DescriptionValue",
                              header: "HeaderSection_FileDescription.hxx".}
proc nbDescription*(this: HeaderSectionFileDescription): int {.noSideEffect,
    importcpp: "NbDescription", header: "HeaderSection_FileDescription.hxx".}
proc setImplementationLevel*(this: var HeaderSectionFileDescription;
    aImplementationLevel: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetImplementationLevel",
    header: "HeaderSection_FileDescription.hxx".}
proc implementationLevel*(this: HeaderSectionFileDescription): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ImplementationLevel",
                              header: "HeaderSection_FileDescription.hxx".}
type
  HeaderSectionFileDescriptionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HeaderSection_FileDescription::get_type_name(@)",
                            header: "HeaderSection_FileDescription.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HeaderSection_FileDescription::get_type_descriptor(@)",
    header: "HeaderSection_FileDescription.hxx".}
proc dynamicType*(this: HeaderSectionFileDescription): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "HeaderSection_FileDescription.hxx".}

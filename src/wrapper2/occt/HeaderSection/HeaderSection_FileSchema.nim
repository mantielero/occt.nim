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
discard "forward decl of HeaderSection_FileSchema"
discard "forward decl of HeaderSection_FileSchema"
type
  HandleHeaderSectionFileSchema* = Handle[HeaderSectionFileSchema]
  HeaderSectionFileSchema* {.importcpp: "HeaderSection_FileSchema",
                            header: "HeaderSection_FileSchema.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## FileSchema


proc constructHeaderSectionFileSchema*(): HeaderSectionFileSchema {.constructor,
    importcpp: "HeaderSection_FileSchema(@)",
    header: "HeaderSection_FileSchema.hxx".}
proc init*(this: var HeaderSectionFileSchema;
          aSchemaIdentifiers: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "Init", header: "HeaderSection_FileSchema.hxx".}
proc setSchemaIdentifiers*(this: var HeaderSectionFileSchema; aSchemaIdentifiers: Handle[
    InterfaceHArray1OfHAsciiString]) {.importcpp: "SetSchemaIdentifiers",
                                      header: "HeaderSection_FileSchema.hxx".}
proc schemaIdentifiers*(this: HeaderSectionFileSchema): Handle[
    InterfaceHArray1OfHAsciiString] {.noSideEffect,
                                     importcpp: "SchemaIdentifiers",
                                     header: "HeaderSection_FileSchema.hxx".}
proc schemaIdentifiersValue*(this: HeaderSectionFileSchema; num: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SchemaIdentifiersValue",
                              header: "HeaderSection_FileSchema.hxx".}
proc nbSchemaIdentifiers*(this: HeaderSectionFileSchema): StandardInteger {.
    noSideEffect, importcpp: "NbSchemaIdentifiers",
    header: "HeaderSection_FileSchema.hxx".}
type
  HeaderSectionFileSchemabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HeaderSection_FileSchema::get_type_name(@)",
                            header: "HeaderSection_FileSchema.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HeaderSection_FileSchema::get_type_descriptor(@)",
    header: "HeaderSection_FileSchema.hxx".}
proc dynamicType*(this: HeaderSectionFileSchema): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "HeaderSection_FileSchema.hxx".}


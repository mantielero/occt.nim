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
discard "forward decl of HeaderSection_FileSchema"
discard "forward decl of HeaderSection_FileSchema"
type
  Handle_HeaderSection_FileSchema* = handle[HeaderSection_FileSchema]
  HeaderSection_FileSchema* {.importcpp: "HeaderSection_FileSchema",
                             header: "HeaderSection_FileSchema.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## FileSchema


proc constructHeaderSection_FileSchema*(): HeaderSection_FileSchema {.constructor,
    importcpp: "HeaderSection_FileSchema(@)",
    header: "HeaderSection_FileSchema.hxx".}
proc Init*(this: var HeaderSection_FileSchema;
          aSchemaIdentifiers: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "Init", header: "HeaderSection_FileSchema.hxx".}
proc SetSchemaIdentifiers*(this: var HeaderSection_FileSchema; aSchemaIdentifiers: handle[
    Interface_HArray1OfHAsciiString]) {.importcpp: "SetSchemaIdentifiers",
                                       header: "HeaderSection_FileSchema.hxx".}
proc SchemaIdentifiers*(this: HeaderSection_FileSchema): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect,
                                      importcpp: "SchemaIdentifiers",
                                      header: "HeaderSection_FileSchema.hxx".}
proc SchemaIdentifiersValue*(this: HeaderSection_FileSchema; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "SchemaIdentifiersValue",
                               header: "HeaderSection_FileSchema.hxx".}
proc NbSchemaIdentifiers*(this: HeaderSection_FileSchema): Standard_Integer {.
    noSideEffect, importcpp: "NbSchemaIdentifiers",
    header: "HeaderSection_FileSchema.hxx".}
type
  HeaderSection_FileSchemabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HeaderSection_FileSchema::get_type_name(@)",
                              header: "HeaderSection_FileSchema.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HeaderSection_FileSchema::get_type_descriptor(@)",
    header: "HeaderSection_FileSchema.hxx".}
proc DynamicType*(this: HeaderSection_FileSchema): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HeaderSection_FileSchema.hxx".}
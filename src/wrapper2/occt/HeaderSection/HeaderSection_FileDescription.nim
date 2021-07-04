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
discard "forward decl of HeaderSection_FileDescription"
discard "forward decl of HeaderSection_FileDescription"
type
  Handle_HeaderSection_FileDescription* = handle[HeaderSection_FileDescription]
  HeaderSection_FileDescription* {.importcpp: "HeaderSection_FileDescription",
                                  header: "HeaderSection_FileDescription.hxx",
                                  bycopy.} = object of Standard_Transient ## ! Returns a
                                                                     ## FileDescription


proc constructHeaderSection_FileDescription*(): HeaderSection_FileDescription {.
    constructor, importcpp: "HeaderSection_FileDescription(@)",
    header: "HeaderSection_FileDescription.hxx".}
proc Init*(this: var HeaderSection_FileDescription;
          aDescription: handle[Interface_HArray1OfHAsciiString];
          aImplementationLevel: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "HeaderSection_FileDescription.hxx".}
proc SetDescription*(this: var HeaderSection_FileDescription;
                    aDescription: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetDescription", header: "HeaderSection_FileDescription.hxx".}
proc Description*(this: HeaderSection_FileDescription): handle[
    Interface_HArray1OfHAsciiString] {.noSideEffect, importcpp: "Description", header: "HeaderSection_FileDescription.hxx".}
proc DescriptionValue*(this: HeaderSection_FileDescription; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "DescriptionValue",
                               header: "HeaderSection_FileDescription.hxx".}
proc NbDescription*(this: HeaderSection_FileDescription): Standard_Integer {.
    noSideEffect, importcpp: "NbDescription",
    header: "HeaderSection_FileDescription.hxx".}
proc SetImplementationLevel*(this: var HeaderSection_FileDescription;
    aImplementationLevel: handle[TCollection_HAsciiString]) {.
    importcpp: "SetImplementationLevel",
    header: "HeaderSection_FileDescription.hxx".}
proc ImplementationLevel*(this: HeaderSection_FileDescription): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ImplementationLevel",
                               header: "HeaderSection_FileDescription.hxx".}
type
  HeaderSection_FileDescriptionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HeaderSection_FileDescription::get_type_name(@)",
                              header: "HeaderSection_FileDescription.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HeaderSection_FileDescription::get_type_descriptor(@)",
    header: "HeaderSection_FileDescription.hxx".}
proc DynamicType*(this: HeaderSection_FileDescription): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "HeaderSection_FileDescription.hxx".}
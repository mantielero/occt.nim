##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Interface/Interface_HArray1OfHAsciiString, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_MacroDef"
discard "forward decl of IGESDefs_MacroDef"
type
  Handle_IGESDefs_MacroDef* = handle[IGESDefs_MacroDef]

## ! defines IGES Macro Definition Entity, Type <306> Form <0>
## ! in package IGESDefs
## ! This Class specifies the action of a specific MACRO.
## ! After specification MACRO can be used as necessary
## ! by means of MACRO class instance entity.

type
  IGESDefs_MacroDef* {.importcpp: "IGESDefs_MacroDef",
                      header: "IGESDefs_MacroDef.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_MacroDef*(): IGESDefs_MacroDef {.constructor,
    importcpp: "IGESDefs_MacroDef(@)", header: "IGESDefs_MacroDef.hxx".}
proc Init*(this: var IGESDefs_MacroDef; `macro`: handle[TCollection_HAsciiString];
          entityTypeID: Standard_Integer;
          langStatements: handle[Interface_HArray1OfHAsciiString];
          endMacro: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESDefs_MacroDef.hxx".}
proc NbStatements*(this: IGESDefs_MacroDef): Standard_Integer {.noSideEffect,
    importcpp: "NbStatements", header: "IGESDefs_MacroDef.hxx".}
proc MACRO*(this: IGESDefs_MacroDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "MACRO", header: "IGESDefs_MacroDef.hxx".}
proc EntityTypeID*(this: IGESDefs_MacroDef): Standard_Integer {.noSideEffect,
    importcpp: "EntityTypeID", header: "IGESDefs_MacroDef.hxx".}
proc LanguageStatement*(this: IGESDefs_MacroDef; StatNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "LanguageStatement",
                               header: "IGESDefs_MacroDef.hxx".}
proc ENDMACRO*(this: IGESDefs_MacroDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ENDMACRO", header: "IGESDefs_MacroDef.hxx".}
type
  IGESDefs_MacroDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_MacroDef::get_type_name(@)",
                              header: "IGESDefs_MacroDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_MacroDef::get_type_descriptor(@)",
    header: "IGESDefs_MacroDef.hxx".}
proc DynamicType*(this: IGESDefs_MacroDef): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_MacroDef.hxx".}
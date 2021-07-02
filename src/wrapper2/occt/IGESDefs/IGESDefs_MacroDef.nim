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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_MacroDef"
discard "forward decl of IGESDefs_MacroDef"
type
  HandleIGESDefsMacroDef* = Handle[IGESDefsMacroDef]

## ! defines IGES Macro Definition Entity, Type <306> Form <0>
## ! in package IGESDefs
## ! This Class specifies the action of a specific MACRO.
## ! After specification MACRO can be used as necessary
## ! by means of MACRO class instance entity.

type
  IGESDefsMacroDef* {.importcpp: "IGESDefs_MacroDef",
                     header: "IGESDefs_MacroDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsMacroDef*(): IGESDefsMacroDef {.constructor,
    importcpp: "IGESDefs_MacroDef(@)", header: "IGESDefs_MacroDef.hxx".}
proc init*(this: var IGESDefsMacroDef; `macro`: Handle[TCollectionHAsciiString];
          entityTypeID: StandardInteger;
          langStatements: Handle[InterfaceHArray1OfHAsciiString];
          endMacro: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESDefs_MacroDef.hxx".}
proc nbStatements*(this: IGESDefsMacroDef): StandardInteger {.noSideEffect,
    importcpp: "NbStatements", header: "IGESDefs_MacroDef.hxx".}
proc `macro`*(this: IGESDefsMacroDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "MACRO", header: "IGESDefs_MacroDef.hxx".}
proc entityTypeID*(this: IGESDefsMacroDef): StandardInteger {.noSideEffect,
    importcpp: "EntityTypeID", header: "IGESDefs_MacroDef.hxx".}
proc languageStatement*(this: IGESDefsMacroDef; statNum: StandardInteger): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "LanguageStatement",
                              header: "IGESDefs_MacroDef.hxx".}
proc endmacro*(this: IGESDefsMacroDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ENDMACRO", header: "IGESDefs_MacroDef.hxx".}
type
  IGESDefsMacroDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_MacroDef::get_type_name(@)",
                            header: "IGESDefs_MacroDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_MacroDef::get_type_descriptor(@)",
    header: "IGESDefs_MacroDef.hxx".}
proc dynamicType*(this: IGESDefsMacroDef): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_MacroDef.hxx".}


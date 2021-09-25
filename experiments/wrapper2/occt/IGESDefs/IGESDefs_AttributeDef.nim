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
discard "forward decl of IGESDefs_HArray1OfHArray1OfTextDisplayTemplate"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDefs_AttributeDef"
discard "forward decl of IGESDefs_AttributeDef"
type
  HandleIGESDefsAttributeDef* = Handle[IGESDefsAttributeDef]

## ! defines IGES Attribute Table Definition Entity,
## ! Type <322> Form [0, 1, 2] in package IGESDefs.
## ! This is class is used to support the concept of well
## ! defined collection of attributes, whether it is a table
## ! or a single row of attributes.

type
  IGESDefsAttributeDef* {.importcpp: "IGESDefs_AttributeDef",
                         header: "IGESDefs_AttributeDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsAttributeDef*(): IGESDefsAttributeDef {.constructor,
    importcpp: "IGESDefs_AttributeDef(@)", header: "IGESDefs_AttributeDef.hxx".}
proc init*(this: var IGESDefsAttributeDef; aName: Handle[TCollectionHAsciiString];
          aListType: int; attrTypes: Handle[TColStdHArray1OfInteger];
          attrValueDataTypes: Handle[TColStdHArray1OfInteger];
          attrValueCounts: Handle[TColStdHArray1OfInteger];
          attrValues: Handle[TColStdHArray1OfTransient]; attrValuePointers: Handle[
    IGESDefsHArray1OfHArray1OfTextDisplayTemplate]) {.importcpp: "Init",
    header: "IGESDefs_AttributeDef.hxx".}
proc hasTableName*(this: IGESDefsAttributeDef): bool {.noSideEffect,
    importcpp: "HasTableName", header: "IGESDefs_AttributeDef.hxx".}
proc tableName*(this: IGESDefsAttributeDef): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TableName", header: "IGESDefs_AttributeDef.hxx".}
proc listType*(this: IGESDefsAttributeDef): int {.noSideEffect,
    importcpp: "ListType", header: "IGESDefs_AttributeDef.hxx".}
proc nbAttributes*(this: IGESDefsAttributeDef): int {.noSideEffect,
    importcpp: "NbAttributes", header: "IGESDefs_AttributeDef.hxx".}
proc attributeType*(this: IGESDefsAttributeDef; num: int): int {.noSideEffect,
    importcpp: "AttributeType", header: "IGESDefs_AttributeDef.hxx".}
proc attributeValueDataType*(this: IGESDefsAttributeDef; num: int): int {.
    noSideEffect, importcpp: "AttributeValueDataType",
    header: "IGESDefs_AttributeDef.hxx".}
proc attributeValueCount*(this: IGESDefsAttributeDef; num: int): int {.noSideEffect,
    importcpp: "AttributeValueCount", header: "IGESDefs_AttributeDef.hxx".}
proc hasValues*(this: IGESDefsAttributeDef): bool {.noSideEffect,
    importcpp: "HasValues", header: "IGESDefs_AttributeDef.hxx".}
proc hasTextDisplay*(this: IGESDefsAttributeDef): bool {.noSideEffect,
    importcpp: "HasTextDisplay", header: "IGESDefs_AttributeDef.hxx".}
proc attributeTextDisplay*(this: IGESDefsAttributeDef; attrNum: int; pointerNum: int): Handle[
    IGESGraphTextDisplayTemplate] {.noSideEffect,
                                   importcpp: "AttributeTextDisplay",
                                   header: "IGESDefs_AttributeDef.hxx".}
proc attributeList*(this: IGESDefsAttributeDef; attrNum: int): Handle[
    StandardTransient] {.noSideEffect, importcpp: "AttributeList",
                        header: "IGESDefs_AttributeDef.hxx".}
proc attributeAsInteger*(this: IGESDefsAttributeDef; attrNum: int; valueNum: int): int {.
    noSideEffect, importcpp: "AttributeAsInteger",
    header: "IGESDefs_AttributeDef.hxx".}
proc attributeAsReal*(this: IGESDefsAttributeDef; attrNum: int; valueNum: int): float {.
    noSideEffect, importcpp: "AttributeAsReal", header: "IGESDefs_AttributeDef.hxx".}
proc attributeAsString*(this: IGESDefsAttributeDef; attrNum: int; valueNum: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "AttributeAsString",
                              header: "IGESDefs_AttributeDef.hxx".}
proc attributeAsEntity*(this: IGESDefsAttributeDef; attrNum: int; valueNum: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "AttributeAsEntity",
                         header: "IGESDefs_AttributeDef.hxx".}
proc attributeAsLogical*(this: IGESDefsAttributeDef; attrNum: int; valueNum: int): bool {.
    noSideEffect, importcpp: "AttributeAsLogical",
    header: "IGESDefs_AttributeDef.hxx".}
type
  IGESDefsAttributeDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_AttributeDef::get_type_name(@)",
                            header: "IGESDefs_AttributeDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_AttributeDef::get_type_descriptor(@)",
    header: "IGESDefs_AttributeDef.hxx".}
proc dynamicType*(this: IGESDefsAttributeDef): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_AttributeDef.hxx".}

##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of IGESDefs_AttributeDef"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDefs_AttributeTable"
discard "forward decl of IGESDefs_AttributeTable"
type
  HandleC1C1* = Handle[IGESDefsAttributeTable]

## ! defines IGES Attribute Table, Type <422> Form <0, 1>
## ! in package IGESDefs
## ! This class is used to represent an occurence of
## ! Attribute Table. This Class may be independent
## ! or dependent or pointed at by other Entities.

type
  IGESDefsAttributeTable* {.importcpp: "IGESDefs_AttributeTable",
                           header: "IGESDefs_AttributeTable.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsAttributeTable*(): IGESDefsAttributeTable {.constructor,
    importcpp: "IGESDefs_AttributeTable(@)", header: "IGESDefs_AttributeTable.hxx".}
proc init*(this: var IGESDefsAttributeTable;
          attributes: Handle[TColStdHArray2OfTransient]) {.importcpp: "Init",
    header: "IGESDefs_AttributeTable.hxx".}
proc setDefinition*(this: var IGESDefsAttributeTable;
                   def: Handle[IGESDefsAttributeDef]) {.
    importcpp: "SetDefinition", header: "IGESDefs_AttributeTable.hxx".}
proc definition*(this: IGESDefsAttributeTable): Handle[IGESDefsAttributeDef] {.
    noSideEffect, importcpp: "Definition", header: "IGESDefs_AttributeTable.hxx".}
proc nbRows*(this: IGESDefsAttributeTable): cint {.noSideEffect, importcpp: "NbRows",
    header: "IGESDefs_AttributeTable.hxx".}
proc nbAttributes*(this: IGESDefsAttributeTable): cint {.noSideEffect,
    importcpp: "NbAttributes", header: "IGESDefs_AttributeTable.hxx".}
proc dataType*(this: IGESDefsAttributeTable; atnum: cint): cint {.noSideEffect,
    importcpp: "DataType", header: "IGESDefs_AttributeTable.hxx".}
proc valueCount*(this: IGESDefsAttributeTable; atnum: cint): cint {.noSideEffect,
    importcpp: "ValueCount", header: "IGESDefs_AttributeTable.hxx".}
proc attributeList*(this: IGESDefsAttributeTable; attribnum: cint; rownum: cint): Handle[
    StandardTransient] {.noSideEffect, importcpp: "AttributeList",
                        header: "IGESDefs_AttributeTable.hxx".}
proc attributeAsInteger*(this: IGESDefsAttributeTable; atNum: cint; rownum: cint;
                        valNum: cint): cint {.noSideEffect,
    importcpp: "AttributeAsInteger", header: "IGESDefs_AttributeTable.hxx".}
proc attributeAsReal*(this: IGESDefsAttributeTable; atNum: cint; rownum: cint;
                     valNum: cint): cfloat {.noSideEffect,
    importcpp: "AttributeAsReal", header: "IGESDefs_AttributeTable.hxx".}
proc attributeAsString*(this: IGESDefsAttributeTable; atNum: cint; rownum: cint;
                       valNum: cint): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AttributeAsString",
    header: "IGESDefs_AttributeTable.hxx".}
proc attributeAsEntity*(this: IGESDefsAttributeTable; atNum: cint; rownum: cint;
                       valNum: cint): Handle[IGESDataIGESEntity] {.noSideEffect,
    importcpp: "AttributeAsEntity", header: "IGESDefs_AttributeTable.hxx".}
proc attributeAsLogical*(this: IGESDefsAttributeTable; atNum: cint; rownum: cint;
                        valNum: cint): bool {.noSideEffect,
    importcpp: "AttributeAsLogical", header: "IGESDefs_AttributeTable.hxx".}
type
  IGESDefsAttributeTablebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_AttributeTable::get_type_name(@)",
                            header: "IGESDefs_AttributeTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_AttributeTable::get_type_descriptor(@)",
    header: "IGESDefs_AttributeTable.hxx".}
proc dynamicType*(this: IGESDefsAttributeTable): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_AttributeTable.hxx".}


























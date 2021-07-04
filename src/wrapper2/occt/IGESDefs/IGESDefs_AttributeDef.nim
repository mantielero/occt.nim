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
  ../TColStd/TColStd_HArray1OfInteger, ../TColStd/TColStd_HArray1OfTransient,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

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
  Handle_IGESDefs_AttributeDef* = handle[IGESDefs_AttributeDef]

## ! defines IGES Attribute Table Definition Entity,
## ! Type <322> Form [0, 1, 2] in package IGESDefs.
## ! This is class is used to support the concept of well
## ! defined collection of attributes, whether it is a table
## ! or a single row of attributes.

type
  IGESDefs_AttributeDef* {.importcpp: "IGESDefs_AttributeDef",
                          header: "IGESDefs_AttributeDef.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_AttributeDef*(): IGESDefs_AttributeDef {.constructor,
    importcpp: "IGESDefs_AttributeDef(@)", header: "IGESDefs_AttributeDef.hxx".}
proc Init*(this: var IGESDefs_AttributeDef; aName: handle[TCollection_HAsciiString];
          aListType: Standard_Integer;
          attrTypes: handle[TColStd_HArray1OfInteger];
          attrValueDataTypes: handle[TColStd_HArray1OfInteger];
          attrValueCounts: handle[TColStd_HArray1OfInteger];
          attrValues: handle[TColStd_HArray1OfTransient]; attrValuePointers: handle[
    IGESDefs_HArray1OfHArray1OfTextDisplayTemplate]) {.importcpp: "Init",
    header: "IGESDefs_AttributeDef.hxx".}
proc HasTableName*(this: IGESDefs_AttributeDef): Standard_Boolean {.noSideEffect,
    importcpp: "HasTableName", header: "IGESDefs_AttributeDef.hxx".}
proc TableName*(this: IGESDefs_AttributeDef): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TableName", header: "IGESDefs_AttributeDef.hxx".}
proc ListType*(this: IGESDefs_AttributeDef): Standard_Integer {.noSideEffect,
    importcpp: "ListType", header: "IGESDefs_AttributeDef.hxx".}
proc NbAttributes*(this: IGESDefs_AttributeDef): Standard_Integer {.noSideEffect,
    importcpp: "NbAttributes", header: "IGESDefs_AttributeDef.hxx".}
proc AttributeType*(this: IGESDefs_AttributeDef; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeType", header: "IGESDefs_AttributeDef.hxx".}
proc AttributeValueDataType*(this: IGESDefs_AttributeDef; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeValueDataType",
    header: "IGESDefs_AttributeDef.hxx".}
proc AttributeValueCount*(this: IGESDefs_AttributeDef; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeValueCount",
    header: "IGESDefs_AttributeDef.hxx".}
proc HasValues*(this: IGESDefs_AttributeDef): Standard_Boolean {.noSideEffect,
    importcpp: "HasValues", header: "IGESDefs_AttributeDef.hxx".}
proc HasTextDisplay*(this: IGESDefs_AttributeDef): Standard_Boolean {.noSideEffect,
    importcpp: "HasTextDisplay", header: "IGESDefs_AttributeDef.hxx".}
proc AttributeTextDisplay*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                          PointerNum: Standard_Integer): handle[
    IGESGraph_TextDisplayTemplate] {.noSideEffect,
                                    importcpp: "AttributeTextDisplay",
                                    header: "IGESDefs_AttributeDef.hxx".}
proc AttributeList*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "AttributeList",
                         header: "IGESDefs_AttributeDef.hxx".}
proc AttributeAsInteger*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                        ValueNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeAsInteger",
    header: "IGESDefs_AttributeDef.hxx".}
proc AttributeAsReal*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                     ValueNum: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "AttributeAsReal", header: "IGESDefs_AttributeDef.hxx".}
proc AttributeAsString*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                       ValueNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AttributeAsString",
                               header: "IGESDefs_AttributeDef.hxx".}
proc AttributeAsEntity*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                       ValueNum: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "AttributeAsEntity",
    header: "IGESDefs_AttributeDef.hxx".}
proc AttributeAsLogical*(this: IGESDefs_AttributeDef; AttrNum: Standard_Integer;
                        ValueNum: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AttributeAsLogical",
    header: "IGESDefs_AttributeDef.hxx".}
type
  IGESDefs_AttributeDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_AttributeDef::get_type_name(@)",
                              header: "IGESDefs_AttributeDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_AttributeDef::get_type_descriptor(@)",
    header: "IGESDefs_AttributeDef.hxx".}
proc DynamicType*(this: IGESDefs_AttributeDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_AttributeDef.hxx".}
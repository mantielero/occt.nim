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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray2OfTransient, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of IGESDefs_AttributeDef"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDefs_AttributeTable"
discard "forward decl of IGESDefs_AttributeTable"
type
  Handle_IGESDefs_AttributeTable* = handle[IGESDefs_AttributeTable]

## ! defines IGES Attribute Table, Type <422> Form <0, 1>
## ! in package IGESDefs
## ! This class is used to represent an occurence of
## ! Attribute Table. This Class may be independent
## ! or dependent or pointed at by other Entities.

type
  IGESDefs_AttributeTable* {.importcpp: "IGESDefs_AttributeTable",
                            header: "IGESDefs_AttributeTable.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_AttributeTable*(): IGESDefs_AttributeTable {.constructor,
    importcpp: "IGESDefs_AttributeTable(@)", header: "IGESDefs_AttributeTable.hxx".}
proc Init*(this: var IGESDefs_AttributeTable;
          attributes: handle[TColStd_HArray2OfTransient]) {.importcpp: "Init",
    header: "IGESDefs_AttributeTable.hxx".}
proc SetDefinition*(this: var IGESDefs_AttributeTable;
                   def: handle[IGESDefs_AttributeDef]) {.
    importcpp: "SetDefinition", header: "IGESDefs_AttributeTable.hxx".}
proc Definition*(this: IGESDefs_AttributeTable): handle[IGESDefs_AttributeDef] {.
    noSideEffect, importcpp: "Definition", header: "IGESDefs_AttributeTable.hxx".}
proc NbRows*(this: IGESDefs_AttributeTable): Standard_Integer {.noSideEffect,
    importcpp: "NbRows", header: "IGESDefs_AttributeTable.hxx".}
proc NbAttributes*(this: IGESDefs_AttributeTable): Standard_Integer {.noSideEffect,
    importcpp: "NbAttributes", header: "IGESDefs_AttributeTable.hxx".}
proc DataType*(this: IGESDefs_AttributeTable; Atnum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "DataType", header: "IGESDefs_AttributeTable.hxx".}
proc ValueCount*(this: IGESDefs_AttributeTable; Atnum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ValueCount", header: "IGESDefs_AttributeTable.hxx".}
proc AttributeList*(this: IGESDefs_AttributeTable; Attribnum: Standard_Integer;
                   Rownum: Standard_Integer): handle[Standard_Transient] {.
    noSideEffect, importcpp: "AttributeList", header: "IGESDefs_AttributeTable.hxx".}
proc AttributeAsInteger*(this: IGESDefs_AttributeTable; AtNum: Standard_Integer;
                        Rownum: Standard_Integer; ValNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AttributeAsInteger",
    header: "IGESDefs_AttributeTable.hxx".}
proc AttributeAsReal*(this: IGESDefs_AttributeTable; AtNum: Standard_Integer;
                     Rownum: Standard_Integer; ValNum: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "AttributeAsReal",
    header: "IGESDefs_AttributeTable.hxx".}
proc AttributeAsString*(this: IGESDefs_AttributeTable; AtNum: Standard_Integer;
                       Rownum: Standard_Integer; ValNum: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AttributeAsString",
                               header: "IGESDefs_AttributeTable.hxx".}
proc AttributeAsEntity*(this: IGESDefs_AttributeTable; AtNum: Standard_Integer;
                       Rownum: Standard_Integer; ValNum: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "AttributeAsEntity",
                          header: "IGESDefs_AttributeTable.hxx".}
proc AttributeAsLogical*(this: IGESDefs_AttributeTable; AtNum: Standard_Integer;
                        Rownum: Standard_Integer; ValNum: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AttributeAsLogical",
    header: "IGESDefs_AttributeTable.hxx".}
type
  IGESDefs_AttributeTablebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_AttributeTable::get_type_name(@)",
                              header: "IGESDefs_AttributeTable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_AttributeTable::get_type_descriptor(@)",
    header: "IGESDefs_AttributeTable.hxx".}
proc DynamicType*(this: IGESDefs_AttributeTable): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_AttributeTable.hxx".}
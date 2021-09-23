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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_AssociativityDef"
discard "forward decl of IGESDefs_AssociativityDef"
type
  Handle_IGESDefs_AssociativityDef* = handle[IGESDefs_AssociativityDef]

## ! defines IGES Associativity Definition Entity, Type <302>
## ! Form <5001 - 9999> in package IGESDefs.
## ! This class permits the preprocessor to define an
## ! associativity schema. i.e., by using it preprocessor
## ! defines the type of relationship.

type
  IGESDefs_AssociativityDef* {.importcpp: "IGESDefs_AssociativityDef",
                              header: "IGESDefs_AssociativityDef.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDefs_AssociativityDef*(): IGESDefs_AssociativityDef {.
    constructor, importcpp: "IGESDefs_AssociativityDef(@)",
    header: "IGESDefs_AssociativityDef.hxx".}
proc Init*(this: var IGESDefs_AssociativityDef;
          requirements: handle[TColStd_HArray1OfInteger];
          orders: handle[TColStd_HArray1OfInteger];
          numItems: handle[TColStd_HArray1OfInteger];
          items: handle[IGESBasic_HArray1OfHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDefs_AssociativityDef.hxx".}
proc SetFormNumber*(this: var IGESDefs_AssociativityDef; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESDefs_AssociativityDef.hxx".}
proc NbClassDefs*(this: IGESDefs_AssociativityDef): Standard_Integer {.noSideEffect,
    importcpp: "NbClassDefs", header: "IGESDefs_AssociativityDef.hxx".}
proc IsBackPointerReq*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsBackPointerReq",
    header: "IGESDefs_AssociativityDef.hxx".}
proc BackPointerReq*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "BackPointerReq",
    header: "IGESDefs_AssociativityDef.hxx".}
proc IsOrdered*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsOrdered", header: "IGESDefs_AssociativityDef.hxx".}
proc ClassOrder*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ClassOrder", header: "IGESDefs_AssociativityDef.hxx".}
proc NbItemsPerClass*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbItemsPerClass",
    header: "IGESDefs_AssociativityDef.hxx".}
proc Item*(this: IGESDefs_AssociativityDef; ClassNum: Standard_Integer;
          ItemNum: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "Item", header: "IGESDefs_AssociativityDef.hxx".}
type
  IGESDefs_AssociativityDefbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDefs_AssociativityDef::get_type_name(@)",
                              header: "IGESDefs_AssociativityDef.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_AssociativityDef::get_type_descriptor(@)",
    header: "IGESDefs_AssociativityDef.hxx".}
proc DynamicType*(this: IGESDefs_AssociativityDef): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_AssociativityDef.hxx".}
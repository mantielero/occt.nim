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

discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDefs_AssociativityDef"
discard "forward decl of IGESDefs_AssociativityDef"
type
  HandleIGESDefsAssociativityDef* = Handle[IGESDefsAssociativityDef]

## ! defines IGES Associativity Definition Entity, Type <302>
## ! Form <5001 - 9999> in package IGESDefs.
## ! This class permits the preprocessor to define an
## ! associativity schema. i.e., by using it preprocessor
## ! defines the type of relationship.

type
  IGESDefsAssociativityDef* {.importcpp: "IGESDefs_AssociativityDef",
                             header: "IGESDefs_AssociativityDef.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDefsAssociativityDef*(): IGESDefsAssociativityDef {.constructor,
    importcpp: "IGESDefs_AssociativityDef(@)",
    header: "IGESDefs_AssociativityDef.hxx".}
proc init*(this: var IGESDefsAssociativityDef;
          requirements: Handle[TColStdHArray1OfInteger];
          orders: Handle[TColStdHArray1OfInteger];
          numItems: Handle[TColStdHArray1OfInteger];
          items: Handle[IGESBasicHArray1OfHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDefs_AssociativityDef.hxx".}
proc setFormNumber*(this: var IGESDefsAssociativityDef; form: StandardInteger) {.
    importcpp: "SetFormNumber", header: "IGESDefs_AssociativityDef.hxx".}
proc nbClassDefs*(this: IGESDefsAssociativityDef): StandardInteger {.noSideEffect,
    importcpp: "NbClassDefs", header: "IGESDefs_AssociativityDef.hxx".}
proc isBackPointerReq*(this: IGESDefsAssociativityDef; classNum: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsBackPointerReq",
    header: "IGESDefs_AssociativityDef.hxx".}
proc backPointerReq*(this: IGESDefsAssociativityDef; classNum: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "BackPointerReq",
    header: "IGESDefs_AssociativityDef.hxx".}
proc isOrdered*(this: IGESDefsAssociativityDef; classNum: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsOrdered", header: "IGESDefs_AssociativityDef.hxx".}
proc classOrder*(this: IGESDefsAssociativityDef; classNum: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "ClassOrder", header: "IGESDefs_AssociativityDef.hxx".}
proc nbItemsPerClass*(this: IGESDefsAssociativityDef; classNum: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbItemsPerClass",
    header: "IGESDefs_AssociativityDef.hxx".}
proc item*(this: IGESDefsAssociativityDef; classNum: StandardInteger;
          itemNum: StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "Item", header: "IGESDefs_AssociativityDef.hxx".}
type
  IGESDefsAssociativityDefbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDefs_AssociativityDef::get_type_name(@)",
                            header: "IGESDefs_AssociativityDef.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_AssociativityDef::get_type_descriptor(@)",
    header: "IGESDefs_AssociativityDef.hxx".}
proc dynamicType*(this: IGESDefsAssociativityDef): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_AssociativityDef.hxx".}


##  Created on: 1997-02-04
##  Created by: Yves FRICAUD
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TNaming_PtrNode,
  TNaming_Evolution, ../Standard/Standard_Integer, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

discard "forward decl of TNaming_Builder"
discard "forward decl of TNaming_Iterator"
discard "forward decl of TNaming_NewShapeIterator"
discard "forward decl of TNaming_OldShapeIterator"
discard "forward decl of Standard_GUID"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDF_DeltaOnRemoval"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_NamedShape"
type
  Handle_TNaming_NamedShape* = handle[TNaming_NamedShape]

## ! The basis to define an attribute for the storage of
## ! topology and naming data.
## ! This attribute contains two parts:
## ! -   The type of evolution, a term of the
## ! enumeration TNaming_Evolution
## ! -   A list of pairs of shapes called the "old"
## ! shape and the "new" shape. The meaning
## ! depends on the type of evolution.

type
  TNaming_NamedShape* {.importcpp: "TNaming_NamedShape",
                       header: "TNaming_NamedShape.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                     ## !
                                                                                     ## class
                                                                                     ## method
                                                                                     ##
                                                                                     ## !
                                                                                     ## ============
                                                                                     ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## GUID
                                                                                     ## for
                                                                                     ## named
                                                                                     ## shapes.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Adds
                                                                                     ## an
                                                                                     ## evolution


proc GetID*(): Standard_GUID {.importcpp: "TNaming_NamedShape::GetID(@)",
                            header: "TNaming_NamedShape.hxx".}
proc constructTNaming_NamedShape*(): TNaming_NamedShape {.constructor,
    importcpp: "TNaming_NamedShape(@)", header: "TNaming_NamedShape.hxx".}
proc IsEmpty*(this: TNaming_NamedShape): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TNaming_NamedShape.hxx".}
proc Get*(this: TNaming_NamedShape): TopoDS_Shape {.noSideEffect, importcpp: "Get",
    header: "TNaming_NamedShape.hxx".}
proc Evolution*(this: TNaming_NamedShape): TNaming_Evolution {.noSideEffect,
    importcpp: "Evolution", header: "TNaming_NamedShape.hxx".}
proc Version*(this: TNaming_NamedShape): Standard_Integer {.noSideEffect,
    importcpp: "Version", header: "TNaming_NamedShape.hxx".}
proc SetVersion*(this: var TNaming_NamedShape; version: Standard_Integer) {.
    importcpp: "SetVersion", header: "TNaming_NamedShape.hxx".}
proc Clear*(this: var TNaming_NamedShape) {.importcpp: "Clear",
                                        header: "TNaming_NamedShape.hxx".}
proc destroyTNaming_NamedShape*(this: var TNaming_NamedShape) {.
    importcpp: "#.~TNaming_NamedShape()", header: "TNaming_NamedShape.hxx".}
proc ID*(this: TNaming_NamedShape): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_NamedShape.hxx".}
proc BackupCopy*(this: TNaming_NamedShape): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TNaming_NamedShape.hxx".}
proc Restore*(this: var TNaming_NamedShape; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_NamedShape.hxx".}
proc DeltaOnModification*(this: TNaming_NamedShape;
                         anOldAttribute: handle[TDF_Attribute]): handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TNaming_NamedShape.hxx".}
proc DeltaOnModification*(this: var TNaming_NamedShape;
                         aDelta: handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TNaming_NamedShape.hxx".}
proc DeltaOnRemoval*(this: TNaming_NamedShape): handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TNaming_NamedShape.hxx".}
proc NewEmpty*(this: TNaming_NamedShape): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_NamedShape.hxx".}
proc Paste*(this: TNaming_NamedShape; intoAttribute: handle[TDF_Attribute];
           aRelocTationable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TNaming_NamedShape.hxx".}
proc References*(this: TNaming_NamedShape; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TNaming_NamedShape.hxx".}
proc BeforeRemoval*(this: var TNaming_NamedShape) {.importcpp: "BeforeRemoval",
    header: "TNaming_NamedShape.hxx".}
proc BeforeUndo*(this: var TNaming_NamedShape;
                anAttDelta: handle[TDF_AttributeDelta];
                forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "BeforeUndo", header: "TNaming_NamedShape.hxx".}
proc AfterUndo*(this: var TNaming_NamedShape;
               anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TNaming_NamedShape.hxx".}
proc Dump*(this: TNaming_NamedShape; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_NamedShape.hxx".}
proc DumpJson*(this: TNaming_NamedShape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TNaming_NamedShape.hxx".}
type
  TNaming_NamedShapebase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TNaming_NamedShape::get_type_name(@)",
                              header: "TNaming_NamedShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TNaming_NamedShape::get_type_descriptor(@)",
    header: "TNaming_NamedShape.hxx".}
proc DynamicType*(this: TNaming_NamedShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_NamedShape.hxx".}
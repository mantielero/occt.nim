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
  HandleTNamingNamedShape* = Handle[TNamingNamedShape]

## ! The basis to define an attribute for the storage of
## ! topology and naming data.
## ! This attribute contains two parts:
## ! -   The type of evolution, a term of the
## ! enumeration TNaming_Evolution
## ! -   A list of pairs of shapes called the "old"
## ! shape and the "new" shape. The meaning
## ! depends on the type of evolution.

type
  TNamingNamedShape* {.importcpp: "TNaming_NamedShape",
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


proc getID*(): StandardGUID {.importcpp: "TNaming_NamedShape::GetID(@)",
                           header: "TNaming_NamedShape.hxx".}
proc constructTNamingNamedShape*(): TNamingNamedShape {.constructor,
    importcpp: "TNaming_NamedShape(@)", header: "TNaming_NamedShape.hxx".}
proc isEmpty*(this: TNamingNamedShape): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "TNaming_NamedShape.hxx".}
proc get*(this: TNamingNamedShape): TopoDS_Shape {.noSideEffect, importcpp: "Get",
    header: "TNaming_NamedShape.hxx".}
proc evolution*(this: TNamingNamedShape): TNamingEvolution {.noSideEffect,
    importcpp: "Evolution", header: "TNaming_NamedShape.hxx".}
proc version*(this: TNamingNamedShape): int {.noSideEffect, importcpp: "Version",
    header: "TNaming_NamedShape.hxx".}
proc setVersion*(this: var TNamingNamedShape; version: int) {.importcpp: "SetVersion",
    header: "TNaming_NamedShape.hxx".}
proc clear*(this: var TNamingNamedShape) {.importcpp: "Clear",
                                       header: "TNaming_NamedShape.hxx".}
proc destroyTNamingNamedShape*(this: var TNamingNamedShape) {.
    importcpp: "#.~TNaming_NamedShape()", header: "TNaming_NamedShape.hxx".}
proc id*(this: TNamingNamedShape): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_NamedShape.hxx".}
proc backupCopy*(this: TNamingNamedShape): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TNaming_NamedShape.hxx".}
proc restore*(this: var TNamingNamedShape; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_NamedShape.hxx".}
proc deltaOnModification*(this: TNamingNamedShape;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TNaming_NamedShape.hxx".}
proc deltaOnModification*(this: var TNamingNamedShape;
                         aDelta: Handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TNaming_NamedShape.hxx".}
proc deltaOnRemoval*(this: TNamingNamedShape): Handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TNaming_NamedShape.hxx".}
proc newEmpty*(this: TNamingNamedShape): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_NamedShape.hxx".}
proc paste*(this: TNamingNamedShape; intoAttribute: Handle[TDF_Attribute];
           aRelocTationable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TNaming_NamedShape.hxx".}
proc references*(this: TNamingNamedShape; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TNaming_NamedShape.hxx".}
proc beforeRemoval*(this: var TNamingNamedShape) {.importcpp: "BeforeRemoval",
    header: "TNaming_NamedShape.hxx".}
proc beforeUndo*(this: var TNamingNamedShape;
                anAttDelta: Handle[TDF_AttributeDelta]; forceIt: bool = false): bool {.
    importcpp: "BeforeUndo", header: "TNaming_NamedShape.hxx".}
proc afterUndo*(this: var TNamingNamedShape; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.importcpp: "AfterUndo",
    header: "TNaming_NamedShape.hxx".}
proc dump*(this: TNamingNamedShape; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_NamedShape.hxx".}
proc dumpJson*(this: TNamingNamedShape; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TNaming_NamedShape.hxx".}
type
  TNamingNamedShapebaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TNaming_NamedShape::get_type_name(@)",
                            header: "TNaming_NamedShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TNaming_NamedShape::get_type_descriptor(@)",
    header: "TNaming_NamedShape.hxx".}
proc dynamicType*(this: TNamingNamedShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_NamedShape.hxx".}

##  Created on: 1997-02-05
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
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_DeltaOnAddition"
discard "forward decl of TDF_DeltaOnRemoval"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DataSet"
discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TNaming_UsedShapes"
type
  HandleTNamingUsedShapes* = Handle[TNamingUsedShapes]

## ! Global attribute located under root label to store all
## ! the shapes handled by the framework
## ! Set of Shapes Used in a Data from TDF
## ! Only one instance by Data, it always
## ! Stored as Attribute of The Root.

type
  TNamingUsedShapes* {.importcpp: "TNaming_UsedShapes",
                      header: "TNaming_UsedShapes.hxx", bycopy.} = object of TDF_Attribute


proc destroy*(this: var TNamingUsedShapes) {.importcpp: "Destroy",
    header: "TNaming_UsedShapes.hxx".}
proc destroyTNamingUsedShapes*(this: var TNamingUsedShapes) {.
    importcpp: "#.~TNaming_UsedShapes()", header: "TNaming_UsedShapes.hxx".}
proc map*(this: var TNamingUsedShapes): var TNamingDataMapOfShapePtrRefShape {.
    importcpp: "Map", header: "TNaming_UsedShapes.hxx".}
proc id*(this: TNamingUsedShapes): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_UsedShapes.hxx".}
proc getID*(): StandardGUID {.importcpp: "TNaming_UsedShapes::GetID(@)",
                           header: "TNaming_UsedShapes.hxx".}
proc backupCopy*(this: TNamingUsedShapes): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TNaming_UsedShapes.hxx".}
proc restore*(this: var TNamingUsedShapes; anAttribute: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_UsedShapes.hxx".}
proc beforeRemoval*(this: var TNamingUsedShapes) {.importcpp: "BeforeRemoval",
    header: "TNaming_UsedShapes.hxx".}
proc afterUndo*(this: var TNamingUsedShapes; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool = false): bool {.importcpp: "AfterUndo",
    header: "TNaming_UsedShapes.hxx".}
proc deltaOnAddition*(this: TNamingUsedShapes): Handle[TDF_DeltaOnAddition] {.
    noSideEffect, importcpp: "DeltaOnAddition", header: "TNaming_UsedShapes.hxx".}
proc deltaOnRemoval*(this: TNamingUsedShapes): Handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TNaming_UsedShapes.hxx".}
proc newEmpty*(this: TNamingUsedShapes): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_UsedShapes.hxx".}
proc paste*(this: TNamingUsedShapes; intoAttribute: Handle[TDF_Attribute];
           aRelocTationable: Handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TNaming_UsedShapes.hxx".}
proc references*(this: TNamingUsedShapes; aDataSet: Handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TNaming_UsedShapes.hxx".}
proc dump*(this: TNamingUsedShapes; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_UsedShapes.hxx".}
proc dumpJson*(this: TNamingUsedShapes; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TNaming_UsedShapes.hxx".}
type
  TNamingUsedShapesbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TNaming_UsedShapes::get_type_name(@)",
                            header: "TNaming_UsedShapes.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TNaming_UsedShapes::get_type_descriptor(@)",
    header: "TNaming_UsedShapes.hxx".}
proc dynamicType*(this: TNamingUsedShapes): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_UsedShapes.hxx".}

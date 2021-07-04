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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  TNaming_DataMapOfShapePtrRefShape, ../TDF/TDF_Attribute,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

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
  Handle_TNaming_UsedShapes* = handle[TNaming_UsedShapes]

## ! Global attribute located under root label to store all
## ! the shapes handled by the framework
## ! Set of Shapes Used in a Data from TDF
## ! Only one instance by Data, it always
## ! Stored as Attribute of The Root.

type
  TNaming_UsedShapes* {.importcpp: "TNaming_UsedShapes",
                       header: "TNaming_UsedShapes.hxx", bycopy.} = object of TDF_Attribute


proc Destroy*(this: var TNaming_UsedShapes) {.importcpp: "Destroy",
    header: "TNaming_UsedShapes.hxx".}
proc destroyTNaming_UsedShapes*(this: var TNaming_UsedShapes) {.
    importcpp: "#.~TNaming_UsedShapes()", header: "TNaming_UsedShapes.hxx".}
proc Map*(this: var TNaming_UsedShapes): var TNaming_DataMapOfShapePtrRefShape {.
    importcpp: "Map", header: "TNaming_UsedShapes.hxx".}
proc ID*(this: TNaming_UsedShapes): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TNaming_UsedShapes.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TNaming_UsedShapes::GetID(@)",
                            header: "TNaming_UsedShapes.hxx".}
proc BackupCopy*(this: TNaming_UsedShapes): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TNaming_UsedShapes.hxx".}
proc Restore*(this: var TNaming_UsedShapes; anAttribute: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TNaming_UsedShapes.hxx".}
proc BeforeRemoval*(this: var TNaming_UsedShapes) {.importcpp: "BeforeRemoval",
    header: "TNaming_UsedShapes.hxx".}
proc AfterUndo*(this: var TNaming_UsedShapes;
               anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TNaming_UsedShapes.hxx".}
proc DeltaOnAddition*(this: TNaming_UsedShapes): handle[TDF_DeltaOnAddition] {.
    noSideEffect, importcpp: "DeltaOnAddition", header: "TNaming_UsedShapes.hxx".}
proc DeltaOnRemoval*(this: TNaming_UsedShapes): handle[TDF_DeltaOnRemoval] {.
    noSideEffect, importcpp: "DeltaOnRemoval", header: "TNaming_UsedShapes.hxx".}
proc NewEmpty*(this: TNaming_UsedShapes): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TNaming_UsedShapes.hxx".}
proc Paste*(this: TNaming_UsedShapes; intoAttribute: handle[TDF_Attribute];
           aRelocTationable: handle[TDF_RelocationTable]) {.noSideEffect,
    importcpp: "Paste", header: "TNaming_UsedShapes.hxx".}
proc References*(this: TNaming_UsedShapes; aDataSet: handle[TDF_DataSet]) {.
    noSideEffect, importcpp: "References", header: "TNaming_UsedShapes.hxx".}
proc Dump*(this: TNaming_UsedShapes; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TNaming_UsedShapes.hxx".}
proc DumpJson*(this: TNaming_UsedShapes; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TNaming_UsedShapes.hxx".}
type
  TNaming_UsedShapesbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TNaming_UsedShapes::get_type_name(@)",
                              header: "TNaming_UsedShapes.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TNaming_UsedShapes::get_type_descriptor(@)",
    header: "TNaming_UsedShapes.hxx".}
proc DynamicType*(this: TNaming_UsedShapes): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TNaming_UsedShapes.hxx".}
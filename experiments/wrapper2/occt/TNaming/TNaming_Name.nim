##  Created on: 1997-03-19
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TNaming_NameType, ../TopAbs/TopAbs_ShapeEnum,
  TNaming_ListOfNamedShape, ../Standard/Standard_Integer, ../TopoDS/TopoDS_Shape,
  ../TDF/TDF_Label, ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelMap

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_RelocationTable"
type
  TNaming_Name* {.importcpp: "TNaming_Name", header: "TNaming_Name.hxx", bycopy.} = object


proc constructTNaming_Name*(): TNaming_Name {.constructor,
    importcpp: "TNaming_Name(@)", header: "TNaming_Name.hxx".}
proc Type*(this: var TNaming_Name; aType: TNaming_NameType) {.importcpp: "Type",
    header: "TNaming_Name.hxx".}
proc ShapeType*(this: var TNaming_Name; aType: TopAbs_ShapeEnum) {.
    importcpp: "ShapeType", header: "TNaming_Name.hxx".}
proc Shape*(this: var TNaming_Name; theShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "TNaming_Name.hxx".}
proc Append*(this: var TNaming_Name; arg: handle[TNaming_NamedShape]) {.
    importcpp: "Append", header: "TNaming_Name.hxx".}
proc StopNamedShape*(this: var TNaming_Name; arg: handle[TNaming_NamedShape]) {.
    importcpp: "StopNamedShape", header: "TNaming_Name.hxx".}
proc Index*(this: var TNaming_Name; I: Standard_Integer) {.importcpp: "Index",
    header: "TNaming_Name.hxx".}
proc ContextLabel*(this: var TNaming_Name; theLab: TDF_Label) {.
    importcpp: "ContextLabel", header: "TNaming_Name.hxx".}
proc Orientation*(this: var TNaming_Name; theOrientation: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "TNaming_Name.hxx".}
proc Type*(this: TNaming_Name): TNaming_NameType {.noSideEffect, importcpp: "Type",
    header: "TNaming_Name.hxx".}
proc ShapeType*(this: TNaming_Name): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TNaming_Name.hxx".}
proc Shape*(this: TNaming_Name): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TNaming_Name.hxx".}
proc Arguments*(this: TNaming_Name): TNaming_ListOfNamedShape {.noSideEffect,
    importcpp: "Arguments", header: "TNaming_Name.hxx".}
proc StopNamedShape*(this: TNaming_Name): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "StopNamedShape", header: "TNaming_Name.hxx".}
proc Index*(this: TNaming_Name): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "TNaming_Name.hxx".}
proc ContextLabel*(this: TNaming_Name): TDF_Label {.noSideEffect,
    importcpp: "ContextLabel", header: "TNaming_Name.hxx".}
proc Orientation*(this: TNaming_Name): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "TNaming_Name.hxx".}
proc Solve*(this: TNaming_Name; aLab: TDF_Label; Valid: TDF_LabelMap): Standard_Boolean {.
    noSideEffect, importcpp: "Solve", header: "TNaming_Name.hxx".}
proc Paste*(this: TNaming_Name; into: var TNaming_Name;
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TNaming_Name.hxx".}
proc DumpJson*(this: TNaming_Name; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TNaming_Name.hxx".}
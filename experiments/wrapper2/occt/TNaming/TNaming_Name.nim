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

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_RelocationTable"
type
  TNamingName* {.importcpp: "TNaming_Name", header: "TNaming_Name.hxx", bycopy.} = object


proc constructTNamingName*(): TNamingName {.constructor,
    importcpp: "TNaming_Name(@)", header: "TNaming_Name.hxx".}
proc `type`*(this: var TNamingName; aType: TNamingNameType) {.importcpp: "Type",
    header: "TNaming_Name.hxx".}
proc shapeType*(this: var TNamingName; aType: TopAbsShapeEnum) {.
    importcpp: "ShapeType", header: "TNaming_Name.hxx".}
proc shape*(this: var TNamingName; theShape: TopoDS_Shape) {.importcpp: "Shape",
    header: "TNaming_Name.hxx".}
proc append*(this: var TNamingName; arg: Handle[TNamingNamedShape]) {.
    importcpp: "Append", header: "TNaming_Name.hxx".}
proc stopNamedShape*(this: var TNamingName; arg: Handle[TNamingNamedShape]) {.
    importcpp: "StopNamedShape", header: "TNaming_Name.hxx".}
proc index*(this: var TNamingName; i: cint) {.importcpp: "Index",
                                        header: "TNaming_Name.hxx".}
proc contextLabel*(this: var TNamingName; theLab: TDF_Label) {.
    importcpp: "ContextLabel", header: "TNaming_Name.hxx".}
proc orientation*(this: var TNamingName; theOrientation: TopAbsOrientation) {.
    importcpp: "Orientation", header: "TNaming_Name.hxx".}
proc `type`*(this: TNamingName): TNamingNameType {.noSideEffect, importcpp: "Type",
    header: "TNaming_Name.hxx".}
proc shapeType*(this: TNamingName): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TNaming_Name.hxx".}
proc shape*(this: TNamingName): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "TNaming_Name.hxx".}
proc arguments*(this: TNamingName): TNamingListOfNamedShape {.noSideEffect,
    importcpp: "Arguments", header: "TNaming_Name.hxx".}
proc stopNamedShape*(this: TNamingName): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "StopNamedShape", header: "TNaming_Name.hxx".}
proc index*(this: TNamingName): cint {.noSideEffect, importcpp: "Index",
                                   header: "TNaming_Name.hxx".}
proc contextLabel*(this: TNamingName): TDF_Label {.noSideEffect,
    importcpp: "ContextLabel", header: "TNaming_Name.hxx".}
proc orientation*(this: TNamingName): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "TNaming_Name.hxx".}
proc solve*(this: TNamingName; aLab: TDF_Label; valid: TDF_LabelMap): bool {.
    noSideEffect, importcpp: "Solve", header: "TNaming_Name.hxx".}
proc paste*(this: TNamingName; into: var TNamingName; rt: Handle[TDF_RelocationTable]) {.
    noSideEffect, importcpp: "Paste", header: "TNaming_Name.hxx".}
proc dumpJson*(this: TNamingName; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "TNaming_Name.hxx".}


























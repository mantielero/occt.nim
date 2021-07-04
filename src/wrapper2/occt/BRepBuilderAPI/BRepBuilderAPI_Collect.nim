##  Created on: 1996-04-09
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_MapOfShape, ../TopTools/TopTools_DataMapOfShapeListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepBuilderAPI_MakeShape"
type
  BRepBuilderAPI_Collect* {.importcpp: "BRepBuilderAPI_Collect",
                           header: "BRepBuilderAPI_Collect.hxx", bycopy.} = object


proc constructBRepBuilderAPI_Collect*(): BRepBuilderAPI_Collect {.constructor,
    importcpp: "BRepBuilderAPI_Collect(@)", header: "BRepBuilderAPI_Collect.hxx".}
proc Add*(this: var BRepBuilderAPI_Collect; SI: TopoDS_Shape;
         MKS: var BRepBuilderAPI_MakeShape) {.importcpp: "Add",
    header: "BRepBuilderAPI_Collect.hxx".}
proc AddGenerated*(this: var BRepBuilderAPI_Collect; S: TopoDS_Shape;
                  Gen: TopoDS_Shape) {.importcpp: "AddGenerated",
                                     header: "BRepBuilderAPI_Collect.hxx".}
proc AddModif*(this: var BRepBuilderAPI_Collect; S: TopoDS_Shape; Mod: TopoDS_Shape) {.
    importcpp: "AddModif", header: "BRepBuilderAPI_Collect.hxx".}
proc Filter*(this: var BRepBuilderAPI_Collect; SF: TopoDS_Shape) {.
    importcpp: "Filter", header: "BRepBuilderAPI_Collect.hxx".}
proc Modification*(this: BRepBuilderAPI_Collect): TopTools_DataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Modification", header: "BRepBuilderAPI_Collect.hxx".}
proc Generated*(this: BRepBuilderAPI_Collect): TopTools_DataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepBuilderAPI_Collect.hxx".}
##  Created on: 1995-10-26
##  Created by: Yves FRICAUD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Transient,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_AsDes"
type
  Handle_BRepAlgo_AsDes* = handle[BRepAlgo_AsDes]

## ! SD to store descendants and ascendants of Shapes.

type
  BRepAlgo_AsDes* {.importcpp: "BRepAlgo_AsDes", header: "BRepAlgo_AsDes.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## an
                                                                                                             ## empty
                                                                                                             ## AsDes.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Replace
                                                                                                             ## <OldS>
                                                                                                             ## by
                                                                                                             ## <NewS>.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## <OldS>
                                                                                                             ## disapear
                                                                                                             ## from
                                                                                                             ## <me>.


proc constructBRepAlgo_AsDes*(): BRepAlgo_AsDes {.constructor,
    importcpp: "BRepAlgo_AsDes(@)", header: "BRepAlgo_AsDes.hxx".}
proc Clear*(this: var BRepAlgo_AsDes) {.importcpp: "Clear",
                                    header: "BRepAlgo_AsDes.hxx".}
proc Add*(this: var BRepAlgo_AsDes; S: TopoDS_Shape; SS: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_AsDes.hxx".}
proc Add*(this: var BRepAlgo_AsDes; S: TopoDS_Shape; SS: TopTools_ListOfShape) {.
    importcpp: "Add", header: "BRepAlgo_AsDes.hxx".}
proc HasAscendant*(this: BRepAlgo_AsDes; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasAscendant", header: "BRepAlgo_AsDes.hxx".}
proc HasDescendant*(this: BRepAlgo_AsDes; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasDescendant", header: "BRepAlgo_AsDes.hxx".}
proc Ascendant*(this: BRepAlgo_AsDes; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Ascendant", header: "BRepAlgo_AsDes.hxx".}
proc Descendant*(this: BRepAlgo_AsDes; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Descendant", header: "BRepAlgo_AsDes.hxx".}
proc ChangeDescendant*(this: var BRepAlgo_AsDes; S: TopoDS_Shape): var TopTools_ListOfShape {.
    importcpp: "ChangeDescendant", header: "BRepAlgo_AsDes.hxx".}
proc Replace*(this: var BRepAlgo_AsDes; OldS: TopoDS_Shape; NewS: TopoDS_Shape) {.
    importcpp: "Replace", header: "BRepAlgo_AsDes.hxx".}
proc Remove*(this: var BRepAlgo_AsDes; S: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepAlgo_AsDes.hxx".}
proc HasCommonDescendant*(this: BRepAlgo_AsDes; S1: TopoDS_Shape; S2: TopoDS_Shape;
                         LC: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "HasCommonDescendant", header: "BRepAlgo_AsDes.hxx".}
type
  BRepAlgo_AsDesbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepAlgo_AsDes::get_type_name(@)",
                              header: "BRepAlgo_AsDes.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepAlgo_AsDes::get_type_descriptor(@)",
    header: "BRepAlgo_AsDes.hxx".}
proc DynamicType*(this: BRepAlgo_AsDes): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAlgo_AsDes.hxx".}
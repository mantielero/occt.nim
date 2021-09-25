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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepAlgo_AsDes"
discard "forward decl of BRepAlgo_AsDes"
type
  HandleBRepAlgoAsDes* = Handle[BRepAlgoAsDes]

## ! SD to store descendants and ascendants of Shapes.

type
  BRepAlgoAsDes* {.importcpp: "BRepAlgo_AsDes", header: "BRepAlgo_AsDes.hxx", bycopy.} = object of StandardTransient ##
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


proc constructBRepAlgoAsDes*(): BRepAlgoAsDes {.constructor,
    importcpp: "BRepAlgo_AsDes(@)", header: "BRepAlgo_AsDes.hxx".}
proc clear*(this: var BRepAlgoAsDes) {.importcpp: "Clear",
                                   header: "BRepAlgo_AsDes.hxx".}
proc add*(this: var BRepAlgoAsDes; s: TopoDS_Shape; ss: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_AsDes.hxx".}
proc add*(this: var BRepAlgoAsDes; s: TopoDS_Shape; ss: TopToolsListOfShape) {.
    importcpp: "Add", header: "BRepAlgo_AsDes.hxx".}
proc hasAscendant*(this: BRepAlgoAsDes; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "HasAscendant", header: "BRepAlgo_AsDes.hxx".}
proc hasDescendant*(this: BRepAlgoAsDes; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "HasDescendant", header: "BRepAlgo_AsDes.hxx".}
proc ascendant*(this: BRepAlgoAsDes; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Ascendant", header: "BRepAlgo_AsDes.hxx".}
proc descendant*(this: BRepAlgoAsDes; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Descendant", header: "BRepAlgo_AsDes.hxx".}
proc changeDescendant*(this: var BRepAlgoAsDes; s: TopoDS_Shape): var TopToolsListOfShape {.
    importcpp: "ChangeDescendant", header: "BRepAlgo_AsDes.hxx".}
proc replace*(this: var BRepAlgoAsDes; oldS: TopoDS_Shape; newS: TopoDS_Shape) {.
    importcpp: "Replace", header: "BRepAlgo_AsDes.hxx".}
proc remove*(this: var BRepAlgoAsDes; s: TopoDS_Shape) {.importcpp: "Remove",
    header: "BRepAlgo_AsDes.hxx".}
proc hasCommonDescendant*(this: BRepAlgoAsDes; s1: TopoDS_Shape; s2: TopoDS_Shape;
                         lc: var TopToolsListOfShape): bool {.noSideEffect,
    importcpp: "HasCommonDescendant", header: "BRepAlgo_AsDes.hxx".}
type
  BRepAlgoAsDesbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepAlgo_AsDes::get_type_name(@)",
                            header: "BRepAlgo_AsDes.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepAlgo_AsDes::get_type_descriptor(@)",
    header: "BRepAlgo_AsDes.hxx".}
proc dynamicType*(this: BRepAlgoAsDes): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAlgo_AsDes.hxx".}

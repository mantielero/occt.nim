##  Created on: 1995-03-28
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  BRepTools_Substitution* {.importcpp: "BRepTools_Substitution",
                           header: "BRepTools_Substitution.hxx", bycopy.} = object


proc constructBRepTools_Substitution*(): BRepTools_Substitution {.constructor,
    importcpp: "BRepTools_Substitution(@)", header: "BRepTools_Substitution.hxx".}
proc Clear*(this: var BRepTools_Substitution) {.importcpp: "Clear",
    header: "BRepTools_Substitution.hxx".}
proc Substitute*(this: var BRepTools_Substitution; OldShape: TopoDS_Shape;
                NewShapes: TopTools_ListOfShape) {.importcpp: "Substitute",
    header: "BRepTools_Substitution.hxx".}
proc Build*(this: var BRepTools_Substitution; S: TopoDS_Shape) {.importcpp: "Build",
    header: "BRepTools_Substitution.hxx".}
proc IsCopied*(this: BRepTools_Substitution; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsCopied", header: "BRepTools_Substitution.hxx".}
proc Copy*(this: BRepTools_Substitution; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Copy", header: "BRepTools_Substitution.hxx".}
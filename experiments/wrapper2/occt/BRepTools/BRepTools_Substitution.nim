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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
type
  BRepToolsSubstitution* {.importcpp: "BRepTools_Substitution",
                          header: "BRepTools_Substitution.hxx", bycopy.} = object


proc constructBRepToolsSubstitution*(): BRepToolsSubstitution {.constructor,
    importcpp: "BRepTools_Substitution(@)", header: "BRepTools_Substitution.hxx".}
proc clear*(this: var BRepToolsSubstitution) {.importcpp: "Clear",
    header: "BRepTools_Substitution.hxx".}
proc substitute*(this: var BRepToolsSubstitution; oldShape: TopoDS_Shape;
                newShapes: TopToolsListOfShape) {.importcpp: "Substitute",
    header: "BRepTools_Substitution.hxx".}
proc build*(this: var BRepToolsSubstitution; s: TopoDS_Shape) {.importcpp: "Build",
    header: "BRepTools_Substitution.hxx".}
proc isCopied*(this: BRepToolsSubstitution; s: TopoDS_Shape): bool {.noSideEffect,
    importcpp: "IsCopied", header: "BRepTools_Substitution.hxx".}
proc copy*(this: BRepToolsSubstitution; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Copy", header: "BRepTools_Substitution.hxx".}

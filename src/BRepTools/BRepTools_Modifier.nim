##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_NullObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepTools_Modification"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"
type
  BRepToolsModifier* {.importcpp: "BRepTools_Modifier",
                      header: "BRepTools_Modifier.hxx", bycopy.} = object


proc `new`*(this: var BRepToolsModifier; theSize: csize_t): pointer {.
    importcpp: "BRepTools_Modifier::operator new",
    header: "BRepTools_Modifier.hxx".}
proc `delete`*(this: var BRepToolsModifier; theAddress: pointer) {.
    importcpp: "BRepTools_Modifier::operator delete",
    header: "BRepTools_Modifier.hxx".}
proc `new[]`*(this: var BRepToolsModifier; theSize: csize_t): pointer {.
    importcpp: "BRepTools_Modifier::operator new[]",
    header: "BRepTools_Modifier.hxx".}
proc `delete[]`*(this: var BRepToolsModifier; theAddress: pointer) {.
    importcpp: "BRepTools_Modifier::operator delete[]",
    header: "BRepTools_Modifier.hxx".}
proc `new`*(this: var BRepToolsModifier; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepTools_Modifier::operator new",
    header: "BRepTools_Modifier.hxx".}
proc `delete`*(this: var BRepToolsModifier; a2: pointer; a3: pointer) {.
    importcpp: "BRepTools_Modifier::operator delete",
    header: "BRepTools_Modifier.hxx".}
proc constructBRepToolsModifier*(theMutableInput: StandardBoolean = false): BRepToolsModifier {.
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc constructBRepToolsModifier*(s: TopoDS_Shape): BRepToolsModifier {.constructor,
    importcpp: "BRepTools_Modifier(@)", header: "BRepTools_Modifier.hxx".}
proc constructBRepToolsModifier*(s: TopoDS_Shape; m: Handle[BRepToolsModification]): BRepToolsModifier {.
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc init*(this: var BRepToolsModifier; s: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepTools_Modifier.hxx".}
proc perform*(this: var BRepToolsModifier; m: Handle[BRepToolsModification];
             theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepTools_Modifier.hxx".}
proc isDone*(this: BRepToolsModifier): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepTools_Modifier.hxx".}
proc isMutableInput*(this: BRepToolsModifier): StandardBoolean {.noSideEffect,
    importcpp: "IsMutableInput", header: "BRepTools_Modifier.hxx".}
proc setMutableInput*(this: var BRepToolsModifier; theMutableInput: StandardBoolean) {.
    importcpp: "SetMutableInput", header: "BRepTools_Modifier.hxx".}
proc modifiedShape*(this: BRepToolsModifier; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepTools_Modifier.hxx".}
##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shape"
type
  BRepBuilderAPI_MakeSolid* {.importcpp: "BRepBuilderAPI_MakeSolid",
                             header: "BRepBuilderAPI_MakeSolid.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepBuilderAPI_MakeSolid; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator new",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeSolid; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator delete",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeSolid; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator new[]",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeSolid; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator delete[]",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeSolid; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator new",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeSolid; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator delete",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(): BRepBuilderAPI_MakeSolid {.constructor,
    importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(s: TopoDS_CompSolid): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(s: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell;
                                       s3: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(so: TopoDS_Solid): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc constructBRepBuilderAPI_MakeSolid*(so: TopoDS_Solid; s: TopoDS_Shell): BRepBuilderAPI_MakeSolid {.
    constructor, importcpp: "BRepBuilderAPI_MakeSolid(@)",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc add*(this: var BRepBuilderAPI_MakeSolid; s: TopoDS_Shell) {.importcpp: "Add",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeSolid): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeSolid.hxx".}
proc solid*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
converter `topoDS_Solid`*(this: var BRepBuilderAPI_MakeSolid): TopoDS_Solid {.
    importcpp: "BRepBuilderAPI_MakeSolid::operator TopoDS_Solid",
    header: "BRepBuilderAPI_MakeSolid.hxx".}
proc isDeleted*(this: var BRepBuilderAPI_MakeSolid; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepBuilderAPI_MakeSolid.hxx".}
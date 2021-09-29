##  Created on: 1994-02-16
##  Created by: Remi LEQUETTE
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
type
  BRepBuilderAPI_MakeShell* {.importcpp: "BRepBuilderAPI_MakeShell",
                             header: "BRepBuilderAPI_MakeShell.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepBuilderAPI_MakeShell; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeShell::operator new",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeShell; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShell::operator delete",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc `new[]`*(this: var BRepBuilderAPI_MakeShell; theSize: csize_t): pointer {.
    importcpp: "BRepBuilderAPI_MakeShell::operator new[]",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc `delete[]`*(this: var BRepBuilderAPI_MakeShell; theAddress: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShell::operator delete[]",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc `new`*(this: var BRepBuilderAPI_MakeShell; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBuilderAPI_MakeShell::operator new",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc `delete`*(this: var BRepBuilderAPI_MakeShell; a2: pointer; a3: pointer) {.
    importcpp: "BRepBuilderAPI_MakeShell::operator delete",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc constructBRepBuilderAPI_MakeShell*(): BRepBuilderAPI_MakeShell {.constructor,
    importcpp: "BRepBuilderAPI_MakeShell(@)",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc constructBRepBuilderAPI_MakeShell*(s: Handle[GeomSurface];
                                       segment: StandardBoolean = false): BRepBuilderAPI_MakeShell {.
    constructor, importcpp: "BRepBuilderAPI_MakeShell(@)",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc constructBRepBuilderAPI_MakeShell*(s: Handle[GeomSurface]; uMin: StandardReal;
                                       uMax: StandardReal; vMin: StandardReal;
                                       vMax: StandardReal;
                                       segment: StandardBoolean = false): BRepBuilderAPI_MakeShell {.
    constructor, importcpp: "BRepBuilderAPI_MakeShell(@)",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc init*(this: var BRepBuilderAPI_MakeShell; s: Handle[GeomSurface];
          uMin: StandardReal; uMax: StandardReal; vMin: StandardReal;
          vMax: StandardReal; segment: StandardBoolean = false) {.importcpp: "Init",
    header: "BRepBuilderAPI_MakeShell.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeShell): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeShell.hxx".}
proc error*(this: BRepBuilderAPI_MakeShell): BRepBuilderAPI_ShellError {.
    noSideEffect, importcpp: "Error", header: "BRepBuilderAPI_MakeShell.hxx".}
proc shell*(this: BRepBuilderAPI_MakeShell): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepBuilderAPI_MakeShell.hxx".}
converter `topoDS_Shell`*(this: BRepBuilderAPI_MakeShell): TopoDS_Shell {.
    noSideEffect, importcpp: "BRepBuilderAPI_MakeShell::operator TopoDS_Shell",
    header: "BRepBuilderAPI_MakeShell.hxx".}
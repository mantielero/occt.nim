##  Created on: 1995-01-04
##  Created by: Bruno DUMORTIER
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"
type
  BRepLibMakeShell* {.importcpp: "BRepLib_MakeShell",
                     header: "BRepLib_MakeShell.hxx", bycopy.} = object of BRepLibMakeShape ##
                                                                                     ## !
                                                                                     ## Not
                                                                                     ## done.


proc constructBRepLibMakeShell*(): BRepLibMakeShell {.constructor,
    importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc constructBRepLibMakeShell*(s: Handle[GeomSurface];
                               segment: StandardBoolean = standardFalse): BRepLibMakeShell {.
    constructor, importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc constructBRepLibMakeShell*(s: Handle[GeomSurface]; uMin: StandardReal;
                               uMax: StandardReal; vMin: StandardReal;
                               vMax: StandardReal;
                               segment: StandardBoolean = standardFalse): BRepLibMakeShell {.
    constructor, importcpp: "BRepLib_MakeShell(@)", header: "BRepLib_MakeShell.hxx".}
proc init*(this: var BRepLibMakeShell; s: Handle[GeomSurface]; uMin: StandardReal;
          uMax: StandardReal; vMin: StandardReal; vMax: StandardReal;
          segment: StandardBoolean = standardFalse) {.importcpp: "Init",
    header: "BRepLib_MakeShell.hxx".}
proc error*(this: BRepLibMakeShell): BRepLibShellError {.noSideEffect,
    importcpp: "Error", header: "BRepLib_MakeShell.hxx".}
proc shell*(this: BRepLibMakeShell): TopoDS_Shell {.noSideEffect, importcpp: "Shell",
    header: "BRepLib_MakeShell.hxx".}
converter `topoDS_Shell`*(this: BRepLibMakeShell): TopoDS_Shell {.noSideEffect,
    importcpp: "BRepLib_MakeShell::operator TopoDS_Shell",
    header: "BRepLib_MakeShell.hxx".}


import breplib_types
import ../topods/topods_types
import ../geom/geom_types
import ../standard/standard_types

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

discard "forward decl of Geom_Surface"
discard "forward decl of TopoDS_Shell"


proc newBRepLib_MakeShell*(): BRepLib_MakeShell {.cdecl, constructor,
    importcpp: "BRepLib_MakeShell(@)".}
proc newBRepLib_MakeShell*(S: Handle[Geom_Surface]; Segment: bool = false): BRepLib_MakeShell {.
    cdecl, constructor, importcpp: "BRepLib_MakeShell(@)".}
proc newBRepLib_MakeShell*(S: Handle[Geom_Surface]; UMin: cfloat; UMax: cfloat;
                          VMin: cfloat; VMax: cfloat; Segment: bool = false): BRepLib_MakeShell {.
    cdecl, constructor, importcpp: "BRepLib_MakeShell(@)".}
proc Init*(this: var BRepLib_MakeShell; S: Handle[Geom_Surface]; UMin: cfloat;
          UMax: cfloat; VMin: cfloat; VMax: cfloat; Segment: bool = false) {.cdecl,
    importcpp: "Init".}
proc Error*(this: BRepLib_MakeShell): BRepLib_ShellError {.noSideEffect, cdecl,
    importcpp: "Error".}
proc Shell*(this: BRepLib_MakeShell): TopoDS_Shell {.noSideEffect, cdecl,
    importcpp: "Shell".}
converter `TopoDS_Shell`*(this: BRepLib_MakeShell): TopoDS_Shell {.noSideEffect,
    cdecl, importcpp: "BRepLib_MakeShell::operator TopoDS_Shell".}
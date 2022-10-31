import brepbuilderapi_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types



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



proc shell*(): BRepBuilderAPI_MakeShell {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_MakeShell(@)", header: "BRepBuilderAPI_MakeShell.hxx".}
proc shell*(s: Handle[GeomSurface]; segment: bool = false): BRepBuilderAPI_MakeShell {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeShell(@)", header: "BRepBuilderAPI_MakeShell.hxx".}
proc shell*(s: Handle[GeomSurface]; uMin: cfloat; uMax: cfloat;
                                 vMin: cfloat; vMax: cfloat; segment: bool = false): BRepBuilderAPI_MakeShell {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeShell(@)", header: "BRepBuilderAPI_MakeShell.hxx".}
proc init*(this: var BRepBuilderAPI_MakeShell; s: Handle[GeomSurface]; uMin: cfloat;
          uMax: cfloat; vMin: cfloat; vMax: cfloat; segment: bool = false) {.cdecl,
    importcpp: "Init", header: "BRepBuilderAPI_MakeShell.hxx".}
proc isDone*(this: BRepBuilderAPI_MakeShell): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepBuilderAPI_MakeShell.hxx".}
proc error*(this: BRepBuilderAPI_MakeShell): BRepBuilderAPI_ShellError {.
    noSideEffect, cdecl, importcpp: "Error", header: "BRepBuilderAPI_MakeShell.hxx".}
proc shell*(this: BRepBuilderAPI_MakeShell): TopoDS_Shell {.noSideEffect, cdecl,
    importcpp: "Shell", header: "BRepBuilderAPI_MakeShell.hxx".}
converter `topoDS_Shell`*(this: BRepBuilderAPI_MakeShell): TopoDS_Shell {.
    noSideEffect, cdecl,
    importcpp: "BRepBuilderAPI_MakeShell::operator TopoDS_Shell",
    header: "BRepBuilderAPI_MakeShell.hxx".}


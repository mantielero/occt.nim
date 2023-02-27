import brepcheck_types
import ../tkbrep/topods/topods_types
##  Created by: Peter KURNEV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Solid"

proc newBRepCheck_Solid*(theS: TopoDS_Solid): BRepCheck_Solid {.cdecl, constructor,
    importcpp: "BRepCheck_Solid(@)", header: "BRepCheck_Solid.hxx".}
proc InContext*(this: var BRepCheck_Solid; theContextShape: TopoDS_Shape) {.cdecl,
    importcpp: "InContext", header: "BRepCheck_Solid.hxx".}
proc Minimum*(this: var BRepCheck_Solid) {.cdecl, importcpp: "Minimum",
                                       header: "BRepCheck_Solid.hxx".}
proc Blind*(this: var BRepCheck_Solid) {.cdecl, importcpp: "Blind",
                                     header: "BRepCheck_Solid.hxx".}
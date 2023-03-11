import brepgprop_types
import ../topods/topods_types
##  Created on: 1992-11-27
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"

proc newBRepGProp_Domain*(): BRepGProp_Domain {.cdecl, constructor,
    importcpp: "BRepGProp_Domain(@)".}
proc newBRepGProp_Domain*(F: TopoDS_Face): BRepGProp_Domain {.cdecl, constructor,
    importcpp: "BRepGProp_Domain(@)".}
proc Init*(this: var BRepGProp_Domain; F: TopoDS_Face) {.cdecl, importcpp: "Init",
    .}
proc More*(this: var BRepGProp_Domain): bool {.cdecl, importcpp: "More".}
proc Init*(this: var BRepGProp_Domain) {.cdecl, importcpp: "Init".}
proc Value*(this: var BRepGProp_Domain): TopoDS_Edge {.cdecl, importcpp: "Value",
    .}
proc Next*(this: var BRepGProp_Domain) {.cdecl, importcpp: "Next".}
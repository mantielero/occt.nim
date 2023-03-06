import breplib_types
import ../topods/topods_types
import ../gp/gp_types

##  Created on: 1993-07-06
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

discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"

proc newBRepLib_MakeVertex*(P: gp_Pnt): BRepLib_MakeVertex {.cdecl, constructor,
    importcpp: "BRepLib_MakeVertex(@)".}
proc Vertex*(this: var BRepLib_MakeVertex): TopoDS_Vertex {.cdecl,
    importcpp: "Vertex".}
converter `TopoDS_Vertex`*(this: var BRepLib_MakeVertex): TopoDS_Vertex {.cdecl,
    importcpp: "BRepLib_MakeVertex::operator TopoDS_Vertex".}
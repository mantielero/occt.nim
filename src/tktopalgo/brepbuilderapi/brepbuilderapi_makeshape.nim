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
discard "forward decl of TopoDS_Shape"

import brepbuilderapi_types
import tkprim/brepprimapi/brepprimapi_types

proc build*(this: var MakeShapeObj) {.cdecl, importcpp: "Build",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc shape*(this: var MakeShapeObj): TopoDS_Shape {.cdecl,
    importcpp: "Shape", header: "BRepBuilderAPI_MakeShape.hxx".}
converter toTopoDS_Shape*(this: var MakeShapeObj): TopoDS_Shape {.cdecl,
    importcpp: "BRepBuilderAPI_MakeShape::operator TopoDS_Shape",
    header: "BRepBuilderAPI_MakeShape.hxx".}
proc generated*(this: var MakeShapeObj; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BRepBuilderAPI_MakeShape.hxx".}
proc modified*(this: var MakeShapeObj; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepBuilderAPI_MakeShape.hxx".}
proc isDeleted*(this: var MakeShapeObj; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BRepBuilderAPI_MakeShape.hxx".}
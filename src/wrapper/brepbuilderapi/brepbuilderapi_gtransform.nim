import ../gp/gp_types
import brepbuilderapi_types
import ../toptools/toptools_types
import ../topods/topods_types





##  Created on: 1996-12-30
##  Created by: Stagiaire Mary FABIEN
##  Copyright (c) 1996-1999 Matra Datavision
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



proc gTransform*(t: gp_GTrsf): BRepBuilderAPI_GTransform {.cdecl,
    constructor, importcpp: "BRepBuilderAPI_GTransform(@)", header: "BRepBuilderAPI_GTransform.hxx".}
proc gTransform*(s: TopoDS_Shape; t: gp_GTrsf; copy: bool = false): BRepBuilderAPI_GTransform {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_GTransform(@)", header: "BRepBuilderAPI_GTransform.hxx".}
proc perform*(this: var BRepBuilderAPI_GTransform; s: TopoDS_Shape; copy: bool = false) {.
    cdecl, importcpp: "Perform", header: "BRepBuilderAPI_GTransform.hxx".}
proc modified*(this: var BRepBuilderAPI_GTransform; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Modified", header: "BRepBuilderAPI_GTransform.hxx".}
proc modifiedShape*(this: BRepBuilderAPI_GTransform; s: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape", header: "BRepBuilderAPI_GTransform.hxx".}



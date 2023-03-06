import brepbuilderapi_types
import ../toptools/toptools_types
import ../topods/topods_types





##  Created on: 1996-04-09
##  Created by: Yves FRICAUD
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



proc collect*(): BRepBuilderAPI_Collect {.cdecl, constructor,
    importcpp: "BRepBuilderAPI_Collect(@)", header: "BRepBuilderAPI_Collect.hxx".}
proc add*(this: var BRepBuilderAPI_Collect; si: TopoDS_Shape;
         mks: var BRepBuilderAPI_MakeShape) {.cdecl, importcpp: "Add",
    header: "BRepBuilderAPI_Collect.hxx".}
proc addGenerated*(this: var BRepBuilderAPI_Collect; s: TopoDS_Shape;
                  gen: TopoDS_Shape) {.cdecl, importcpp: "AddGenerated",
                                     header: "BRepBuilderAPI_Collect.hxx".}
proc addModif*(this: var BRepBuilderAPI_Collect; s: TopoDS_Shape; `mod`: TopoDS_Shape) {.
    cdecl, importcpp: "AddModif", header: "BRepBuilderAPI_Collect.hxx".}
proc filter*(this: var BRepBuilderAPI_Collect; sf: TopoDS_Shape) {.cdecl,
    importcpp: "Filter", header: "BRepBuilderAPI_Collect.hxx".}
proc modification*(this: BRepBuilderAPI_Collect): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Modification", header: "BRepBuilderAPI_Collect.hxx".}
proc generated*(this: BRepBuilderAPI_Collect): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, cdecl, importcpp: "Generated", header: "BRepBuilderAPI_Collect.hxx".}



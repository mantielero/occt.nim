import ../gp/gp_types
import brepprimapi_types
import ../toptools/toptools_types
import ../topods/topods_types
import ../brepprim/brepprim_types

#import .tkprim/brepprimapi/brepprimapi_types



##  Created on: 1993-10-12
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



proc prism*(s: TopoDS_Shape; v: gp_Vec; copy: bool = false;
                              canonize: bool = true): BRepPrimAPI_MakePrism {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakePrism(@)", header: "BRepPrimAPI_MakePrism.hxx".}
proc prism*(s: TopoDS_Shape; d: gp_Dir; inf: bool = true;
                              copy: bool = false; canonize: bool = true): BRepPrimAPI_MakePrism {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakePrism(@)", header: "BRepPrimAPI_MakePrism.hxx".}
proc prism*(this: BRepPrimAPI_MakePrism): BRepSweepPrism {.noSideEffect, cdecl,
    importcpp: "Prism", header: "BRepPrimAPI_MakePrism.hxx".}
proc build*(this: var BRepPrimAPI_MakePrism) {.cdecl, importcpp: "Build",
    header: "BRepPrimAPI_MakePrism.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.cdecl,
    importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape {.cdecl,
    importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc generated*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BRepPrimAPI_MakePrism.hxx".}
proc isDeleted*(this: var BRepPrimAPI_MakePrism; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BRepPrimAPI_MakePrism.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    cdecl, importcpp: "FirstShape", header: "BRepPrimAPI_MakePrism.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakePrism; theShape: TopoDS_Shape): TopoDS_Shape {.
    cdecl, importcpp: "LastShape", header: "BRepPrimAPI_MakePrism.hxx".}



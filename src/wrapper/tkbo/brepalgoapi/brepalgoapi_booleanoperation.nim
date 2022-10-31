import ../bopalgo/bopalgo_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import brepalgoapi_types





##  Created on: 1993-10-14
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



proc newBRepAlgoAPI_BooleanOperation*(): BRepAlgoAPI_BooleanOperation {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc newBRepAlgoAPI_BooleanOperation*(thePF: BOPAlgoPaveFiller): BRepAlgoAPI_BooleanOperation {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc shape1*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape1", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc shape2*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape2", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc setTools*(this: var BRepAlgoAPI_BooleanOperation; theLS: TopToolsListOfShape) {.
    cdecl, importcpp: "SetTools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc tools*(this: BRepAlgoAPI_BooleanOperation): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "Tools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc setOperation*(this: var BRepAlgoAPI_BooleanOperation; theBOP: BOPAlgoOperation) {.
    cdecl, importcpp: "SetOperation", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc operation*(this: BRepAlgoAPI_BooleanOperation): BOPAlgoOperation {.
    noSideEffect, cdecl, importcpp: "Operation", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc build*(this: var BRepAlgoAPI_BooleanOperation) {.cdecl, importcpp: "Build",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}



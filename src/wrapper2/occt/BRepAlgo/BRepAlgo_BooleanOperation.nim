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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_MapOfShape, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../TopAbs/TopAbs_State,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgo_BooleanOperation* {.importcpp: "BRepAlgo_BooleanOperation",
                              header: "BRepAlgo_BooleanOperation.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Prepares
                                                                                                              ## the
                                                                                                              ## operations
                                                                                                              ## for
                                                                                                              ## S1
                                                                                                              ## and
                                                                                                              ## S2.


proc destroyBRepAlgo_BooleanOperation*(this: var BRepAlgo_BooleanOperation) {.
    importcpp: "#.~BRepAlgo_BooleanOperation()",
    header: "BRepAlgo_BooleanOperation.hxx".}
proc PerformDS*(this: var BRepAlgo_BooleanOperation) {.importcpp: "PerformDS",
    header: "BRepAlgo_BooleanOperation.hxx".}
proc Perform*(this: var BRepAlgo_BooleanOperation; St1: TopAbs_State;
             St2: TopAbs_State) {.importcpp: "Perform",
                                header: "BRepAlgo_BooleanOperation.hxx".}
proc Builder*(this: BRepAlgo_BooleanOperation): handle[TopOpeBRepBuild_HBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepAlgo_BooleanOperation.hxx".}
proc Shape1*(this: BRepAlgo_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BRepAlgo_BooleanOperation.hxx".}
proc Shape2*(this: BRepAlgo_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BRepAlgo_BooleanOperation.hxx".}
proc Modified*(this: var BRepAlgo_BooleanOperation; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepAlgo_BooleanOperation.hxx".}
proc IsDeleted*(this: var BRepAlgo_BooleanOperation; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepAlgo_BooleanOperation.hxx".}
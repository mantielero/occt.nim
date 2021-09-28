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

discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgoBooleanOperation* {.importcpp: "BRepAlgo_BooleanOperation",
                             header: "BRepAlgo_BooleanOperation.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                             ## !
                                                                                                             ## Prepares
                                                                                                             ## the
                                                                                                             ## operations
                                                                                                             ## for
                                                                                                             ## S1
                                                                                                             ## and
                                                                                                             ## S2.


proc destroyBRepAlgoBooleanOperation*(this: var BRepAlgoBooleanOperation) {.
    importcpp: "#.~BRepAlgo_BooleanOperation()",
    header: "BRepAlgo_BooleanOperation.hxx".}
proc performDS*(this: var BRepAlgoBooleanOperation) {.importcpp: "PerformDS",
    header: "BRepAlgo_BooleanOperation.hxx".}
proc perform*(this: var BRepAlgoBooleanOperation; st1: TopAbsState; st2: TopAbsState) {.
    importcpp: "Perform", header: "BRepAlgo_BooleanOperation.hxx".}
proc builder*(this: BRepAlgoBooleanOperation): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepAlgo_BooleanOperation.hxx".}
proc shape1*(this: BRepAlgoBooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BRepAlgo_BooleanOperation.hxx".}
proc shape2*(this: BRepAlgoBooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BRepAlgo_BooleanOperation.hxx".}
proc modified*(this: var BRepAlgoBooleanOperation; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepAlgo_BooleanOperation.hxx".}
proc isDeleted*(this: var BRepAlgoBooleanOperation; s: TopoDS_Shape): bool {.
    importcpp: "IsDeleted", header: "BRepAlgo_BooleanOperation.hxx".}


























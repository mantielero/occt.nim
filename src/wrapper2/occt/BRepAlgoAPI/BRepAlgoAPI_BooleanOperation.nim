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
  ../Standard/Standard_Handle, ../BOPAlgo/BOPAlgo_Operation,
  BRepAlgoAPI_BuilderAlgo

discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Shape"
type
  BRepAlgoAPI_BooleanOperation* {.importcpp: "BRepAlgoAPI_BooleanOperation",
                                 header: "BRepAlgoAPI_BooleanOperation.hxx",
                                 bycopy.} = object of BRepAlgoAPI_BuilderAlgo ## ! @name
                                                                         ## Constructors
                                                                         ## ! Empty
                                                                         ## constructor
                                                                         ## ! @name
                                                                         ## Setting/getting
                                                                         ## arguments
                                                                         ## ! Returns the first
                                                                         ## argument
                                                                         ## involved in this Boolean
                                                                         ## operation.
                                                                         ## !
                                                                         ## Obsolete
                                                                         ## ! @name
                                                                         ## Setting/Getting the type of Boolean
                                                                         ## operation
                                                                         ## ! Sets the type of Boolean
                                                                         ## operation
                                                                         ## ! @name
                                                                         ## Performing the
                                                                         ## operation
                                                                         ## !
                                                                         ## Performs the Boolean
                                                                         ## operation.
                                                                         ## ! @name
                                                                         ## Constructors
                                                                         ## !
                                                                         ## Constructor to perform Boolean
                                                                         ## operation on only two
                                                                         ## arguments.
                                                                         ## !
                                                                         ## Obsolete
                                                                         ## ! @name Fields
    ## !< Tool arguments of operation
    ## !< Type of Boolean Operation


proc constructBRepAlgoAPI_BooleanOperation*(): BRepAlgoAPI_BooleanOperation {.
    constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc constructBRepAlgoAPI_BooleanOperation*(thePF: BOPAlgo_PaveFiller): BRepAlgoAPI_BooleanOperation {.
    constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc Shape1*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc Shape2*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc SetTools*(this: var BRepAlgoAPI_BooleanOperation; theLS: TopTools_ListOfShape) {.
    importcpp: "SetTools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc Tools*(this: BRepAlgoAPI_BooleanOperation): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Tools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc SetOperation*(this: var BRepAlgoAPI_BooleanOperation; theBOP: BOPAlgo_Operation) {.
    importcpp: "SetOperation", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc Operation*(this: BRepAlgoAPI_BooleanOperation): BOPAlgo_Operation {.
    noSideEffect, importcpp: "Operation",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc Build*(this: var BRepAlgoAPI_BooleanOperation) {.importcpp: "Build",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
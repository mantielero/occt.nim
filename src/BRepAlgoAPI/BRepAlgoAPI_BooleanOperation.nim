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


proc `new`*(this: var BRepAlgoAPI_BooleanOperation; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator new",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc `delete`*(this: var BRepAlgoAPI_BooleanOperation; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator delete",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc `new[]`*(this: var BRepAlgoAPI_BooleanOperation; theSize: csize_t): pointer {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator new[]",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc `delete[]`*(this: var BRepAlgoAPI_BooleanOperation; theAddress: pointer) {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator delete[]",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc `new`*(this: var BRepAlgoAPI_BooleanOperation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator new",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc `delete`*(this: var BRepAlgoAPI_BooleanOperation; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgoAPI_BooleanOperation::operator delete",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc constructBRepAlgoAPI_BooleanOperation*(): BRepAlgoAPI_BooleanOperation {.
    constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc constructBRepAlgoAPI_BooleanOperation*(thePF: BOPAlgoPaveFiller): BRepAlgoAPI_BooleanOperation {.
    constructor, importcpp: "BRepAlgoAPI_BooleanOperation(@)",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc shape1*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape1", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc shape2*(this: BRepAlgoAPI_BooleanOperation): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape2", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc setTools*(this: var BRepAlgoAPI_BooleanOperation; theLS: TopToolsListOfShape) {.
    importcpp: "SetTools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc tools*(this: BRepAlgoAPI_BooleanOperation): TopToolsListOfShape {.noSideEffect,
    importcpp: "Tools", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc setOperation*(this: var BRepAlgoAPI_BooleanOperation; theBOP: BOPAlgoOperation) {.
    importcpp: "SetOperation", header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc operation*(this: BRepAlgoAPI_BooleanOperation): BOPAlgoOperation {.
    noSideEffect, importcpp: "Operation",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
proc build*(this: var BRepAlgoAPI_BooleanOperation) {.importcpp: "Build",
    header: "BRepAlgoAPI_BooleanOperation.hxx".}
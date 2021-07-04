##  Created on: 1994-03-07
##  Created by: Joelle CHAUVET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_SequenceOfShape,
  ../TopoDS/TopoDS_Shell, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Shape"
type
  BRepFill_Generator* {.importcpp: "BRepFill_Generator",
                       header: "BRepFill_Generator.hxx", bycopy.} = object


proc constructBRepFill_Generator*(): BRepFill_Generator {.constructor,
    importcpp: "BRepFill_Generator(@)", header: "BRepFill_Generator.hxx".}
proc AddWire*(this: var BRepFill_Generator; Wire: TopoDS_Wire) {.importcpp: "AddWire",
    header: "BRepFill_Generator.hxx".}
proc Perform*(this: var BRepFill_Generator) {.importcpp: "Perform",
    header: "BRepFill_Generator.hxx".}
proc Shell*(this: BRepFill_Generator): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepFill_Generator.hxx".}
proc Generated*(this: BRepFill_Generator): TopTools_DataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepFill_Generator.hxx".}
proc GeneratedShapes*(this: BRepFill_Generator; SSection: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "GeneratedShapes", header: "BRepFill_Generator.hxx".}
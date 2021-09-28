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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Shape"
type
  BRepFillGenerator* {.importcpp: "BRepFill_Generator",
                      header: "BRepFill_Generator.hxx", bycopy.} = object


proc constructBRepFillGenerator*(): BRepFillGenerator {.constructor,
    importcpp: "BRepFill_Generator(@)", header: "BRepFill_Generator.hxx".}
proc addWire*(this: var BRepFillGenerator; wire: TopoDS_Wire) {.importcpp: "AddWire",
    header: "BRepFill_Generator.hxx".}
proc perform*(this: var BRepFillGenerator) {.importcpp: "Perform",
    header: "BRepFill_Generator.hxx".}
proc shell*(this: BRepFillGenerator): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "BRepFill_Generator.hxx".}
proc generated*(this: BRepFillGenerator): TopToolsDataMapOfShapeListOfShape {.
    noSideEffect, importcpp: "Generated", header: "BRepFill_Generator.hxx".}
proc generatedShapes*(this: BRepFillGenerator; sSection: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "GeneratedShapes", header: "BRepFill_Generator.hxx".}


























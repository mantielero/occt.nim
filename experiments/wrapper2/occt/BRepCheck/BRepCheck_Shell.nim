##  Created on: 1996-01-02
##  Created by: Jacques GOUSSARD
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, BRepCheck_Status,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, BRepCheck_Result,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Shell"
discard "forward decl of BRepCheck_Shell"
type
  Handle_BRepCheck_Shell* = handle[BRepCheck_Shell]
  BRepCheck_Shell* {.importcpp: "BRepCheck_Shell", header: "BRepCheck_Shell.hxx",
                    bycopy.} = object of BRepCheck_Result


proc constructBRepCheck_Shell*(S: TopoDS_Shell): BRepCheck_Shell {.constructor,
    importcpp: "BRepCheck_Shell(@)", header: "BRepCheck_Shell.hxx".}
proc InContext*(this: var BRepCheck_Shell; ContextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Shell.hxx".}
proc Minimum*(this: var BRepCheck_Shell) {.importcpp: "Minimum",
                                       header: "BRepCheck_Shell.hxx".}
proc Blind*(this: var BRepCheck_Shell) {.importcpp: "Blind",
                                     header: "BRepCheck_Shell.hxx".}
proc Closed*(this: var BRepCheck_Shell; Update: Standard_Boolean = Standard_False): BRepCheck_Status {.
    importcpp: "Closed", header: "BRepCheck_Shell.hxx".}
proc Orientation*(this: var BRepCheck_Shell;
                 Update: Standard_Boolean = Standard_False): BRepCheck_Status {.
    importcpp: "Orientation", header: "BRepCheck_Shell.hxx".}
proc SetUnorientable*(this: var BRepCheck_Shell) {.importcpp: "SetUnorientable",
    header: "BRepCheck_Shell.hxx".}
proc IsUnorientable*(this: BRepCheck_Shell): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnorientable", header: "BRepCheck_Shell.hxx".}
proc NbConnectedSet*(this: var BRepCheck_Shell; theSets: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "NbConnectedSet", header: "BRepCheck_Shell.hxx".}
type
  BRepCheck_Shellbase_type* = BRepCheck_Result

proc get_type_name*(): cstring {.importcpp: "BRepCheck_Shell::get_type_name(@)",
                              header: "BRepCheck_Shell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepCheck_Shell::get_type_descriptor(@)",
    header: "BRepCheck_Shell.hxx".}
proc DynamicType*(this: BRepCheck_Shell): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Shell.hxx".}
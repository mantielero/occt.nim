##  Created by: Peter KURNEV
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, BRepCheck_Result

discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Solid"
discard "forward decl of BRepCheck_Solid"
type
  Handle_BRepCheck_Solid* = handle[BRepCheck_Solid]

## ! The class is to check a solid.

type
  BRepCheck_Solid* {.importcpp: "BRepCheck_Solid", header: "BRepCheck_Solid.hxx",
                    bycopy.} = object of BRepCheck_Result ## ! Constructor
                                                     ## ! <theS> is the solid to check


proc constructBRepCheck_Solid*(theS: TopoDS_Solid): BRepCheck_Solid {.constructor,
    importcpp: "BRepCheck_Solid(@)", header: "BRepCheck_Solid.hxx".}
proc InContext*(this: var BRepCheck_Solid; theContextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Solid.hxx".}
proc Minimum*(this: var BRepCheck_Solid) {.importcpp: "Minimum",
                                       header: "BRepCheck_Solid.hxx".}
proc Blind*(this: var BRepCheck_Solid) {.importcpp: "Blind",
                                     header: "BRepCheck_Solid.hxx".}
type
  BRepCheck_Solidbase_type* = BRepCheck_Result

proc get_type_name*(): cstring {.importcpp: "BRepCheck_Solid::get_type_name(@)",
                              header: "BRepCheck_Solid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepCheck_Solid::get_type_descriptor(@)",
    header: "BRepCheck_Solid.hxx".}
proc DynamicType*(this: BRepCheck_Solid): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Solid.hxx".}
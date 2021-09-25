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

discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepCheck_Solid"
discard "forward decl of BRepCheck_Solid"
type
  HandleBRepCheckSolid* = Handle[BRepCheckSolid]

## ! The class is to check a solid.

type
  BRepCheckSolid* {.importcpp: "BRepCheck_Solid", header: "BRepCheck_Solid.hxx",
                   bycopy.} = object of BRepCheckResult ## ! Constructor
                                                   ## ! <theS> is the solid to check


proc constructBRepCheckSolid*(theS: TopoDS_Solid): BRepCheckSolid {.constructor,
    importcpp: "BRepCheck_Solid(@)", header: "BRepCheck_Solid.hxx".}
proc inContext*(this: var BRepCheckSolid; theContextShape: TopoDS_Shape) {.
    importcpp: "InContext", header: "BRepCheck_Solid.hxx".}
proc minimum*(this: var BRepCheckSolid) {.importcpp: "Minimum",
                                      header: "BRepCheck_Solid.hxx".}
proc blind*(this: var BRepCheckSolid) {.importcpp: "Blind",
                                    header: "BRepCheck_Solid.hxx".}
type
  BRepCheckSolidbaseType* = BRepCheckResult

proc getTypeName*(): cstring {.importcpp: "BRepCheck_Solid::get_type_name(@)",
                            header: "BRepCheck_Solid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepCheck_Solid::get_type_descriptor(@)",
    header: "BRepCheck_Solid.hxx".}
proc dynamicType*(this: BRepCheckSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepCheck_Solid.hxx".}

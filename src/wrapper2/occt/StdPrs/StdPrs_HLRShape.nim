##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  StdPrs_HLRShapeI

## ! Computes the presentation of objects with removal of their hidden lines for a specific projector.
## ! The exact algorithm is used.

type
  StdPrs_HLRShape* {.importcpp: "StdPrs_HLRShape", header: "StdPrs_HLRShape.hxx",
                    bycopy.} = object of StdPrs_HLRShapeI ## ! Compute presentation for specified shape.

  StdPrs_HLRShapebase_type* = StdPrs_HLRShapeI

proc get_type_name*(): cstring {.importcpp: "StdPrs_HLRShape::get_type_name(@)",
                              header: "StdPrs_HLRShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdPrs_HLRShape::get_type_descriptor(@)",
    header: "StdPrs_HLRShape.hxx".}
proc DynamicType*(this: StdPrs_HLRShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_HLRShape.hxx".}
proc ComputeHLR*(this: StdPrs_HLRShape; thePrs: handle[Prs3d_Presentation];
                theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer];
                theProjector: handle[Graphic3d_Camera]) {.noSideEffect,
    importcpp: "ComputeHLR", header: "StdPrs_HLRShape.hxx".}
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

## ! Computes the presentation of objects with removal of their hidden lines for a specific projector.
## ! The exact algorithm is used.

type
  StdPrsHLRShape* {.importcpp: "StdPrs_HLRShape", header: "StdPrs_HLRShape.hxx",
                   bycopy.} = object of StdPrsHLRShapeI ## ! Compute presentation for specified shape.

  StdPrsHLRShapebaseType* = StdPrsHLRShapeI

proc getTypeName*(): cstring {.importcpp: "StdPrs_HLRShape::get_type_name(@)",
                            header: "StdPrs_HLRShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdPrs_HLRShape::get_type_descriptor(@)",
    header: "StdPrs_HLRShape.hxx".}
proc dynamicType*(this: StdPrsHLRShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_HLRShape.hxx".}
proc computeHLR*(this: StdPrsHLRShape; thePrs: Handle[Prs3dPresentation];
                theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer];
                theProjector: Handle[Graphic3dCamera]) {.noSideEffect,
    importcpp: "ComputeHLR", header: "StdPrs_HLRShape.hxx".}


























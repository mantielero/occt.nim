##  Created on: 1999-07-22
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ShapeUpgrade_FaceDivide, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeUpgrade_ClosedFaceDivide"
discard "forward decl of ShapeUpgrade_ClosedFaceDivide"
type
  Handle_ShapeUpgrade_ClosedFaceDivide* = handle[ShapeUpgrade_ClosedFaceDivide]

## ! Divides a Face with one or more seam edge to avoid closed faces.
## ! Splitting is performed by U and V direction. The number of
## ! resulting faces can be defined by user.

type
  ShapeUpgrade_ClosedFaceDivide* {.importcpp: "ShapeUpgrade_ClosedFaceDivide",
                                  header: "ShapeUpgrade_ClosedFaceDivide.hxx",
                                  bycopy.} = object of ShapeUpgrade_FaceDivide ## !
                                                                          ## Creates empty
                                                                          ## constructor.


proc constructShapeUpgrade_ClosedFaceDivide*(): ShapeUpgrade_ClosedFaceDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedFaceDivide(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc constructShapeUpgrade_ClosedFaceDivide*(F: TopoDS_Face): ShapeUpgrade_ClosedFaceDivide {.
    constructor, importcpp: "ShapeUpgrade_ClosedFaceDivide(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc SplitSurface*(this: var ShapeUpgrade_ClosedFaceDivide): Standard_Boolean {.
    importcpp: "SplitSurface", header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc SetNbSplitPoints*(this: var ShapeUpgrade_ClosedFaceDivide;
                      num: Standard_Integer) {.importcpp: "SetNbSplitPoints",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc GetNbSplitPoints*(this: ShapeUpgrade_ClosedFaceDivide): Standard_Integer {.
    noSideEffect, importcpp: "GetNbSplitPoints",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
type
  ShapeUpgrade_ClosedFaceDividebase_type* = ShapeUpgrade_FaceDivide

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_ClosedFaceDivide::get_type_name(@)",
                              header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_ClosedFaceDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
proc DynamicType*(this: ShapeUpgrade_ClosedFaceDivide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_ClosedFaceDivide.hxx".}
##  Created on: 2006-08-07
##  Created by: Galina KULIKOVA
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ShapeUpgrade_FaceDivide, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeUpgrade_FaceDivideArea"
discard "forward decl of ShapeUpgrade_FaceDivideArea"
type
  Handle_ShapeUpgrade_FaceDivideArea* = handle[ShapeUpgrade_FaceDivideArea]

## ! Divides face by max area criterium.

type
  ShapeUpgrade_FaceDivideArea* {.importcpp: "ShapeUpgrade_FaceDivideArea",
                                header: "ShapeUpgrade_FaceDivideArea.hxx", bycopy.} = object of ShapeUpgrade_FaceDivide ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## empty
                                                                                                                 ## constructor.


proc constructShapeUpgrade_FaceDivideArea*(): ShapeUpgrade_FaceDivideArea {.
    constructor, importcpp: "ShapeUpgrade_FaceDivideArea(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc constructShapeUpgrade_FaceDivideArea*(F: TopoDS_Face): ShapeUpgrade_FaceDivideArea {.
    constructor, importcpp: "ShapeUpgrade_FaceDivideArea(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc Perform*(this: var ShapeUpgrade_FaceDivideArea): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc MaxArea*(this: var ShapeUpgrade_FaceDivideArea): var Standard_Real {.
    importcpp: "MaxArea", header: "ShapeUpgrade_FaceDivideArea.hxx".}
type
  ShapeUpgrade_FaceDivideAreabase_type* = ShapeUpgrade_FaceDivide

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_FaceDivideArea::get_type_name(@)",
                              header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_FaceDivideArea::get_type_descriptor(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc DynamicType*(this: ShapeUpgrade_FaceDivideArea): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
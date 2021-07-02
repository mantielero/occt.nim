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

discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeUpgrade_FaceDivideArea"
discard "forward decl of ShapeUpgrade_FaceDivideArea"
type
  HandleShapeUpgradeFaceDivideArea* = Handle[ShapeUpgradeFaceDivideArea]

## ! Divides face by max area criterium.

type
  ShapeUpgradeFaceDivideArea* {.importcpp: "ShapeUpgrade_FaceDivideArea",
                               header: "ShapeUpgrade_FaceDivideArea.hxx", bycopy.} = object of ShapeUpgradeFaceDivide ##
                                                                                                               ## !
                                                                                                               ## Creates
                                                                                                               ## empty
                                                                                                               ## constructor.


proc constructShapeUpgradeFaceDivideArea*(): ShapeUpgradeFaceDivideArea {.
    constructor, importcpp: "ShapeUpgrade_FaceDivideArea(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc constructShapeUpgradeFaceDivideArea*(f: TopoDS_Face): ShapeUpgradeFaceDivideArea {.
    constructor, importcpp: "ShapeUpgrade_FaceDivideArea(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc perform*(this: var ShapeUpgradeFaceDivideArea): StandardBoolean {.
    importcpp: "Perform", header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc maxArea*(this: var ShapeUpgradeFaceDivideArea): var StandardReal {.
    importcpp: "MaxArea", header: "ShapeUpgrade_FaceDivideArea.hxx".}
type
  ShapeUpgradeFaceDivideAreabaseType* = ShapeUpgradeFaceDivide

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_FaceDivideArea::get_type_name(@)",
                            header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_FaceDivideArea::get_type_descriptor(@)",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}
proc dynamicType*(this: ShapeUpgradeFaceDivideArea): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FaceDivideArea.hxx".}


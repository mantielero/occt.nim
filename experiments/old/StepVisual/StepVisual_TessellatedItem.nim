##  Created on: 2015-10-29
##  Created by: Galina Kulikova
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_TessellatedItem"
type
  HandleC1C1* = Handle[StepVisualTessellatedItem]
  StepVisualTessellatedItem* {.importcpp: "StepVisual_TessellatedItem",
                              header: "StepVisual_TessellatedItem.hxx", bycopy.} = object of StepGeomGeometricRepresentationItem


proc `new`*(this: var StepVisualTessellatedItem; theSize: csize_t): pointer {.
    importcpp: "StepVisual_TessellatedItem::operator new",
    header: "StepVisual_TessellatedItem.hxx".}
proc `delete`*(this: var StepVisualTessellatedItem; theAddress: pointer) {.
    importcpp: "StepVisual_TessellatedItem::operator delete",
    header: "StepVisual_TessellatedItem.hxx".}
proc `new[]`*(this: var StepVisualTessellatedItem; theSize: csize_t): pointer {.
    importcpp: "StepVisual_TessellatedItem::operator new[]",
    header: "StepVisual_TessellatedItem.hxx".}
proc `delete[]`*(this: var StepVisualTessellatedItem; theAddress: pointer) {.
    importcpp: "StepVisual_TessellatedItem::operator delete[]",
    header: "StepVisual_TessellatedItem.hxx".}
proc `new`*(this: var StepVisualTessellatedItem; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepVisual_TessellatedItem::operator new",
    header: "StepVisual_TessellatedItem.hxx".}
proc `delete`*(this: var StepVisualTessellatedItem; a2: pointer; a3: pointer) {.
    importcpp: "StepVisual_TessellatedItem::operator delete",
    header: "StepVisual_TessellatedItem.hxx".}
proc constructStepVisualTessellatedItem*(): StepVisualTessellatedItem {.
    constructor, importcpp: "StepVisual_TessellatedItem(@)",
    header: "StepVisual_TessellatedItem.hxx".}
type
  StepVisualTessellatedItembaseType* = StepGeomGeometricRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepVisual_TessellatedItem::get_type_name(@)",
                            header: "StepVisual_TessellatedItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_TessellatedItem::get_type_descriptor(@)",
    header: "StepVisual_TessellatedItem.hxx".}
proc dynamicType*(this: StepVisualTessellatedItem): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_TessellatedItem.hxx".}
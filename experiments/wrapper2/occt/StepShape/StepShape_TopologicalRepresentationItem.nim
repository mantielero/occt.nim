##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of StepShape_TopologicalRepresentationItem"
discard "forward decl of StepShape_TopologicalRepresentationItem"
type
  HandleStepShapeTopologicalRepresentationItem* = Handle[
      StepShapeTopologicalRepresentationItem]
  StepShapeTopologicalRepresentationItem* {.
      importcpp: "StepShape_TopologicalRepresentationItem",
      header: "StepShape_TopologicalRepresentationItem.hxx", bycopy.} = object of StepReprRepresentationItem ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## TopologicalRepresentationItem


proc constructStepShapeTopologicalRepresentationItem*(): StepShapeTopologicalRepresentationItem {.
    constructor, importcpp: "StepShape_TopologicalRepresentationItem(@)",
    header: "StepShape_TopologicalRepresentationItem.hxx".}
type
  StepShapeTopologicalRepresentationItembaseType* = StepReprRepresentationItem

proc getTypeName*(): cstring {.importcpp: "StepShape_TopologicalRepresentationItem::get_type_name(@)", header: "StepShape_TopologicalRepresentationItem.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepShape_TopologicalRepresentationItem::get_type_descriptor(@)",
    header: "StepShape_TopologicalRepresentationItem.hxx".}
proc dynamicType*(this: StepShapeTopologicalRepresentationItem): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepShape_TopologicalRepresentationItem.hxx".}

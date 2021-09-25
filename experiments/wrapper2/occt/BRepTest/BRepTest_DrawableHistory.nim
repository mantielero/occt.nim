##  Created on: 2018/03/21
##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Drawable History object.
## ! Allows keeping histories of the algorithms in Draw.

type
  BRepTestDrawableHistory* {.importcpp: "BRepTest_DrawableHistory",
                            header: "BRepTest_DrawableHistory.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                                 ## !
                                                                                                 ## Creation
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## Drawable
                                                                                                 ## history.
    ## !< Tool for tracking History of shape's modification

  BRepTestDrawableHistorybaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "BRepTest_DrawableHistory::get_type_name(@)",
                            header: "BRepTest_DrawableHistory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepTest_DrawableHistory::get_type_descriptor(@)",
    header: "BRepTest_DrawableHistory.hxx".}
proc dynamicType*(this: BRepTestDrawableHistory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTest_DrawableHistory.hxx".}
proc constructBRepTestDrawableHistory*(theHistory: Handle[BRepToolsHistory]): BRepTestDrawableHistory {.
    constructor, importcpp: "BRepTest_DrawableHistory(@)",
    header: "BRepTest_DrawableHistory.hxx".}
proc history*(this: BRepTestDrawableHistory): Handle[BRepToolsHistory] {.
    noSideEffect, importcpp: "History", header: "BRepTest_DrawableHistory.hxx".}
proc drawOn*(this: BRepTestDrawableHistory; a2: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "BRepTest_DrawableHistory.hxx".}
proc dump*(this: BRepTestDrawableHistory; theS: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepTest_DrawableHistory.hxx".}
proc whatis*(this: BRepTestDrawableHistory; theDI: var DrawInterpretor) {.
    noSideEffect, importcpp: "Whatis", header: "BRepTest_DrawableHistory.hxx".}
discard "forward decl of BRepTest_DrawableHistory"
type
  HandleBRepTestDrawableHistory* = Handle[BRepTestDrawableHistory]


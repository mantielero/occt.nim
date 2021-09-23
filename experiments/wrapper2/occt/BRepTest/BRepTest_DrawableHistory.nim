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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../BRepTools/BRepTools_History,
  ../Draw/Draw_Drawable3D, ../Draw/Draw_Interpretor, ../Standard/Standard_OStream

## ! Drawable History object.
## ! Allows keeping histories of the algorithms in Draw.

type
  BRepTest_DrawableHistory* {.importcpp: "BRepTest_DrawableHistory",
                             header: "BRepTest_DrawableHistory.hxx", bycopy.} = object of Draw_Drawable3D ##
                                                                                                   ## !
                                                                                                   ## Creation
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## Drawable
                                                                                                   ## history.
    ## !< Tool for tracking History of shape's modification

  BRepTest_DrawableHistorybase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "BRepTest_DrawableHistory::get_type_name(@)",
                              header: "BRepTest_DrawableHistory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepTest_DrawableHistory::get_type_descriptor(@)",
    header: "BRepTest_DrawableHistory.hxx".}
proc DynamicType*(this: BRepTest_DrawableHistory): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepTest_DrawableHistory.hxx".}
proc constructBRepTest_DrawableHistory*(theHistory: handle[BRepTools_History]): BRepTest_DrawableHistory {.
    constructor, importcpp: "BRepTest_DrawableHistory(@)",
    header: "BRepTest_DrawableHistory.hxx".}
proc History*(this: BRepTest_DrawableHistory): handle[BRepTools_History] {.
    noSideEffect, importcpp: "History", header: "BRepTest_DrawableHistory.hxx".}
proc DrawOn*(this: BRepTest_DrawableHistory; a2: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "BRepTest_DrawableHistory.hxx".}
proc Dump*(this: BRepTest_DrawableHistory; theS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "BRepTest_DrawableHistory.hxx".}
proc Whatis*(this: BRepTest_DrawableHistory; theDI: var Draw_Interpretor) {.
    noSideEffect, importcpp: "Whatis", header: "BRepTest_DrawableHistory.hxx".}
discard "forward decl of BRepTest_DrawableHistory"
type
  Handle_BRepTest_DrawableHistory* = handle[BRepTest_DrawableHistory]

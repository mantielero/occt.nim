##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2015 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Vec2, ../Standard/Standard_Dump

## ! Auxiliary POD structure - 2D rectangle definition.

type
  Font_Rect* {.importcpp: "Font_Rect", header: "Font_Rect.hxx", bycopy.} = object
    Left* {.importc: "Left".}: cfloat ## !< left   position
    Right* {.importc: "Right".}: cfloat ## !< right  position
    Top* {.importc: "Top".}: cfloat ## !< top    position
    Bottom* {.importc: "Bottom".}: cfloat ## !< bottom position
                                      ## ! Top-left corner as vec2.


proc TopLeft*(this: Font_Rect): NCollection_Vec2[cfloat] {.noSideEffect,
    importcpp: "TopLeft", header: "Font_Rect.hxx".}
proc TopLeft*(this: Font_Rect; theVec: var NCollection_Vec2[cfloat]): var NCollection_Vec2[
    cfloat] {.noSideEffect, importcpp: "TopLeft", header: "Font_Rect.hxx".}
proc TopRight*(this: Font_Rect; theVec: var NCollection_Vec2[cfloat]): var NCollection_Vec2[
    cfloat] {.noSideEffect, importcpp: "TopRight", header: "Font_Rect.hxx".}
proc BottomLeft*(this: Font_Rect; theVec: var NCollection_Vec2[cfloat]): var NCollection_Vec2[
    cfloat] {.noSideEffect, importcpp: "BottomLeft", header: "Font_Rect.hxx".}
proc BottomRight*(this: Font_Rect; theVec: var NCollection_Vec2[cfloat]): var NCollection_Vec2[
    cfloat] {.noSideEffect, importcpp: "BottomRight", header: "Font_Rect.hxx".}
proc Width*(this: Font_Rect): cfloat {.noSideEffect, importcpp: "Width",
                                   header: "Font_Rect.hxx".}
proc Height*(this: Font_Rect): cfloat {.noSideEffect, importcpp: "Height",
                                    header: "Font_Rect.hxx".}
proc DumpJson*(this: Font_Rect; theOStream: var Standard_OStream; a3: Standard_Integer) {.
    noSideEffect, importcpp: "DumpJson", header: "Font_Rect.hxx".}
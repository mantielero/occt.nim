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

## ! Auxiliary POD structure - 2D rectangle definition.

type
  FontRect* {.importcpp: "Font_Rect", header: "Font_Rect.hxx", bycopy.} = object
    left* {.importc: "Left".}: cfloat ## !< left   position
    right* {.importc: "Right".}: cfloat ## !< right  position
    top* {.importc: "Top".}: cfloat ## !< top    position
    bottom* {.importc: "Bottom".}: cfloat ## !< bottom position
                                      ## ! Top-left corner as vec2.


proc topLeft*(this: FontRect): NCollectionVec2[cfloat] {.noSideEffect,
    importcpp: "TopLeft", header: "Font_Rect.hxx".}
proc topLeft*(this: FontRect; theVec: var NCollectionVec2[cfloat]): var NCollectionVec2[
    cfloat] {.noSideEffect, importcpp: "TopLeft", header: "Font_Rect.hxx".}
proc topRight*(this: FontRect; theVec: var NCollectionVec2[cfloat]): var NCollectionVec2[
    cfloat] {.noSideEffect, importcpp: "TopRight", header: "Font_Rect.hxx".}
proc bottomLeft*(this: FontRect; theVec: var NCollectionVec2[cfloat]): var NCollectionVec2[
    cfloat] {.noSideEffect, importcpp: "BottomLeft", header: "Font_Rect.hxx".}
proc bottomRight*(this: FontRect; theVec: var NCollectionVec2[cfloat]): var NCollectionVec2[
    cfloat] {.noSideEffect, importcpp: "BottomRight", header: "Font_Rect.hxx".}
proc width*(this: FontRect): cfloat {.noSideEffect, importcpp: "Width",
                                  header: "Font_Rect.hxx".}
proc height*(this: FontRect): cfloat {.noSideEffect, importcpp: "Height",
                                   header: "Font_Rect.hxx".}
proc dumpJson*(this: FontRect; theOStream: var StandardOStream; a3: int) {.noSideEffect,
    importcpp: "DumpJson", header: "Font_Rect.hxx".}














































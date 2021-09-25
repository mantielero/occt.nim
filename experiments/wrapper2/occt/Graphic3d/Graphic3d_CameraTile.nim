##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Class defines the area (Tile) inside a view.

type
  Graphic3dCameraTile* {.importcpp: "Graphic3d_CameraTile",
                        header: "Graphic3d_CameraTile.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor.
                                                                         ## !
                                                                         ## Initializes the empty Tile of zero size and
                                                                         ## lower-left offset
                                                                         ## orientation.
                                                                         ## ! Such Tile is
                                                                         ## considered
                                                                         ## uninitialized
                                                                         ## (invalid).
    totalSize* {.importc: "TotalSize".}: Graphic3dVec2i ## !< total size of the View area, in pixels
    tileSize* {.importc: "TileSize".}: Graphic3dVec2i ## !< size of the Tile, in pixels
    offset* {.importc: "Offset".}: Graphic3dVec2i ## !< the lower-left corner of the Tile relative to the View area (or upper-left if IsTopDown is true), in pixels
    isTopDown* {.importc: "IsTopDown".}: bool ## !< indicate the offset coordinate system - lower-left (default) or top-down


proc constructGraphic3dCameraTile*(): Graphic3dCameraTile {.constructor,
    importcpp: "Graphic3d_CameraTile(@)", header: "Graphic3d_CameraTile.hxx".}
proc isValid*(this: Graphic3dCameraTile): bool {.noSideEffect, importcpp: "IsValid",
    header: "Graphic3d_CameraTile.hxx".}
proc offsetLowerLeft*(this: Graphic3dCameraTile): Graphic3dVec2i {.noSideEffect,
    importcpp: "OffsetLowerLeft", header: "Graphic3d_CameraTile.hxx".}
proc cropped*(this: Graphic3dCameraTile): Graphic3dCameraTile {.noSideEffect,
    importcpp: "Cropped", header: "Graphic3d_CameraTile.hxx".}
proc `==`*(this: Graphic3dCameraTile; theOther: Graphic3dCameraTile): bool {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_CameraTile.hxx".}
proc dumpJson*(this: Graphic3dCameraTile; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_CameraTile.hxx".}

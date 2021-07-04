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

import
  Graphic3d_Vec2, ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_TypeDef

## ! Class defines the area (Tile) inside a view.

type
  Graphic3d_CameraTile* {.importcpp: "Graphic3d_CameraTile",
                         header: "Graphic3d_CameraTile.hxx", bycopy.} = object ## !
                                                                          ## Default
                                                                          ## constructor.
                                                                          ## !
                                                                          ## Initializes the empty Tile of zero size and
                                                                          ## lower-left offset
                                                                          ## orientation.
                                                                          ## ! Such Tile is
                                                                          ## considered
                                                                          ## uninitialized
                                                                          ## (invalid).
    TotalSize* {.importc: "TotalSize".}: Graphic3d_Vec2i ## !< total size of the View area, in pixels
    TileSize* {.importc: "TileSize".}: Graphic3d_Vec2i ## !< size of the Tile, in pixels
    Offset* {.importc: "Offset".}: Graphic3d_Vec2i ## !< the lower-left corner of the Tile relative to the View area (or upper-left if IsTopDown is true), in pixels
    IsTopDown* {.importc: "IsTopDown".}: bool ## !< indicate the offset coordinate system - lower-left (default) or top-down


proc constructGraphic3d_CameraTile*(): Graphic3d_CameraTile {.constructor,
    importcpp: "Graphic3d_CameraTile(@)", header: "Graphic3d_CameraTile.hxx".}
proc IsValid*(this: Graphic3d_CameraTile): bool {.noSideEffect, importcpp: "IsValid",
    header: "Graphic3d_CameraTile.hxx".}
proc OffsetLowerLeft*(this: Graphic3d_CameraTile): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "OffsetLowerLeft", header: "Graphic3d_CameraTile.hxx".}
proc Cropped*(this: Graphic3d_CameraTile): Graphic3d_CameraTile {.noSideEffect,
    importcpp: "Cropped", header: "Graphic3d_CameraTile.hxx".}
proc `==`*(this: Graphic3d_CameraTile; theOther: Graphic3d_CameraTile): bool {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_CameraTile.hxx".}
proc DumpJson*(this: Graphic3d_CameraTile; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_CameraTile.hxx".}
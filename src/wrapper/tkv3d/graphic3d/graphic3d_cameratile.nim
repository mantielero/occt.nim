import ../../tkernel/standard/standard_types
import graphic3d_types





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



proc newGraphic3dCameraTile*(): Graphic3dCameraTile {.cdecl, constructor,
    importcpp: "Graphic3d_CameraTile(@)", header: "Graphic3d_CameraTile.hxx".}
proc isValid*(this: Graphic3dCameraTile): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "Graphic3d_CameraTile.hxx".}
proc offsetLowerLeft*(this: Graphic3dCameraTile): Graphic3dVec2i {.noSideEffect,
    cdecl, importcpp: "OffsetLowerLeft", header: "Graphic3d_CameraTile.hxx".}
proc cropped*(this: Graphic3dCameraTile): Graphic3dCameraTile {.noSideEffect, cdecl,
    importcpp: "Cropped", header: "Graphic3d_CameraTile.hxx".}
proc `==`*(this: Graphic3dCameraTile; theOther: Graphic3dCameraTile): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "Graphic3d_CameraTile.hxx".}
proc dumpJson*(this: Graphic3dCameraTile; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_CameraTile.hxx".}



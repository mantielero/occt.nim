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
  ../Aspect/Aspect_PolygonOffsetMode, ../Standard/Standard_OStream

## ! Polygon offset parameters.

type
  Graphic3d_PolygonOffset* {.importcpp: "Graphic3d_PolygonOffset",
                            header: "Graphic3d_PolygonOffset.hxx", bycopy.} = object
    Mode* {.importc: "Mode".}: Aspect_PolygonOffsetMode
    Factor* {.importc: "Factor".}: Standard_ShortReal
    Units* {.importc: "Units".}: Standard_ShortReal ## ! Empty constructor.


proc constructGraphic3d_PolygonOffset*(): Graphic3d_PolygonOffset {.constructor,
    importcpp: "Graphic3d_PolygonOffset(@)", header: "Graphic3d_PolygonOffset.hxx".}
proc `==`*(this: Graphic3d_PolygonOffset; theOther: Graphic3d_PolygonOffset): bool {.
    noSideEffect, importcpp: "(# == #)", header: "Graphic3d_PolygonOffset.hxx".}
proc DumpJson*(this: Graphic3d_PolygonOffset; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_PolygonOffset.hxx".}
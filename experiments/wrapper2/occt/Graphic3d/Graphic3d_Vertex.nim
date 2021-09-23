##  Created on: 2012-06-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Macro, ../Standard/Standard_ShortReal,
  ../Standard/Standard_Real

## ! This class represents a graphical 3D point.

type
  Graphic3d_Vertex* {.importcpp: "Graphic3d_Vertex",
                     header: "Graphic3d_Vertex.hxx", bycopy.} = object ## ! Creates a point with 0.0, 0.0, 0.0 coordinates.
    xyz* {.importc: "xyz".}: array[3, cfloat]


proc constructGraphic3d_Vertex*(): Graphic3d_Vertex {.constructor,
    importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc constructGraphic3d_Vertex*(theX: Standard_ShortReal; theY: Standard_ShortReal;
                               theZ: Standard_ShortReal): Graphic3d_Vertex {.
    constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc constructGraphic3d_Vertex*(theX: Standard_Real; theY: Standard_Real;
                               theZ: Standard_Real): Graphic3d_Vertex {.
    constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc SetCoord*(this: var Graphic3d_Vertex; theX: Standard_ShortReal;
              theY: Standard_ShortReal; theZ: Standard_ShortReal) {.
    importcpp: "SetCoord", header: "Graphic3d_Vertex.hxx".}
proc SetCoord*(this: var Graphic3d_Vertex; theX: Standard_Real; theY: Standard_Real;
              theZ: Standard_Real) {.importcpp: "SetCoord",
                                   header: "Graphic3d_Vertex.hxx".}
proc Coord*(this: Graphic3d_Vertex; theX: var Standard_ShortReal;
           theY: var Standard_ShortReal; theZ: var Standard_ShortReal) {.noSideEffect,
    importcpp: "Coord", header: "Graphic3d_Vertex.hxx".}
proc Coord*(this: Graphic3d_Vertex; theX: var Standard_Real; theY: var Standard_Real;
           theZ: var Standard_Real) {.noSideEffect, importcpp: "Coord",
                                   header: "Graphic3d_Vertex.hxx".}
proc X*(this: Graphic3d_Vertex): Standard_ShortReal {.noSideEffect, importcpp: "X",
    header: "Graphic3d_Vertex.hxx".}
proc Y*(this: Graphic3d_Vertex): Standard_ShortReal {.noSideEffect, importcpp: "Y",
    header: "Graphic3d_Vertex.hxx".}
proc Z*(this: Graphic3d_Vertex): Standard_ShortReal {.noSideEffect, importcpp: "Z",
    header: "Graphic3d_Vertex.hxx".}
proc Distance*(this: Graphic3d_Vertex; theOther: Graphic3d_Vertex): Standard_ShortReal {.
    noSideEffect, importcpp: "Distance", header: "Graphic3d_Vertex.hxx".}
proc DumpJson*(this: Graphic3d_Vertex; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Vertex.hxx".}
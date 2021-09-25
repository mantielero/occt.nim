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

## ! This class represents a graphical 3D point.

type
  Graphic3dVertex* {.importcpp: "Graphic3d_Vertex", header: "Graphic3d_Vertex.hxx",
                    bycopy.} = object ## ! Creates a point with 0.0, 0.0, 0.0 coordinates.
    xyz* {.importc: "xyz".}: array[3, cfloat]


proc constructGraphic3dVertex*(): Graphic3dVertex {.constructor,
    importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc constructGraphic3dVertex*(theX: StandardShortReal; theY: StandardShortReal;
                              theZ: StandardShortReal): Graphic3dVertex {.
    constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc constructGraphic3dVertex*(theX: float; theY: float; theZ: float): Graphic3dVertex {.
    constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc setCoord*(this: var Graphic3dVertex; theX: StandardShortReal;
              theY: StandardShortReal; theZ: StandardShortReal) {.
    importcpp: "SetCoord", header: "Graphic3d_Vertex.hxx".}
proc setCoord*(this: var Graphic3dVertex; theX: float; theY: float; theZ: float) {.
    importcpp: "SetCoord", header: "Graphic3d_Vertex.hxx".}
proc coord*(this: Graphic3dVertex; theX: var StandardShortReal;
           theY: var StandardShortReal; theZ: var StandardShortReal) {.noSideEffect,
    importcpp: "Coord", header: "Graphic3d_Vertex.hxx".}
proc coord*(this: Graphic3dVertex; theX: var float; theY: var float; theZ: var float) {.
    noSideEffect, importcpp: "Coord", header: "Graphic3d_Vertex.hxx".}
proc x*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, importcpp: "X",
    header: "Graphic3d_Vertex.hxx".}
proc y*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, importcpp: "Y",
    header: "Graphic3d_Vertex.hxx".}
proc z*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, importcpp: "Z",
    header: "Graphic3d_Vertex.hxx".}
proc distance*(this: Graphic3dVertex; theOther: Graphic3dVertex): StandardShortReal {.
    noSideEffect, importcpp: "Distance", header: "Graphic3d_Vertex.hxx".}
proc dumpJson*(this: Graphic3dVertex; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_Vertex.hxx".}

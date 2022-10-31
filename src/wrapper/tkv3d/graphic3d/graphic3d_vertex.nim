import ../../tkernel/standard/standard_types
import graphic3d_types





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



proc newGraphic3dVertex*(): Graphic3dVertex {.cdecl, constructor,
    importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
#proc newGraphic3dVertex*(theX: StandardShortReal; theY: StandardShortReal;
#                        theZ: StandardShortReal): Graphic3dVertex {.cdecl,
#    constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
proc newGraphic3dVertex*(theX: cfloat; theY: cfloat; theZ: cfloat): Graphic3dVertex {.
    cdecl, constructor, importcpp: "Graphic3d_Vertex(@)", header: "Graphic3d_Vertex.hxx".}
#proc setCoord*(this: var Graphic3dVertex; theX: StandardShortReal;
#              theY: StandardShortReal; theZ: StandardShortReal) {.cdecl,
#    importcpp: "SetCoord", header: "Graphic3d_Vertex.hxx".}
proc setCoord*(this: var Graphic3dVertex; theX: cfloat; theY: cfloat; theZ: cfloat) {.
    cdecl, importcpp: "SetCoord", header: "Graphic3d_Vertex.hxx".}
#proc coord*(this: Graphic3dVertex; theX: var StandardShortReal;
#           theY: var StandardShortReal; theZ: var StandardShortReal) {.noSideEffect,
#    cdecl, importcpp: "Coord", header: "Graphic3d_Vertex.hxx".}
proc coord*(this: Graphic3dVertex; theX: var cfloat; theY: var cfloat; theZ: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coord", header: "Graphic3d_Vertex.hxx".}
proc x*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "X", header: "Graphic3d_Vertex.hxx".}
proc y*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Y", header: "Graphic3d_Vertex.hxx".}
proc z*(this: Graphic3dVertex): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Z", header: "Graphic3d_Vertex.hxx".}
proc distance*(this: Graphic3dVertex; theOther: Graphic3dVertex): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "Distance", header: "Graphic3d_Vertex.hxx".}
proc dumpJson*(this: Graphic3dVertex; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_Vertex.hxx".}



import graphic3d_types



##  Created on: 2001-01-04
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

## ! Contains polylines array definition.



proc newGraphic3dArrayOfPolylines*(theMaxVertexs: cint; theMaxBounds: cint;
                                  theMaxEdges: cint;
                                  theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfPolylines {.
    cdecl, constructor, importcpp: "Graphic3d_ArrayOfPolylines(@)", header: "Graphic3d_ArrayOfPolylines.hxx".}
proc newGraphic3dArrayOfPolylines*(theMaxVertexs: cint; theMaxBounds: cint = 0;
                                  theMaxEdges: cint = 0;
                                  theHasVColors: bool = false;
                                  theHasBColors: bool = false): Graphic3dArrayOfPolylines {.
    cdecl, constructor, importcpp: "Graphic3d_ArrayOfPolylines(@)", header: "Graphic3d_ArrayOfPolylines.hxx".}



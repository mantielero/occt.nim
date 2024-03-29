import prs3d_types
import ../gp/gp_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types
import ../poly/poly_types





##  Created on: 2016-02-04
##  Created by: Anastasia BORISOVA
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

## ! Base class to build 3D surfaces presentation of quadric surfaces.



proc trianglesNb*(theSlicesNb: cint; theStacksNb: cint): cint {.cdecl,
    importcpp: "Prs3d_ToolQuadric::TrianglesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
proc verticesNb*(theSlicesNb: cint; theStacksNb: cint; theIsIndexed: bool = true): cint {.
    cdecl, importcpp: "Prs3d_ToolQuadric::VerticesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
proc createTriangulation*(this: Prs3dToolQuadric; theTrsf: gp_Trsf): Handle[
    Graphic3dArrayOfTriangles] {.noSideEffect, cdecl,
                                importcpp: "CreateTriangulation", header: "Prs3d_ToolQuadric.hxx".}
proc createPolyTriangulation*(this: Prs3dToolQuadric; theTrsf: gp_Trsf): Handle[
    PolyTriangulation] {.noSideEffect, cdecl, importcpp: "CreatePolyTriangulation",
                        header: "Prs3d_ToolQuadric.hxx".}
proc fillArray*(this: Prs3dToolQuadric;
               theArray: var Handle[Graphic3dArrayOfTriangles]; theTrsf: gp_Trsf) {.
    noSideEffect, cdecl, importcpp: "FillArray", header: "Prs3d_ToolQuadric.hxx".}
proc fillArray*(this: Prs3dToolQuadric;
               theArray: var Handle[Graphic3dArrayOfTriangles];
               theTriangulation: var Handle[PolyTriangulation]; theTrsf: gp_Trsf) {.
    noSideEffect, cdecl, importcpp: "FillArray", header: "Prs3d_ToolQuadric.hxx".}



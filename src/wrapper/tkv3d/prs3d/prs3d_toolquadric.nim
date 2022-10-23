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

type
  Prs3dToolQuadric* {.importcpp: "Prs3d_ToolQuadric",
                     header: "Prs3d_ToolQuadric.hxx", bycopy.} = object of RootObj ## ! Return number of triangles for presentation with the given params.
                                                                   ## ! Generate primitives for 3D quadric surface presentation.
                                                                   ## ! @param theTrsf [in] optional
                                                                   ## transformation to apply
                                                                   ## ! @return generated triangulation
                                                                   ## ! Generate primitives for 3D quadric surface presentation.
                                                                   ## ! @param theArray [out] generated array of triangles
                                                                   ## ! @param
                                                                   ## theTriangulation [out] generated triangulation
                                                                   ## ! @param theTrsf [in] optional
                                                                   ## transformation to apply
                                                                   ## ! Return number of triangles in generated presentation.
    ## !< number of slices within U parameter
    ## !< number of stacks within V parameter


proc trianglesNb*(theSlicesNb: cint; theStacksNb: cint): cint {.cdecl,
    importcpp: "Prs3d_ToolQuadric::TrianglesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
proc verticesNb*(theSlicesNb: cint; theStacksNb: cint; theIsIndexed: bool = true): cint {.
    cdecl, importcpp: "Prs3d_ToolQuadric::VerticesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
proc createTriangulation*(this: Prs3dToolQuadric; theTrsf: TrsfObj): Handle[
    Graphic3dArrayOfTriangles] {.noSideEffect, cdecl,
                                importcpp: "CreateTriangulation", header: "Prs3d_ToolQuadric.hxx".}
proc createPolyTriangulation*(this: Prs3dToolQuadric; theTrsf: TrsfObj): Handle[
    PolyTriangulation] {.noSideEffect, cdecl, importcpp: "CreatePolyTriangulation",
                        header: "Prs3d_ToolQuadric.hxx".}
proc fillArray*(this: Prs3dToolQuadric;
               theArray: var Handle[Graphic3dArrayOfTriangles]; theTrsf: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "FillArray", header: "Prs3d_ToolQuadric.hxx".}
proc fillArray*(this: Prs3dToolQuadric;
               theArray: var Handle[Graphic3dArrayOfTriangles];
               theTriangulation: var Handle[PolyTriangulation]; theTrsf: TrsfObj) {.
    noSideEffect, cdecl, importcpp: "FillArray", header: "Prs3d_ToolQuadric.hxx".}
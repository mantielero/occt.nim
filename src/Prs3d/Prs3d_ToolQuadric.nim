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
                     header: "Prs3d_ToolQuadric.hxx", bycopy.} = object ## ! Return number of triangles for presentation with the given params.
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
    graphic3dArrayOfTriangles* {.importc: "Graphic3d_ArrayOfTriangles".}: Handle
    polyTriangulation* {.importc: "Poly_Triangulation".}: Handle
    ## !< number of slices within U parameter
    ## !< number of stacks within V parameter


proc trianglesNb*(theSlicesNb: int; theStacksNb: int): int {.
    importcpp: "Prs3d_ToolQuadric::TrianglesNb(@)",
    header: "Prs3d_ToolQuadric.hxx".}
proc verticesNb*(theSlicesNb: int; theStacksNb: int; theIsIndexed: bool = true): int {.
    importcpp: "Prs3d_ToolQuadric::VerticesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
## !!!Ignored construct:  CreateTriangulation ( const gp_Trsf & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  CreatePolyTriangulation ( const gp_Trsf & theTrsf ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  ! Generate primitives for 3D quadric surface and fill the given array.
## ! @param theArray [in][out] the array of vertices;
## !                           when NULL, function will create an indexed array;
## !                           when not NULL, triangles will be appended to the end of array
## !                           (will raise an exception if reserved array size is not large enough)
## ! @param theTrsf [in] optional transformation to apply void FillArray ( Handle ( Graphic3d_ArrayOfTriangles ) & theArray , const gp_Trsf & theTrsf ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Generate primitives for 3D quadric surface presentation.
## ! @param theArray [out] generated array of triangles
## ! @param theTriangulation [out] generated triangulation
## ! @param theTrsf [in] optional transformation to apply Standard_DEPRECATED ( Deprecated method, CreateTriangulation() and CreatePolyTriangulation() should be used instead ) void FillArray ( Handle ( Graphic3d_ArrayOfTriangles ) & theArray , Handle ( Poly_Triangulation ) & theTriangulation , const gp_Trsf & theTrsf ) const ;
## Error: identifier expected, but got: Deprecated method, CreateTriangulation() and CreatePolyTriangulation() should be used instead!!!















































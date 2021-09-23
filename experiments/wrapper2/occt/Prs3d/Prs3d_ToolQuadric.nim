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

import
  ../Graphic3d/Graphic3d_ArrayOfTriangles, ../Poly/Poly_Triangulation

## ! Base class to build 3D surfaces presentation of quadric surfaces.

type
  Prs3d_ToolQuadric* {.importcpp: "Prs3d_ToolQuadric",
                      header: "Prs3d_ToolQuadric.hxx", bycopy.} = object ## ! Return number of triangles for presentation with the given params.
                                                                    ## ! Generate primitives for 3D quadric surface
                                                                    ## presentation.
                                                                    ## ! @param theTrsf [in] optional
                                                                    ## transformation to apply
                                                                    ## ! @return generated
                                                                    ## triangulation
                                                                    ## ! Generate primitives for 3D quadric surface
                                                                    ## presentation.
                                                                    ## ! @param theArray [out] generated array of triangles
                                                                    ## ! @param
                                                                    ## theTriangulation [out] generated
                                                                    ## triangulation
                                                                    ## ! @param theTrsf [in] optional
                                                                    ## transformation to apply
                                                                    ## ! Return number of triangles in generated
                                                                    ## presentation.
    ## !< number of slices within U parameter
    ## !< number of stacks within V parameter


proc TrianglesNb*(theSlicesNb: Standard_Integer; theStacksNb: Standard_Integer): Standard_Integer {.
    importcpp: "Prs3d_ToolQuadric::TrianglesNb(@)",
    header: "Prs3d_ToolQuadric.hxx".}
proc VerticesNb*(theSlicesNb: Standard_Integer; theStacksNb: Standard_Integer;
                theIsIndexed: Standard_Boolean = Standard_True): Standard_Integer {.
    importcpp: "Prs3d_ToolQuadric::VerticesNb(@)", header: "Prs3d_ToolQuadric.hxx".}
proc CreateTriangulation*(this: Prs3d_ToolQuadric; theTrsf: gp_Trsf): handle[
    Graphic3d_ArrayOfTriangles] {.noSideEffect, importcpp: "CreateTriangulation",
                                 header: "Prs3d_ToolQuadric.hxx".}
proc CreatePolyTriangulation*(this: Prs3d_ToolQuadric; theTrsf: gp_Trsf): handle[
    Poly_Triangulation] {.noSideEffect, importcpp: "CreatePolyTriangulation",
                         header: "Prs3d_ToolQuadric.hxx".}
proc FillArray*(this: Prs3d_ToolQuadric;
               theArray: var handle[Graphic3d_ArrayOfTriangles]; theTrsf: gp_Trsf) {.
    noSideEffect, importcpp: "FillArray", header: "Prs3d_ToolQuadric.hxx".}
## !!!Ignored construct:  public : ! Generate primitives for 3D quadric surface presentation.
## ! @param theArray [out] generated array of triangles
## ! @param theTriangulation [out] generated triangulation
## ! @param theTrsf [in] optional transformation to apply Standard_DEPRECATED ( Deprecated method, CreateTriangulation() and CreatePolyTriangulation() should be used instead ) void FillArray ( opencascade :: handle < Graphic3d_ArrayOfTriangles > [end of template] & theArray , opencascade :: handle < Poly_Triangulation > [end of template] & theTriangulation , const gp_Trsf & theTrsf ) const ;
## Error: identifier expected, but got: Deprecated method, CreateTriangulation() and CreatePolyTriangulation() should be used instead!!!

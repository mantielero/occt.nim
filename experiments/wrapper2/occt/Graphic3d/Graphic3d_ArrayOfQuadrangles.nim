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

import
  Graphic3d_ArrayOfPrimitives

## ! Contains quadrangles array definition.
## ! WARNING! Quadrangle primitives might be unsupported by graphics library.
## ! Triangulation should be used instead of quads for better compatibility.

type
  Graphic3d_ArrayOfQuadrangles* {.importcpp: "Graphic3d_ArrayOfQuadrangles",
                                 header: "Graphic3d_ArrayOfQuadrangles.hxx",
                                 bycopy.} = object of Graphic3d_ArrayOfPrimitives ## !
                                                                             ## Creates an
                                                                             ## array of
                                                                             ## quadrangles
                                                                             ## (Graphic3d_TOPA_QUADRANGLES), a
                                                                             ## quadrangle can be
                                                                             ## filled as:
                                                                             ## ! 1)
                                                                             ## Creating a set of
                                                                             ## quadrangles
                                                                             ## defined
                                                                             ## with his
                                                                             ## vertexes,
                                                                             ## i.e:
                                                                             ## !
                                                                             ## @code
                                                                             ## !
                                                                             ## myArray =
                                                                             ## Graphic3d_ArrayOfQuadrangles
                                                                             ## (8);
                                                                             ## !
                                                                             ## myArray->AddVertex
                                                                             ## (x1, y1,
                                                                             ## z1);
                                                                             ## !
                                                                             ## ....
                                                                             ## !
                                                                             ## myArray->AddVertex
                                                                             ## (x8, y8,
                                                                             ## z8);
                                                                             ## !
                                                                             ## @endcode
                                                                             ## ! 2)
                                                                             ## Creating a set of
                                                                             ## indexed
                                                                             ## quadrangles
                                                                             ## defined
                                                                             ## with his
                                                                             ## vertex ans
                                                                             ## edges,
                                                                             ## i.e:
                                                                             ## !
                                                                             ## @code
                                                                             ## !
                                                                             ## myArray =
                                                                             ## Graphic3d_ArrayOfQuadrangles (6, 8);
                                                                             ## !
                                                                             ## myArray->AddVertex
                                                                             ## (x1, y1,
                                                                             ## z1);
                                                                             ## !
                                                                             ## ....
                                                                             ## !
                                                                             ## myArray->AddVertex
                                                                             ## (x6, y6,
                                                                             ## z6);
                                                                             ## !
                                                                             ## myArray->AddEdges (1, 2, 3, 4);
                                                                             ## !
                                                                             ## myArray->AddEdges (3, 4, 5, 6);
                                                                             ## !
                                                                             ## @endcode
                                                                             ## !
                                                                             ## @param
                                                                             ## theMaxVertexs
                                                                             ## defines the
                                                                             ## maximum
                                                                             ## allowed
                                                                             ## vertex
                                                                             ## number in the
                                                                             ## array
                                                                             ## !
                                                                             ## @param
                                                                             ## theMaxEdges
                                                                             ## defines the
                                                                             ## maximum
                                                                             ## allowed
                                                                             ## edge
                                                                             ## number in the
                                                                             ## array
                                                                             ## (for
                                                                             ## indexed
                                                                             ## array)
                                                                             ## !
                                                                             ## @param
                                                                             ## theArrayFlags
                                                                             ## array
                                                                             ## flags

  Graphic3d_ArrayOfQuadranglesbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfQuadrangles::get_type_name(@)",
                              header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfQuadrangles::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfQuadrangles): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc constructGraphic3d_ArrayOfQuadrangles*(theMaxVertexs: Standard_Integer;
    theMaxEdges: Standard_Integer; theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfQuadrangles {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangles(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc constructGraphic3d_ArrayOfQuadrangles*(theMaxVertexs: Standard_Integer;
    theMaxEdges: Standard_Integer = 0;
    theHasVNormals: Standard_Boolean = Standard_False;
    theHasVColors: Standard_Boolean = Standard_False;
    theHasVTexels: Standard_Boolean = Standard_False): Graphic3d_ArrayOfQuadrangles {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangles(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
discard "forward decl of Graphic3d_ArrayOfQuadrangles"
type
  Handle_Graphic3d_ArrayOfQuadrangles* = handle[Graphic3d_ArrayOfQuadrangles]

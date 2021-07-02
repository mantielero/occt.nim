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

## ! Contains quadrangles array definition.
## ! WARNING! Quadrangle primitives might be unsupported by graphics library.
## ! Triangulation should be used instead of quads for better compatibility.

type
  Graphic3dArrayOfQuadrangles* {.importcpp: "Graphic3d_ArrayOfQuadrangles",
                                header: "Graphic3d_ArrayOfQuadrangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                     ## !
                                                                                                                     ## Creates
                                                                                                                     ## an
                                                                                                                     ## array
                                                                                                                     ## of
                                                                                                                     ## quadrangles
                                                                                                                     ## (Graphic3d_TOPA_QUADRANGLES),
                                                                                                                     ## a
                                                                                                                     ## quadrangle
                                                                                                                     ## can
                                                                                                                     ## be
                                                                                                                     ## filled
                                                                                                                     ## as:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## 1)
                                                                                                                     ## Creating
                                                                                                                     ## a
                                                                                                                     ## set
                                                                                                                     ## of
                                                                                                                     ## quadrangles
                                                                                                                     ## defined
                                                                                                                     ## with
                                                                                                                     ## his
                                                                                                                     ## vertexes,
                                                                                                                     ## i.e:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @code
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray
                                                                                                                     ## =
                                                                                                                     ## Graphic3d_ArrayOfQuadrangles
                                                                                                                     ## (8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x1,
                                                                                                                     ## y1,
                                                                                                                     ## z1);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## ....
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x8,
                                                                                                                     ## y8,
                                                                                                                     ## z8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @endcode
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## 2)
                                                                                                                     ## Creating
                                                                                                                     ## a
                                                                                                                     ## set
                                                                                                                     ## of
                                                                                                                     ## indexed
                                                                                                                     ## quadrangles
                                                                                                                     ## defined
                                                                                                                     ## with
                                                                                                                     ## his
                                                                                                                     ## vertex
                                                                                                                     ## ans
                                                                                                                     ## edges,
                                                                                                                     ## i.e:
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @code
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray
                                                                                                                     ## =
                                                                                                                     ## Graphic3d_ArrayOfQuadrangles
                                                                                                                     ## (6,
                                                                                                                     ## 8);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x1,
                                                                                                                     ## y1,
                                                                                                                     ## z1);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## ....
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddVertex
                                                                                                                     ## (x6,
                                                                                                                     ## y6,
                                                                                                                     ## z6);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddEdges
                                                                                                                     ## (1,
                                                                                                                     ## 2,
                                                                                                                     ## 3,
                                                                                                                     ## 4);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## myArray->AddEdges
                                                                                                                     ## (3,
                                                                                                                     ## 4,
                                                                                                                     ## 5,
                                                                                                                     ## 6);
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @endcode
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theMaxVertexs
                                                                                                                     ## defines
                                                                                                                     ## the
                                                                                                                     ## maximum
                                                                                                                     ## allowed
                                                                                                                     ## vertex
                                                                                                                     ## number
                                                                                                                     ## in
                                                                                                                     ## the
                                                                                                                     ## array
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theMaxEdges
                                                                                                                     ## defines
                                                                                                                     ## the
                                                                                                                     ## maximum
                                                                                                                     ## allowed
                                                                                                                     ## edge
                                                                                                                     ## number
                                                                                                                     ## in
                                                                                                                     ## the
                                                                                                                     ## array
                                                                                                                     ## (for
                                                                                                                     ## indexed
                                                                                                                     ## array)
                                                                                                                     ##
                                                                                                                     ## !
                                                                                                                     ## @param
                                                                                                                     ## theArrayFlags
                                                                                                                     ## array
                                                                                                                     ## flags

  Graphic3dArrayOfQuadranglesbaseType* = Graphic3dArrayOfPrimitives

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfQuadrangles::get_type_name(@)",
                            header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfQuadrangles::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc dynamicType*(this: Graphic3dArrayOfQuadrangles): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc constructGraphic3dArrayOfQuadrangles*(theMaxVertexs: StandardInteger;
    theMaxEdges: StandardInteger; theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfQuadrangles {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangles(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
proc constructGraphic3dArrayOfQuadrangles*(theMaxVertexs: StandardInteger;
    theMaxEdges: StandardInteger = 0;
    theHasVNormals: StandardBoolean = standardFalse;
    theHasVColors: StandardBoolean = standardFalse;
    theHasVTexels: StandardBoolean = standardFalse): Graphic3dArrayOfQuadrangles {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangles(@)",
    header: "Graphic3d_ArrayOfQuadrangles.hxx".}
discard "forward decl of Graphic3d_ArrayOfQuadrangles"
type
  HandleGraphic3dArrayOfQuadrangles* = Handle[Graphic3dArrayOfQuadrangles]



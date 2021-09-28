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

## ! Contains triangles array definition

type
  Graphic3dArrayOfTriangles* {.importcpp: "Graphic3d_ArrayOfTriangles",
                              header: "Graphic3d_ArrayOfTriangles.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## triangles
                                                                                                                 ## (Graphic3d_TOPA_TRIANGLES),
                                                                                                                 ## a
                                                                                                                 ## triangle
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
                                                                                                                 ## triangles
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
                                                                                                                 ## Graphic3d_ArrayOfTriangles
                                                                                                                 ## (6);
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
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 3)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## set
                                                                                                                 ## of
                                                                                                                 ## indexed
                                                                                                                 ## triangles
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## his
                                                                                                                 ## vertex
                                                                                                                 ## and
                                                                                                                 ## edges,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfTriangles
                                                                                                                 ## (4,
                                                                                                                 ## 6);
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
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (1,
                                                                                                                 ## 2,
                                                                                                                 ## 3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (2,
                                                                                                                 ## 3,
                                                                                                                 ## 4);
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
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @param
                                                                                                                 ## theArrayFlags
                                                                                                                 ## array
                                                                                                                 ## flags

  Graphic3dArrayOfTrianglesbaseType* = Graphic3dArrayOfPrimitives

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfTriangles::get_type_name(@)",
                            header: "Graphic3d_ArrayOfTriangles.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfTriangles::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfTriangles.hxx".}
proc dynamicType*(this: Graphic3dArrayOfTriangles): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfTriangles.hxx".}
proc constructGraphic3dArrayOfTriangles*(theMaxVertexs: cint; theMaxEdges: cint;
                                        theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfTriangles {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangles(@)",
    header: "Graphic3d_ArrayOfTriangles.hxx".}
proc constructGraphic3dArrayOfTriangles*(theMaxVertexs: cint;
                                        theMaxEdges: cint = 0;
                                        theHasVNormals: bool = false;
                                        theHasVColors: bool = false;
                                        theHasVTexels: bool = false): Graphic3dArrayOfTriangles {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangles(@)",
    header: "Graphic3d_ArrayOfTriangles.hxx".}
discard "forward decl of Graphic3d_ArrayOfTriangles"
type
  HandleC1C1* = Handle[Graphic3dArrayOfTriangles]



























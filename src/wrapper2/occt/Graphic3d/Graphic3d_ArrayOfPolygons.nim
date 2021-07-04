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

## ! Contains polygons array definition.
## ! WARNING! Polygon primitives might be unsupported by graphics library.
## ! Triangulation should be used instead of quads for better compatibility.

type
  Graphic3d_ArrayOfPolygons* {.importcpp: "Graphic3d_ArrayOfPolygons",
                              header: "Graphic3d_ArrayOfPolygons.hxx", bycopy.} = object of Graphic3d_ArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## polygons
                                                                                                                 ## (Graphic3d_TOPA_POLYGONS),
                                                                                                                 ## a
                                                                                                                 ## polygon
                                                                                                                 ## can
                                                                                                                 ## be
                                                                                                                 ## filled
                                                                                                                 ## as:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 1)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## single
                                                                                                                 ## polygon
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
                                                                                                                 ## Graphic3d_ArrayOfPolygons
                                                                                                                 ## (7);
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
                                                                                                                 ## (x7,
                                                                                                                 ## y7,
                                                                                                                 ## z7);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 2)
                                                                                                                 ## Creating
                                                                                                                 ## separate
                                                                                                                 ## polygons
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## a
                                                                                                                 ## predefined
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## bounds
                                                                                                                 ## and
                                                                                                                 ## the
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## vertex
                                                                                                                 ## per
                                                                                                                 ## bound,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolygons
                                                                                                                 ## (7,
                                                                                                                 ## 2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
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
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x5,
                                                                                                                 ## y5,
                                                                                                                 ## z5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## ....
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x7,
                                                                                                                 ## y7,
                                                                                                                 ## z7);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 3)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## single
                                                                                                                 ## indexed
                                                                                                                 ## polygon
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
                                                                                                                 ## Graphic3d_ArrayOfPolygons
                                                                                                                 ## (4,
                                                                                                                 ## 0,
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
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 4)
                                                                                                                 ## Creating
                                                                                                                 ## separate
                                                                                                                 ## polygons
                                                                                                                 ## defined
                                                                                                                 ## with
                                                                                                                 ## a
                                                                                                                 ## predefined
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## bounds
                                                                                                                 ## and
                                                                                                                 ## the
                                                                                                                 ## number
                                                                                                                 ## of
                                                                                                                 ## edges
                                                                                                                 ## per
                                                                                                                 ## bound,
                                                                                                                 ## i.e:
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## @code
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray
                                                                                                                 ## =
                                                                                                                 ## Graphic3d_ArrayOfPolygons
                                                                                                                 ## (6,
                                                                                                                 ## 4,
                                                                                                                 ## 14);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x1,
                                                                                                                 ## y1,
                                                                                                                 ## z1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x2,
                                                                                                                 ## y2,
                                                                                                                 ## z2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x3,
                                                                                                                 ## y3,
                                                                                                                 ## z3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x5,
                                                                                                                 ## y5,
                                                                                                                 ## z5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddVertex
                                                                                                                 ## (x6,
                                                                                                                 ## y6,
                                                                                                                 ## z6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (6);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddBound
                                                                                                                 ## (4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (1);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (3);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (5);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdge
                                                                                                                 ## (4);
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
                                                                                                                 ## theMaxBounds
                                                                                                                 ## defines
                                                                                                                 ## the
                                                                                                                 ## maximum
                                                                                                                 ## allowed
                                                                                                                 ## bound
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

  Graphic3d_ArrayOfPolygonsbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfPolygons::get_type_name(@)",
                              header: "Graphic3d_ArrayOfPolygons.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfPolygons::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPolygons.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfPolygons): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ArrayOfPolygons.hxx".}
proc constructGraphic3d_ArrayOfPolygons*(theMaxVertexs: Standard_Integer;
                                        theMaxBounds: Standard_Integer;
                                        theMaxEdges: Standard_Integer;
                                        theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfPolygons {.
    constructor, importcpp: "Graphic3d_ArrayOfPolygons(@)",
    header: "Graphic3d_ArrayOfPolygons.hxx".}
proc constructGraphic3d_ArrayOfPolygons*(theMaxVertexs: Standard_Integer;
                                        theMaxBounds: Standard_Integer = 0;
                                        theMaxEdges: Standard_Integer = 0;
    theHasVNormals: Standard_Boolean = Standard_False; theHasVColors: Standard_Boolean = Standard_False;
    theHasBColors: Standard_Boolean = Standard_False; theHasVTexels: Standard_Boolean = Standard_False): Graphic3d_ArrayOfPolygons {.
    constructor, importcpp: "Graphic3d_ArrayOfPolygons(@)",
    header: "Graphic3d_ArrayOfPolygons.hxx".}
discard "forward decl of Graphic3d_ArrayOfPolygons"
type
  Handle_Graphic3d_ArrayOfPolygons* = handle[Graphic3d_ArrayOfPolygons]

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

type
  Graphic3dArrayOfPolylines* {.importcpp: "Graphic3d_ArrayOfPolylines",
                              header: "Graphic3d_ArrayOfPolylines.hxx", bycopy.} = object of Graphic3dArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## polylines
                                                                                                                 ## (Graphic3d_TOPA_POLYLINES),
                                                                                                                 ## a
                                                                                                                 ## polyline
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
                                                                                                                 ## polyline
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
                                                                                                                 ## Graphic3d_ArrayOfPolylines
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
                                                                                                                 ## polylines
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
                                                                                                                 ## Graphic3d_ArrayOfPolylines
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
                                                                                                                 ## polyline
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
                                                                                                                 ## Graphic3d_ArrayOfPolylines
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
                                                                                                                 ## creating
                                                                                                                 ## separate
                                                                                                                 ## polylines
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
                                                                                                                 ## Graphic3d_ArrayOfPolylines
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

  Graphic3dArrayOfPolylinesbaseType* = Graphic3dArrayOfPrimitives

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfPolylines::get_type_name(@)",
                            header: "Graphic3d_ArrayOfPolylines.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfPolylines::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPolylines.hxx".}
proc dynamicType*(this: Graphic3dArrayOfPolylines): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfPolylines.hxx".}
proc constructGraphic3dArrayOfPolylines*(theMaxVertexs: int; theMaxBounds: int;
                                        theMaxEdges: int;
                                        theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfPolylines {.
    constructor, importcpp: "Graphic3d_ArrayOfPolylines(@)",
    header: "Graphic3d_ArrayOfPolylines.hxx".}
proc constructGraphic3dArrayOfPolylines*(theMaxVertexs: int; theMaxBounds: int = 0;
                                        theMaxEdges: int = 0;
                                        theHasVColors: bool = false;
                                        theHasBColors: bool = false): Graphic3dArrayOfPolylines {.
    constructor, importcpp: "Graphic3d_ArrayOfPolylines(@)",
    header: "Graphic3d_ArrayOfPolylines.hxx".}
discard "forward decl of Graphic3d_ArrayOfPolylines"
type
  HandleGraphic3dArrayOfPolylines* = Handle[Graphic3dArrayOfPolylines]


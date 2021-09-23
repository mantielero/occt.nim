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

## ! Contains segments array definition.

type
  Graphic3d_ArrayOfSegments* {.importcpp: "Graphic3d_ArrayOfSegments",
                              header: "Graphic3d_ArrayOfSegments.hxx", bycopy.} = object of Graphic3d_ArrayOfPrimitives ##
                                                                                                                 ## !
                                                                                                                 ## Creates
                                                                                                                 ## an
                                                                                                                 ## array
                                                                                                                 ## of
                                                                                                                 ## segments
                                                                                                                 ## (Graphic3d_TOPA_SEGMENTS),
                                                                                                                 ## a
                                                                                                                 ## segment
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
                                                                                                                 ## segments
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
                                                                                                                 ## Graphic3d_ArrayOfSegments
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
                                                                                                                 ## @endcode
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## 2)
                                                                                                                 ## Creating
                                                                                                                 ## a
                                                                                                                 ## set
                                                                                                                 ## of
                                                                                                                 ## indexed
                                                                                                                 ## segments
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
                                                                                                                 ## Graphic3d_ArrayOfSegments
                                                                                                                 ## (4,
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
                                                                                                                 ## (x4,
                                                                                                                 ## y4,
                                                                                                                 ## z4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (1,
                                                                                                                 ## 2);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (3,
                                                                                                                 ## 4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (2,
                                                                                                                 ## 4);
                                                                                                                 ##
                                                                                                                 ## !
                                                                                                                 ## myArray->AddEdges
                                                                                                                 ## (1,
                                                                                                                 ## 3);
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

  Graphic3d_ArrayOfSegmentsbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfSegments::get_type_name(@)",
                              header: "Graphic3d_ArrayOfSegments.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfSegments::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfSegments.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfSegments): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ArrayOfSegments.hxx".}
proc constructGraphic3d_ArrayOfSegments*(theMaxVertexs: Standard_Integer;
                                        theMaxEdges: Standard_Integer;
                                        theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfSegments {.
    constructor, importcpp: "Graphic3d_ArrayOfSegments(@)",
    header: "Graphic3d_ArrayOfSegments.hxx".}
proc constructGraphic3d_ArrayOfSegments*(theMaxVertexs: Standard_Integer;
                                        theMaxEdges: Standard_Integer = 0;
    theHasVColors: Standard_Boolean = Standard_False): Graphic3d_ArrayOfSegments {.
    constructor, importcpp: "Graphic3d_ArrayOfSegments(@)",
    header: "Graphic3d_ArrayOfSegments.hxx".}
discard "forward decl of Graphic3d_ArrayOfSegments"
type
  Handle_Graphic3d_ArrayOfSegments* = handle[Graphic3d_ArrayOfSegments]

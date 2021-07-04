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

## ! Contains triangles strip array definition.

type
  Graphic3d_ArrayOfTriangleStrips* {.importcpp: "Graphic3d_ArrayOfTriangleStrips", header: "Graphic3d_ArrayOfTriangleStrips.hxx",
                                    bycopy.} = object of Graphic3d_ArrayOfPrimitives ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## array
                                                                                ## of
                                                                                ## triangle
                                                                                ## strips
                                                                                ## (Graphic3d_TOPA_TRIANGLESTRIPS),
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
                                                                                ## strip
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
                                                                                ## Graphic3d_ArrayOfTriangleStrips
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
                                                                                ## strips
                                                                                ## defined
                                                                                ## with
                                                                                ## a
                                                                                ## predefined
                                                                                ## number
                                                                                ## of
                                                                                ## strips
                                                                                ## and
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## vertex
                                                                                ## per
                                                                                ## strip,
                                                                                ## i.e:
                                                                                ##
                                                                                ## !
                                                                                ## @code
                                                                                ##
                                                                                ## !
                                                                                ## myArray
                                                                                ## =
                                                                                ## Graphic3d_ArrayOfTriangleStrips
                                                                                ## (8,
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
                                                                                ## (4);
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
                                                                                ## (x8,
                                                                                ## y8,
                                                                                ## z8);
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
                                                                                ## theMaxStrips
                                                                                ## defines
                                                                                ## the
                                                                                ## maximum
                                                                                ## allowed
                                                                                ## strip
                                                                                ## number
                                                                                ## in
                                                                                ## the
                                                                                ## array;
                                                                                ##
                                                                                ## !
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## triangle
                                                                                ## really
                                                                                ## drawn
                                                                                ## is:
                                                                                ## VertexNumber()
                                                                                ## -
                                                                                ## 2
                                                                                ## *
                                                                                ## Min(1,
                                                                                ## BoundNumber())
                                                                                ##
                                                                                ## !
                                                                                ## @param
                                                                                ## theArrayFlags
                                                                                ## array
                                                                                ## flags

  Graphic3d_ArrayOfTriangleStripsbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfTriangleStrips::get_type_name(@)",
                              header: "Graphic3d_ArrayOfTriangleStrips.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfTriangleStrips::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfTriangleStrips.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfTriangleStrips): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfTriangleStrips.hxx".}
proc constructGraphic3d_ArrayOfTriangleStrips*(theMaxVertexs: Standard_Integer;
    theMaxStrips: Standard_Integer; theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfTriangleStrips {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangleStrips(@)",
    header: "Graphic3d_ArrayOfTriangleStrips.hxx".}
proc constructGraphic3d_ArrayOfTriangleStrips*(theMaxVertexs: Standard_Integer;
    theMaxStrips: Standard_Integer = 0;
    theHasVNormals: Standard_Boolean = Standard_False;
    theHasVColors: Standard_Boolean = Standard_False;
    theHasBColors: Standard_Boolean = Standard_False;
    theHasVTexels: Standard_Boolean = Standard_False): Graphic3d_ArrayOfTriangleStrips {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangleStrips(@)",
    header: "Graphic3d_ArrayOfTriangleStrips.hxx".}
discard "forward decl of Graphic3d_ArrayOfTriangleStrips"
type
  Handle_Graphic3d_ArrayOfTriangleStrips* = handle[Graphic3d_ArrayOfTriangleStrips]
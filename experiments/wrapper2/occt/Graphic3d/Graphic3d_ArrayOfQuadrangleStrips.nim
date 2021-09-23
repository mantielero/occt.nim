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

## ! Contains quadrangles strip array definition.
## ! WARNING! Quadrangle primitives might be unsupported by graphics library.
## ! Triangulation should be used instead of quads for better compatibility.

type
  Graphic3d_ArrayOfQuadrangleStrips* {.importcpp: "Graphic3d_ArrayOfQuadrangleStrips", header: "Graphic3d_ArrayOfQuadrangleStrips.hxx",
                                      bycopy.} = object of Graphic3d_ArrayOfPrimitives ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## an
                                                                                  ## array
                                                                                  ## of
                                                                                  ## quadrangle
                                                                                  ## strips
                                                                                  ## (Graphic3d_TOPA_QUADRANGLESTRIPS),
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
                                                                                  ## Graphic3d_ArrayOfQuadrangleStrips
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
                                                                                  ## Graphic3d_ArrayOfQuadrangleStrips
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
                                                                                  ## The
                                                                                  ## number
                                                                                  ## of
                                                                                  ## quadrangle
                                                                                  ## really
                                                                                  ## drawn
                                                                                  ## is:
                                                                                  ## VertexNumber()/2
                                                                                  ## -
                                                                                  ## Min(1,
                                                                                  ## BoundNumber()).
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
                                                                                  ## array
                                                                                  ##
                                                                                  ## !
                                                                                  ## @param
                                                                                  ## theArrayFlags
                                                                                  ## array
                                                                                  ## flags

  Graphic3d_ArrayOfQuadrangleStripsbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfQuadrangleStrips::get_type_name(@)",
                              header: "Graphic3d_ArrayOfQuadrangleStrips.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfQuadrangleStrips::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfQuadrangleStrips.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfQuadrangleStrips): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfQuadrangleStrips.hxx".}
proc constructGraphic3d_ArrayOfQuadrangleStrips*(theMaxVertexs: Standard_Integer;
    theMaxStrips: Standard_Integer; theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfQuadrangleStrips {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangleStrips(@)",
    header: "Graphic3d_ArrayOfQuadrangleStrips.hxx".}
proc constructGraphic3d_ArrayOfQuadrangleStrips*(theMaxVertexs: Standard_Integer;
    theMaxStrips: Standard_Integer = 0;
    theHasVNormals: Standard_Boolean = Standard_False;
    theHasVColors: Standard_Boolean = Standard_False;
    theHasSColors: Standard_Boolean = Standard_False;
    theHasVTexels: Standard_Boolean = Standard_False): Graphic3d_ArrayOfQuadrangleStrips {.
    constructor, importcpp: "Graphic3d_ArrayOfQuadrangleStrips(@)",
    header: "Graphic3d_ArrayOfQuadrangleStrips.hxx".}
discard "forward decl of Graphic3d_ArrayOfQuadrangleStrips"
type
  Handle_Graphic3d_ArrayOfQuadrangleStrips* = handle[
      Graphic3d_ArrayOfQuadrangleStrips]

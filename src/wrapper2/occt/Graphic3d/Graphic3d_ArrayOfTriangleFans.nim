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

## ! Contains triangles fan array definition

type
  Graphic3dArrayOfTriangleFans* {.importcpp: "Graphic3d_ArrayOfTriangleFans",
                                 header: "Graphic3d_ArrayOfTriangleFans.hxx",
                                 bycopy.} = object of Graphic3dArrayOfPrimitives ## !
                                                                            ## Creates an
                                                                            ## array of
                                                                            ## triangle fans
                                                                            ## (Graphic3d_TOPA_TRIANGLEFANS), a
                                                                            ## polygon can be
                                                                            ## filled as:
                                                                            ## ! 1)
                                                                            ## Creating a
                                                                            ## single fan
                                                                            ## defined with his
                                                                            ## vertexes, i.e:
                                                                            ## !
                                                                            ## @code
                                                                            ## !
                                                                            ## myArray =
                                                                            ## Graphic3d_ArrayOfTriangleFans (7);
                                                                            ## !
                                                                            ## myArray->AddVertex (x1, y1, z1);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x7, y7, z7);
                                                                            ## !
                                                                            ## @endcode
                                                                            ## ! 2)
                                                                            ## creating
                                                                            ## separate fans
                                                                            ## defined with a
                                                                            ## predefined
                                                                            ## number of fans and the
                                                                            ## number of
                                                                            ## vertex per fan, i.e:
                                                                            ## !
                                                                            ## @code
                                                                            ## !
                                                                            ## myArray =
                                                                            ## Graphic3d_ArrayOfTriangleFans (8, 2);
                                                                            ## !
                                                                            ## myArray->AddBound (4);
                                                                            ## !
                                                                            ## myArray->AddVertex (x1, y1, z1);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x4, y4, z4);
                                                                            ## !
                                                                            ## myArray->AddBound (4);
                                                                            ## !
                                                                            ## myArray->AddVertex (x5, y5, z5);
                                                                            ## !   ....
                                                                            ## !
                                                                            ## myArray->AddVertex (x8, y8, z8);
                                                                            ## !
                                                                            ## @endcode
                                                                            ## ! The
                                                                            ## number of
                                                                            ## triangle
                                                                            ## really
                                                                            ## drawn is:
                                                                            ## VertexNumber() - 2 *
                                                                            ## Min(1,
                                                                            ## BoundNumber())
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
                                                                            ## theMaxFans
                                                                            ## defines the
                                                                            ## maximum
                                                                            ## allowed fan
                                                                            ## number in the
                                                                            ## array
                                                                            ## !
                                                                            ## @param
                                                                            ## theArrayFlags
                                                                            ## array
                                                                            ## flags

  Graphic3dArrayOfTriangleFansbaseType* = Graphic3dArrayOfPrimitives

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ArrayOfTriangleFans::get_type_name(@)",
                            header: "Graphic3d_ArrayOfTriangleFans.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ArrayOfTriangleFans::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfTriangleFans.hxx".}
proc dynamicType*(this: Graphic3dArrayOfTriangleFans): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_ArrayOfTriangleFans.hxx".}
proc constructGraphic3dArrayOfTriangleFans*(theMaxVertexs: StandardInteger;
    theMaxFans: StandardInteger; theArrayFlags: Graphic3dArrayFlags): Graphic3dArrayOfTriangleFans {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangleFans(@)",
    header: "Graphic3d_ArrayOfTriangleFans.hxx".}
proc constructGraphic3dArrayOfTriangleFans*(theMaxVertexs: StandardInteger;
    theMaxFans: StandardInteger = 0;
    theHasVNormals: StandardBoolean = standardFalse;
    theHasVColors: StandardBoolean = standardFalse;
    theHasBColors: StandardBoolean = standardFalse;
    theHasVTexels: StandardBoolean = standardFalse): Graphic3dArrayOfTriangleFans {.
    constructor, importcpp: "Graphic3d_ArrayOfTriangleFans(@)",
    header: "Graphic3d_ArrayOfTriangleFans.hxx".}
discard "forward decl of Graphic3d_ArrayOfTriangleFans"
type
  HandleGraphic3dArrayOfTriangleFans* = Handle[Graphic3dArrayOfTriangleFans]



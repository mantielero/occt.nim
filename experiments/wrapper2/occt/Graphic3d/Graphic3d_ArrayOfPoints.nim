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

## ! Contains points array definition.

type
  Graphic3d_ArrayOfPoints* {.importcpp: "Graphic3d_ArrayOfPoints",
                            header: "Graphic3d_ArrayOfPoints.hxx", bycopy.} = object of Graphic3d_ArrayOfPrimitives ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## an
                                                                                                             ## array
                                                                                                             ## of
                                                                                                             ## points
                                                                                                             ## (Graphic3d_TOPA_POINTS).
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## The
                                                                                                             ## array
                                                                                                             ## must
                                                                                                             ## be
                                                                                                             ## filled
                                                                                                             ## using
                                                                                                             ## the
                                                                                                             ## AddVertex(Point)
                                                                                                             ## method.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## @param
                                                                                                             ## theMaxVertexs
                                                                                                             ## maximum
                                                                                                             ## number
                                                                                                             ## of
                                                                                                             ## points
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## @param
                                                                                                             ## theArrayFlags
                                                                                                             ## array
                                                                                                             ## flags

  Graphic3d_ArrayOfPointsbase_type* = Graphic3d_ArrayOfPrimitives

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ArrayOfPoints::get_type_name(@)",
                              header: "Graphic3d_ArrayOfPoints.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ArrayOfPoints::get_type_descriptor(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
proc DynamicType*(this: Graphic3d_ArrayOfPoints): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ArrayOfPoints.hxx".}
proc constructGraphic3d_ArrayOfPoints*(theMaxVertexs: Standard_Integer;
                                      theArrayFlags: Graphic3d_ArrayFlags): Graphic3d_ArrayOfPoints {.
    constructor, importcpp: "Graphic3d_ArrayOfPoints(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
proc constructGraphic3d_ArrayOfPoints*(theMaxVertexs: Standard_Integer;
    theHasVColors: Standard_Boolean = Standard_False; theHasVNormals: Standard_Boolean = Standard_False): Graphic3d_ArrayOfPoints {.
    constructor, importcpp: "Graphic3d_ArrayOfPoints(@)",
    header: "Graphic3d_ArrayOfPoints.hxx".}
discard "forward decl of Graphic3d_ArrayOfPoints"
type
  Handle_Graphic3d_ArrayOfPoints* = handle[Graphic3d_ArrayOfPoints]

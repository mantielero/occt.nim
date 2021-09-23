##  Author: Kirill Gavrilov
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  RWGltf_PrimitiveArrayReader

## ! RWGltf_PrimitiveArrayReader implementation creating Poly_Triangulation.

type
  RWGltf_TriangulationReader* {.importcpp: "RWGltf_TriangulationReader",
                               header: "RWGltf_TriangulationReader.hxx", bycopy.} = object of RWGltf_PrimitiveArrayReader ##
                                                                                                                   ## !
                                                                                                                   ## Empty
                                                                                                                   ## constructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Create
                                                                                                                   ## Poly_Triangulation
                                                                                                                   ## from
                                                                                                                   ## collected
                                                                                                                   ## data
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## @name
                                                                                                                   ## interface
                                                                                                                   ## for
                                                                                                                   ## filling
                                                                                                                   ## triangulation
                                                                                                                   ## data
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Resize
                                                                                                                   ## array
                                                                                                                   ## of
                                                                                                                   ## position
                                                                                                                   ## nodes
                                                                                                                   ## to
                                                                                                                   ## specified
                                                                                                                   ## size.

  RWGltf_TriangulationReaderbase_type* = RWGltf_PrimitiveArrayReader

proc get_type_name*(): cstring {.importcpp: "RWGltf_TriangulationReader::get_type_name(@)",
                              header: "RWGltf_TriangulationReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWGltf_TriangulationReader::get_type_descriptor(@)",
    header: "RWGltf_TriangulationReader.hxx".}
proc DynamicType*(this: RWGltf_TriangulationReader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWGltf_TriangulationReader.hxx".}
proc constructRWGltf_TriangulationReader*(): RWGltf_TriangulationReader {.
    constructor, importcpp: "RWGltf_TriangulationReader(@)",
    header: "RWGltf_TriangulationReader.hxx".}
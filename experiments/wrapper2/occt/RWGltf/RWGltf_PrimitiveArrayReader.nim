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
  ../Poly/Poly_Triangulation, ../RWMesh/RWMesh_CoordinateSystemConverter,
  RWGltf_GltfAccessor, RWGltf_GltfArrayType, RWGltf_GltfPrimitiveMode,
  ../TCollection/TCollection_AsciiString

discard "forward decl of RWGltf_GltfLatePrimitiveArray"
type
  RWGltf_GltfSharedIStream* {.importcpp: "RWGltf_GltfSharedIStream",
                             header: "RWGltf_PrimitiveArrayReader.hxx", bycopy.} = object
    Stream* {.importc: "Stream".}: ifstream ## !< shared file
    Path* {.importc: "Path".}: TCollection_AsciiString ## !< path to currently opened stream


## ! Interface for reading primitive array from glTF buffer.

type
  RWGltf_PrimitiveArrayReader* {.importcpp: "RWGltf_PrimitiveArrayReader",
                                header: "RWGltf_PrimitiveArrayReader.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                            ## !
                                                                                                            ## Constructor.
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Reset
                                                                                                            ## cache
                                                                                                            ## before
                                                                                                            ## loading
                                                                                                            ## primitive
                                                                                                            ## array.

  RWGltf_PrimitiveArrayReaderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "RWGltf_PrimitiveArrayReader::get_type_name(@)",
                              header: "RWGltf_PrimitiveArrayReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWGltf_PrimitiveArrayReader::get_type_descriptor(@)",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc DynamicType*(this: RWGltf_PrimitiveArrayReader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc constructRWGltf_PrimitiveArrayReader*(): RWGltf_PrimitiveArrayReader {.
    constructor, importcpp: "RWGltf_PrimitiveArrayReader(@)",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc ErrorPrefix*(this: RWGltf_PrimitiveArrayReader): TCollection_AsciiString {.
    noSideEffect, importcpp: "ErrorPrefix",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc SetErrorPrefix*(this: var RWGltf_PrimitiveArrayReader;
                    theErrPrefix: TCollection_AsciiString) {.
    importcpp: "SetErrorPrefix", header: "RWGltf_PrimitiveArrayReader.hxx".}
proc CoordinateSystemConverter*(this: RWGltf_PrimitiveArrayReader): RWMesh_CoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc SetCoordinateSystemConverter*(this: var RWGltf_PrimitiveArrayReader;
    theConverter: RWMesh_CoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc Load*(this: var RWGltf_PrimitiveArrayReader;
          theMesh: handle[RWGltf_GltfLatePrimitiveArray]): handle[
    Poly_Triangulation] {.importcpp: "Load",
                         header: "RWGltf_PrimitiveArrayReader.hxx".}
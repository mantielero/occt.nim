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

discard "forward decl of RWGltf_GltfLatePrimitiveArray"
type
  RWGltfGltfSharedIStream* {.importcpp: "RWGltf_GltfSharedIStream",
                            header: "RWGltf_PrimitiveArrayReader.hxx", bycopy.} = object
    stream* {.importc: "Stream".}: Ifstream ## !< shared file
    path* {.importc: "Path".}: TCollectionAsciiString ## !< path to currently opened stream


## ! Interface for reading primitive array from glTF buffer.

type
  RWGltfPrimitiveArrayReader* {.importcpp: "RWGltf_PrimitiveArrayReader",
                               header: "RWGltf_PrimitiveArrayReader.hxx", bycopy.} = object of StandardTransient ##
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

  RWGltfPrimitiveArrayReaderbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "RWGltf_PrimitiveArrayReader::get_type_name(@)",
                            header: "RWGltf_PrimitiveArrayReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWGltf_PrimitiveArrayReader::get_type_descriptor(@)",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc dynamicType*(this: RWGltfPrimitiveArrayReader): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc constructRWGltfPrimitiveArrayReader*(): RWGltfPrimitiveArrayReader {.
    constructor, importcpp: "RWGltf_PrimitiveArrayReader(@)",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc errorPrefix*(this: RWGltfPrimitiveArrayReader): TCollectionAsciiString {.
    noSideEffect, importcpp: "ErrorPrefix",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc setErrorPrefix*(this: var RWGltfPrimitiveArrayReader;
                    theErrPrefix: TCollectionAsciiString) {.
    importcpp: "SetErrorPrefix", header: "RWGltf_PrimitiveArrayReader.hxx".}
proc coordinateSystemConverter*(this: RWGltfPrimitiveArrayReader): RWMeshCoordinateSystemConverter {.
    noSideEffect, importcpp: "CoordinateSystemConverter",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc setCoordinateSystemConverter*(this: var RWGltfPrimitiveArrayReader;
                                  theConverter: RWMeshCoordinateSystemConverter) {.
    importcpp: "SetCoordinateSystemConverter",
    header: "RWGltf_PrimitiveArrayReader.hxx".}
proc load*(this: var RWGltfPrimitiveArrayReader;
          theMesh: Handle[RWGltfGltfLatePrimitiveArray]): Handle[PolyTriangulation] {.
    importcpp: "Load", header: "RWGltf_PrimitiveArrayReader.hxx".}


























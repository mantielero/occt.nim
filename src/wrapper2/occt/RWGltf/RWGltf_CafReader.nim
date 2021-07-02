##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

discard "forward decl of RWGltf_PrimitiveArrayReader"
type
  RWGltfCafReader* {.importcpp: "RWGltf_CafReader", header: "RWGltf_CafReader.hxx",
                    bycopy.} = object of RWMeshCafReader ## ! Empty constructor.
                                                    ## ! Read the mesh from specified file.
    ## !< flag to use multithreading; FALSE by default
    ## !< ignore nodes without Geometry; TRUE by default
    ## !< flag to use Mesh name in case if Node name is empty, TRUE by default

  RWGltfCafReaderbaseType* = RWMeshCafReader

proc getTypeName*(): cstring {.importcpp: "RWGltf_CafReader::get_type_name(@)",
                            header: "RWGltf_CafReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWGltf_CafReader::get_type_descriptor(@)",
    header: "RWGltf_CafReader.hxx".}
proc dynamicType*(this: RWGltfCafReader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "RWGltf_CafReader.hxx".}
proc constructRWGltfCafReader*(): RWGltfCafReader {.constructor,
    importcpp: "RWGltf_CafReader(@)", header: "RWGltf_CafReader.hxx".}
proc toParallel*(this: RWGltfCafReader): bool {.noSideEffect,
    importcpp: "ToParallel", header: "RWGltf_CafReader.hxx".}
proc setParallel*(this: var RWGltfCafReader; theToParallel: bool) {.
    importcpp: "SetParallel", header: "RWGltf_CafReader.hxx".}
proc toSkipEmptyNodes*(this: var RWGltfCafReader): bool {.
    importcpp: "ToSkipEmptyNodes", header: "RWGltf_CafReader.hxx".}
proc setSkipEmptyNodes*(this: var RWGltfCafReader; theToSkip: bool) {.
    importcpp: "SetSkipEmptyNodes", header: "RWGltf_CafReader.hxx".}
proc toUseMeshNameAsFallback*(this: var RWGltfCafReader): bool {.
    importcpp: "ToUseMeshNameAsFallback", header: "RWGltf_CafReader.hxx".}
proc setMeshNameAsFallback*(this: var RWGltfCafReader; theToFallback: bool) {.
    importcpp: "SetMeshNameAsFallback", header: "RWGltf_CafReader.hxx".}


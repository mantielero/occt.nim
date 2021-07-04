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

import
  ../Message/Message_ProgressRange, ../NCollection/NCollection_Vector,
  ../RWMesh/RWMesh_CafReader, ../TopoDS/TopoDS_Face

discard "forward decl of RWGltf_PrimitiveArrayReader"
type
  RWGltf_CafReader* {.importcpp: "RWGltf_CafReader",
                     header: "RWGltf_CafReader.hxx", bycopy.} = object of RWMesh_CafReader ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Read
                                                                                    ## the
                                                                                    ## mesh
                                                                                    ## from
                                                                                    ## specified
                                                                                    ## file.
    ## !< flag to use multithreading; FALSE by default
    ## !< ignore nodes without Geometry; TRUE by default
    ## !< flag to use Mesh name in case if Node name is empty, TRUE by default

  RWGltf_CafReaderbase_type* = RWMesh_CafReader

proc get_type_name*(): cstring {.importcpp: "RWGltf_CafReader::get_type_name(@)",
                              header: "RWGltf_CafReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWGltf_CafReader::get_type_descriptor(@)",
    header: "RWGltf_CafReader.hxx".}
proc DynamicType*(this: RWGltf_CafReader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWGltf_CafReader.hxx".}
proc constructRWGltf_CafReader*(): RWGltf_CafReader {.constructor,
    importcpp: "RWGltf_CafReader(@)", header: "RWGltf_CafReader.hxx".}
proc ToParallel*(this: RWGltf_CafReader): bool {.noSideEffect,
    importcpp: "ToParallel", header: "RWGltf_CafReader.hxx".}
proc SetParallel*(this: var RWGltf_CafReader; theToParallel: bool) {.
    importcpp: "SetParallel", header: "RWGltf_CafReader.hxx".}
proc ToSkipEmptyNodes*(this: var RWGltf_CafReader): bool {.
    importcpp: "ToSkipEmptyNodes", header: "RWGltf_CafReader.hxx".}
proc SetSkipEmptyNodes*(this: var RWGltf_CafReader; theToSkip: bool) {.
    importcpp: "SetSkipEmptyNodes", header: "RWGltf_CafReader.hxx".}
proc ToUseMeshNameAsFallback*(this: var RWGltf_CafReader): bool {.
    importcpp: "ToUseMeshNameAsFallback", header: "RWGltf_CafReader.hxx".}
proc SetMeshNameAsFallback*(this: var RWGltf_CafReader; theToFallback: bool) {.
    importcpp: "SetMeshNameAsFallback", header: "RWGltf_CafReader.hxx".}
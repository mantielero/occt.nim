##  Copyright (c) 2013 OPEN CASCADE SAS
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

## ! Builds the mesh of a shape with respect of their
## ! correctly triangulated parts

type
  BRepMeshIncrementalMesh* {.importcpp: "BRepMesh_IncrementalMesh",
                            header: "BRepMesh_IncrementalMesh.hxx", bycopy.} = object of BRepMeshDiscretRoot ##
                                                                                                      ## !
                                                                                                      ## @name
                                                                                                      ## mesher
                                                                                                      ## API
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Default
                                                                                                      ## constructor
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @name
                                                                                                      ## accessing
                                                                                                      ## to
                                                                                                      ## parameters.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## meshing
                                                                                                      ## parameters
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## specific
                                                                                                      ## parameters
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @name
                                                                                                      ## plugin
                                                                                                      ## API
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Plugin
                                                                                                      ## interface
                                                                                                      ## for
                                                                                                      ## the
                                                                                                      ## Mesh
                                                                                                      ## Factories.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## meshing
                                                                                                      ## algorithm
                                                                                                      ## with
                                                                                                      ## the
                                                                                                      ## given
                                                                                                      ## parameters.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## theShape
                                                                                                      ## shape
                                                                                                      ## to
                                                                                                      ## be
                                                                                                      ## meshed.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## theLinDeflection
                                                                                                      ## linear
                                                                                                      ## deflection.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param
                                                                                                      ## theAngDeflection
                                                                                                      ## angular
                                                                                                      ## deflection.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## @param[out]
                                                                                                      ## theAlgo
                                                                                                      ## pointer
                                                                                                      ## to
                                                                                                      ## initialized
                                                                                                      ## algorithm.


proc constructBRepMeshIncrementalMesh*(): BRepMeshIncrementalMesh {.constructor,
    importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc destroyBRepMeshIncrementalMesh*(this: var BRepMeshIncrementalMesh) {.
    importcpp: "#.~BRepMesh_IncrementalMesh()",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc constructBRepMeshIncrementalMesh*(theShape: TopoDS_Shape;
                                      theLinDeflection: float;
                                      isRelative: bool = false;
                                      theAngDeflection: float = 0.5;
                                      isInParallel: bool = false): BRepMeshIncrementalMesh {.
    constructor, importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc constructBRepMeshIncrementalMesh*(theShape: TopoDS_Shape;
                                      theParameters: IMeshToolsParameters;
    theRange: MessageProgressRange = messageProgressRange()): BRepMeshIncrementalMesh {.
    constructor, importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc perform*(this: var BRepMeshIncrementalMesh;
             theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_IncrementalMesh.hxx".}
proc perform*(this: var BRepMeshIncrementalMesh;
             theContext: Handle[IMeshToolsContext];
             theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_IncrementalMesh.hxx".}
proc parameters*(this: BRepMeshIncrementalMesh): IMeshToolsParameters {.
    noSideEffect, importcpp: "Parameters", header: "BRepMesh_IncrementalMesh.hxx".}
proc changeParameters*(this: var BRepMeshIncrementalMesh): var IMeshToolsParameters {.
    importcpp: "ChangeParameters", header: "BRepMesh_IncrementalMesh.hxx".}
proc isModified*(this: BRepMeshIncrementalMesh): bool {.noSideEffect,
    importcpp: "IsModified", header: "BRepMesh_IncrementalMesh.hxx".}
proc getStatusFlags*(this: BRepMeshIncrementalMesh): int {.noSideEffect,
    importcpp: "GetStatusFlags", header: "BRepMesh_IncrementalMesh.hxx".}
proc discret*(theShape: TopoDS_Shape; theLinDeflection: float;
             theAngDeflection: float; theAlgo: ptr BRepMeshDiscretRoot): int {.
    importcpp: "BRepMesh_IncrementalMesh::Discret(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc isParallelDefault*(): bool {.importcpp: "BRepMesh_IncrementalMesh::IsParallelDefault(@)",
                               header: "BRepMesh_IncrementalMesh.hxx".}
proc setParallelDefault*(isInParallel: bool) {.
    importcpp: "BRepMesh_IncrementalMesh::SetParallelDefault(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
type
  BRepMeshIncrementalMeshbaseType* = BRepMeshDiscretRoot

proc getTypeName*(): cstring {.importcpp: "BRepMesh_IncrementalMesh::get_type_name(@)",
                            header: "BRepMesh_IncrementalMesh.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_IncrementalMesh::get_type_descriptor(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc dynamicType*(this: BRepMeshIncrementalMesh): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_IncrementalMesh.hxx".}

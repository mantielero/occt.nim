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

import
  BRepMesh_DiscretRoot, ../IMeshTools/IMeshTools_Parameters,
  ../IMeshTools/IMeshTools_Context

## ! Builds the mesh of a shape with respect of their
## ! correctly triangulated parts

type
  BRepMesh_IncrementalMesh* {.importcpp: "BRepMesh_IncrementalMesh",
                             header: "BRepMesh_IncrementalMesh.hxx", bycopy.} = object of BRepMesh_DiscretRoot ##
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


proc constructBRepMesh_IncrementalMesh*(): BRepMesh_IncrementalMesh {.constructor,
    importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc destroyBRepMesh_IncrementalMesh*(this: var BRepMesh_IncrementalMesh) {.
    importcpp: "#.~BRepMesh_IncrementalMesh()",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc constructBRepMesh_IncrementalMesh*(theShape: TopoDS_Shape;
                                       theLinDeflection: Standard_Real; isRelative: Standard_Boolean = Standard_False;
                                       theAngDeflection: Standard_Real = 0.5;
    isInParallel: Standard_Boolean = Standard_False): BRepMesh_IncrementalMesh {.
    constructor, importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc constructBRepMesh_IncrementalMesh*(theShape: TopoDS_Shape;
                                       theParameters: IMeshTools_Parameters;
    theRange: Message_ProgressRange = Message_ProgressRange()): BRepMesh_IncrementalMesh {.
    constructor, importcpp: "BRepMesh_IncrementalMesh(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc Perform*(this: var BRepMesh_IncrementalMesh;
             theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_IncrementalMesh.hxx".}
proc Perform*(this: var BRepMesh_IncrementalMesh;
             theContext: handle[IMeshTools_Context];
             theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_IncrementalMesh.hxx".}
proc Parameters*(this: BRepMesh_IncrementalMesh): IMeshTools_Parameters {.
    noSideEffect, importcpp: "Parameters", header: "BRepMesh_IncrementalMesh.hxx".}
proc ChangeParameters*(this: var BRepMesh_IncrementalMesh): var IMeshTools_Parameters {.
    importcpp: "ChangeParameters", header: "BRepMesh_IncrementalMesh.hxx".}
proc IsModified*(this: BRepMesh_IncrementalMesh): Standard_Boolean {.noSideEffect,
    importcpp: "IsModified", header: "BRepMesh_IncrementalMesh.hxx".}
proc GetStatusFlags*(this: BRepMesh_IncrementalMesh): Standard_Integer {.
    noSideEffect, importcpp: "GetStatusFlags",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc Discret*(theShape: TopoDS_Shape; theLinDeflection: Standard_Real;
             theAngDeflection: Standard_Real; theAlgo: ptr BRepMesh_DiscretRoot): Standard_Integer {.
    importcpp: "BRepMesh_IncrementalMesh::Discret(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc IsParallelDefault*(): Standard_Boolean {.
    importcpp: "BRepMesh_IncrementalMesh::IsParallelDefault(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc SetParallelDefault*(isInParallel: Standard_Boolean) {.
    importcpp: "BRepMesh_IncrementalMesh::SetParallelDefault(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
type
  BRepMesh_IncrementalMeshbase_type* = BRepMesh_DiscretRoot

proc get_type_name*(): cstring {.importcpp: "BRepMesh_IncrementalMesh::get_type_name(@)",
                              header: "BRepMesh_IncrementalMesh.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_IncrementalMesh::get_type_descriptor(@)",
    header: "BRepMesh_IncrementalMesh.hxx".}
proc DynamicType*(this: BRepMesh_IncrementalMesh): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_IncrementalMesh.hxx".}
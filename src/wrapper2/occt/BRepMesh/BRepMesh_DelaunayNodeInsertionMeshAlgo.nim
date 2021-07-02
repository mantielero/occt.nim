##  Created on: 2016-07-07
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

## ! Extends base Delaunay meshing algo in order to enable possibility
## ! of addition of free vertices and internal nodes into the mesh.

type
  BRepMeshDelaunayNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo] {.
      importcpp: "BRepMesh_DelaunayNodeInsertionMeshAlgo<\'0,\'1>",
      header: "BRepMesh_DelaunayNodeInsertionMeshAlgo.hxx", bycopy.} = object of BRepMeshNodeInsertionMeshAlgo[
      RangeSplitter, BaseAlgo] ##  Typedef for OCCT RTTI
                             ## ! Constructor.
                             ## ! Performs initialization of data structure using existing model data.
                             ## ! Registers surface nodes in data structure.


proc constructBRepMeshDelaunayNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](): BRepMeshDelaunayNodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo] {.constructor, importcpp: "BRepMesh_DelaunayNodeInsertionMeshAlgo<\'*0,\'*1>(@)", header: "BRepMesh_DelaunayNodeInsertionMeshAlgo.hxx".}
proc destroyBRepMeshDelaunayNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](
    this: var BRepMeshDelaunayNodeInsertionMeshAlgo[RangeSplitter, BaseAlgo]) {.
    importcpp: "#.~BRepMesh_DelaunayNodeInsertionMeshAlgo()",
    header: "BRepMesh_DelaunayNodeInsertionMeshAlgo.hxx".}
proc isPreProcessSurfaceNodes*[RangeSplitter; BaseAlgo](
    this: BRepMeshDelaunayNodeInsertionMeshAlgo[RangeSplitter, BaseAlgo]): StandardBoolean {.
    noSideEffect, importcpp: "IsPreProcessSurfaceNodes",
    header: "BRepMesh_DelaunayNodeInsertionMeshAlgo.hxx".}
proc setPreProcessSurfaceNodes*[RangeSplitter; BaseAlgo](
    this: var BRepMeshDelaunayNodeInsertionMeshAlgo[RangeSplitter, BaseAlgo];
    isPreProcessSurfaceNodes: StandardBoolean) {.
    importcpp: "SetPreProcessSurfaceNodes",
    header: "BRepMesh_DelaunayNodeInsertionMeshAlgo.hxx".}


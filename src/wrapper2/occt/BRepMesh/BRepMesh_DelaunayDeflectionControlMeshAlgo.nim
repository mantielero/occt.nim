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

## ! Extends node insertion Delaunay meshing algo in order to control
## ! deflection of generated trianges. Splits triangles failing the check.

type
  BRepMeshDelaunayDeflectionControlMeshAlgo*[RangeSplitter; BaseAlgo] {.
      importcpp: "BRepMesh_DelaunayDeflectionControlMeshAlgo<\'0,\'1>",
      header: "BRepMesh_DelaunayDeflectionControlMeshAlgo.hxx", bycopy.} = object of BRepMeshDelaunayNodeInsertionMeshAlgo[
      RangeSplitter, BaseAlgo] ##  Typedef for OCCT RTTI
                             ## ! Constructor.
                             ## ! Performs processing of generated mesh. Generates surface nodes and inserts them into structure.
                             ## ! Contains geometrical data related to node of triangle.


proc constructBRepMeshDelaunayDeflectionControlMeshAlgo*[RangeSplitter; BaseAlgo](): BRepMeshDelaunayDeflectionControlMeshAlgo[
    RangeSplitter, BaseAlgo] {.constructor, importcpp: "BRepMesh_DelaunayDeflectionControlMeshAlgo<\'*0,\'*1>(@)", header: "BRepMesh_DelaunayDeflectionControlMeshAlgo.hxx".}
proc destroyBRepMeshDelaunayDeflectionControlMeshAlgo*[RangeSplitter; BaseAlgo](
    this: var BRepMeshDelaunayDeflectionControlMeshAlgo[RangeSplitter, BaseAlgo]) {.
    importcpp: "#.~BRepMesh_DelaunayDeflectionControlMeshAlgo()",
    header: "BRepMesh_DelaunayDeflectionControlMeshAlgo.hxx".}


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

## ! Extends base meshing algo in order to enable possibility
## ! of addition of free vertices into the mesh.

type
  BRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo] {.
      importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'0,\'1>",
      header: "BRepMesh_NodeInsertionMeshAlgo.hxx", bycopy.} = object of BaseAlgo ## !
                                                                           ## Constructor.
                                                                           ## !
                                                                           ## Creates
                                                                           ## collection of
                                                                           ## points
                                                                           ## representing
                                                                           ## discrete wire.


proc constructBRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](): BRepMeshNodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo] {.constructor, importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'*0,\'*1>(@)",
                             header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc destroyBRepMeshNodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](
    this: var BRepMeshNodeInsertionMeshAlgo[RangeSplitter, BaseAlgo]) {.
    importcpp: "#.~BRepMesh_NodeInsertionMeshAlgo()",
    header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc perform*[RangeSplitter; BaseAlgo](this: var BRepMeshNodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo]; theDFace: IFaceHandle;
                                     theParameters: IMeshToolsParameters;
                                     theRange: MessageProgressRange) {.
    importcpp: "Perform", header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}

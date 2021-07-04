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

import
  BRepMesh_Classifier, ../IMeshData/IMeshData_Wire, ../IMeshData/IMeshData_Edge,
  ../IMeshData/IMeshData_PCurve, BRepMesh_Vertex, ../TopExp/TopExp_Explorer,
  ../TopoDS/TopoDS_Vertex, ../BRep/BRep_Tool, ../Standard/Standard_ErrorHandler,
  BRepMesh_Delaun

## ! Extends base meshing algo in order to enable possibility
## ! of addition of free vertices into the mesh.

type
  BRepMesh_NodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo] {.
      importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'0,\'1>",
      header: "BRepMesh_NodeInsertionMeshAlgo.hxx", bycopy.} = object of BaseAlgo ## !
                                                                           ## Constructor.
                                                                           ## !
                                                                           ## Creates
                                                                           ## collection of
                                                                           ## points
                                                                           ## representing
                                                                           ## discrete wire.


proc constructBRepMesh_NodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](): BRepMesh_NodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo] {.constructor, importcpp: "BRepMesh_NodeInsertionMeshAlgo<\'*0,\'*1>(@)",
                             header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc destroyBRepMesh_NodeInsertionMeshAlgo*[RangeSplitter; BaseAlgo](
    this: var BRepMesh_NodeInsertionMeshAlgo[RangeSplitter, BaseAlgo]) {.
    importcpp: "#.~BRepMesh_NodeInsertionMeshAlgo()",
    header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
proc Perform*[RangeSplitter; BaseAlgo](this: var BRepMesh_NodeInsertionMeshAlgo[
    RangeSplitter, BaseAlgo]; theDFace: IFaceHandle;
                                     theParameters: IMeshTools_Parameters;
                                     theRange: Message_ProgressRange) {.
    importcpp: "Perform", header: "BRepMesh_NodeInsertionMeshAlgo.hxx".}
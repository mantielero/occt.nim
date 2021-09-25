##  Created on: 2019-06-07
##  Copyright (c) 2019 OPEN CASCADE SAS
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

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMeshCustomDelaunayBaseMeshAlgo*[BaseAlgo] {.
      importcpp: "BRepMesh_CustomDelaunayBaseMeshAlgo<\'0>",
      header: "BRepMesh_CustomDelaunayBaseMeshAlgo.hxx", bycopy.} = object of BaseAlgo ##
                                                                                ## !
                                                                                ## Constructor.
                                                                                ##
                                                                                ## !
                                                                                ## Performs
                                                                                ## processing
                                                                                ## of
                                                                                ## generated
                                                                                ## mesh.


proc constructBRepMeshCustomDelaunayBaseMeshAlgo*[BaseAlgo](): BRepMeshCustomDelaunayBaseMeshAlgo[
    BaseAlgo] {.constructor,
               importcpp: "BRepMesh_CustomDelaunayBaseMeshAlgo<\'*0>(@)",
               header: "BRepMesh_CustomDelaunayBaseMeshAlgo.hxx".}
proc destroyBRepMeshCustomDelaunayBaseMeshAlgo*[BaseAlgo](
    this: var BRepMeshCustomDelaunayBaseMeshAlgo[BaseAlgo]) {.
    importcpp: "#.~BRepMesh_CustomDelaunayBaseMeshAlgo()",
    header: "BRepMesh_CustomDelaunayBaseMeshAlgo.hxx".}

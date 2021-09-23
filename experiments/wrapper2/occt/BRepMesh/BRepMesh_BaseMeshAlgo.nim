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
  ../IMeshTools/IMeshTools_MeshAlgo, ../NCollection/NCollection_Shared,
  ../IMeshTools/IMeshTools_Parameters, BRepMesh_DegreeOfFreedom,
  ../Poly/Poly_Triangulation

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMesh_BaseMeshAlgo* {.importcpp: "BRepMesh_BaseMeshAlgo",
                          header: "BRepMesh_BaseMeshAlgo.hxx", bycopy.} = object of IMeshTools_MeshAlgo ##
                                                                                                 ## !
                                                                                                 ## Gets
                                                                                                 ## discrete
                                                                                                 ## face.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Registers
                                                                                                 ## the
                                                                                                 ## given
                                                                                                 ## point
                                                                                                 ## in
                                                                                                 ## vertex
                                                                                                 ## map
                                                                                                 ## and
                                                                                                 ## adds
                                                                                                 ## 2d
                                                                                                 ## point
                                                                                                 ## to
                                                                                                 ## mesh
                                                                                                 ## data
                                                                                                 ## structure.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## index
                                                                                                 ## of
                                                                                                 ## node
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## structure.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## If
                                                                                                 ## the
                                                                                                 ## given
                                                                                                 ## edge
                                                                                                 ## has
                                                                                                 ## another
                                                                                                 ## pcurve
                                                                                                 ## for
                                                                                                 ## current
                                                                                                 ## face
                                                                                                 ## coinciding
                                                                                                 ## with
                                                                                                 ## specified
                                                                                                 ## one,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## returns
                                                                                                 ## TopAbs_INTERNAL
                                                                                                 ## flag.
                                                                                                 ## Elsewhere
                                                                                                 ## returns
                                                                                                 ## orientation
                                                                                                 ## of
                                                                                                 ## specified
                                                                                                 ## pcurve.

  BRepMesh_BaseMeshAlgoVectorOfPnt* = NCollection_Shared[
      NCollection_Vector[gp_Pnt]]

proc constructBRepMesh_BaseMeshAlgo*(): BRepMesh_BaseMeshAlgo {.constructor,
    importcpp: "BRepMesh_BaseMeshAlgo(@)", header: "BRepMesh_BaseMeshAlgo.hxx".}
proc destroyBRepMesh_BaseMeshAlgo*(this: var BRepMesh_BaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_BaseMeshAlgo()", header: "BRepMesh_BaseMeshAlgo.hxx".}
proc Perform*(this: var BRepMesh_BaseMeshAlgo; theDFace: IFaceHandle;
             theParameters: IMeshTools_Parameters;
             theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_BaseMeshAlgo.hxx".}
type
  BRepMesh_BaseMeshAlgobase_type* = IMeshTools_MeshAlgo

proc get_type_name*(): cstring {.importcpp: "BRepMesh_BaseMeshAlgo::get_type_name(@)",
                              header: "BRepMesh_BaseMeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepMesh_BaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_BaseMeshAlgo.hxx".}
proc DynamicType*(this: BRepMesh_BaseMeshAlgo): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepMesh_BaseMeshAlgo.hxx".}
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

discard "forward decl of BRepMesh_DataStructureOfDelaun"
discard "forward decl of BRepMesh_Delaun"
type
  BRepMeshBaseMeshAlgo* {.importcpp: "BRepMesh_BaseMeshAlgo",
                         header: "BRepMesh_BaseMeshAlgo.hxx", bycopy.} = object of IMeshToolsMeshAlgo ##
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

  BRepMeshBaseMeshAlgoVectorOfPnt* = NCollectionShared[NCollectionVector[Pnt]]

proc constructBRepMeshBaseMeshAlgo*(): BRepMeshBaseMeshAlgo {.constructor,
    importcpp: "BRepMesh_BaseMeshAlgo(@)", header: "BRepMesh_BaseMeshAlgo.hxx".}
proc destroyBRepMeshBaseMeshAlgo*(this: var BRepMeshBaseMeshAlgo) {.
    importcpp: "#.~BRepMesh_BaseMeshAlgo()", header: "BRepMesh_BaseMeshAlgo.hxx".}
proc perform*(this: var BRepMeshBaseMeshAlgo; theDFace: IFaceHandle;
             theParameters: IMeshToolsParameters;
             theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Perform", header: "BRepMesh_BaseMeshAlgo.hxx".}
type
  BRepMeshBaseMeshAlgobaseType* = IMeshToolsMeshAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_BaseMeshAlgo::get_type_name(@)",
                            header: "BRepMesh_BaseMeshAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_BaseMeshAlgo::get_type_descriptor(@)",
    header: "BRepMesh_BaseMeshAlgo.hxx".}
proc dynamicType*(this: BRepMeshBaseMeshAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_BaseMeshAlgo.hxx".}


























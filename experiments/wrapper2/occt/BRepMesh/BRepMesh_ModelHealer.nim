##  Created on: 2016-06-23
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

## ! Class implements functionality of model healer tool.
## ! Iterates over model's faces and checks consistency of their wires,
## ! i.e.whether wires are closed and do not contain self - intersections.
## ! In case if wire contains disconnected parts, ends of adjacent edges
## ! forming the gaps are connected in parametric space forcibly. The notion
## ! of this operation is to create correct discrete model defined relatively
## ! parametric space of target face taking into account connectivity and
## ! tolerances of 3D space only. This means that there are no specific
## ! computations are made for the sake of determination of U and V tolerance.
## ! Registers intersections on edges forming the face's shape and tries to
## ! amplify discrete represenation by decreasing of deflection for the target edge.
## ! Checks can be performed in parallel mode.

type
  BRepMeshModelHealer* {.importcpp: "BRepMesh_ModelHealer",
                        header: "BRepMesh_ModelHealer.hxx", bycopy.} = object of IMeshToolsModelAlgo ##
                                                                                              ## !
                                                                                              ## Constructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Performs
                                                                                              ## processing
                                                                                              ## of
                                                                                              ## edges
                                                                                              ## of
                                                                                              ## the
                                                                                              ## given
                                                                                              ## model.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Checks
                                                                                              ## existing
                                                                                              ## discretization
                                                                                              ## of
                                                                                              ## the
                                                                                              ## face
                                                                                              ## and
                                                                                              ## updates
                                                                                              ## data
                                                                                              ## model.


proc constructBRepMeshModelHealer*(): BRepMeshModelHealer {.constructor,
    importcpp: "BRepMesh_ModelHealer(@)", header: "BRepMesh_ModelHealer.hxx".}
proc destroyBRepMeshModelHealer*(this: var BRepMeshModelHealer) {.
    importcpp: "#.~BRepMesh_ModelHealer()", header: "BRepMesh_ModelHealer.hxx".}
proc `()`*(this: BRepMeshModelHealer; theEdgeIndex: int) {.noSideEffect,
    importcpp: "#(@)", header: "BRepMesh_ModelHealer.hxx".}
proc `()`*(this: BRepMeshModelHealer; theDFace: IFaceHandle) {.noSideEffect,
    importcpp: "#(@)", header: "BRepMesh_ModelHealer.hxx".}
type
  BRepMeshModelHealerbaseType* = IMeshToolsModelAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_ModelHealer::get_type_name(@)",
                            header: "BRepMesh_ModelHealer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_ModelHealer::get_type_descriptor(@)",
    header: "BRepMesh_ModelHealer.hxx".}
proc dynamicType*(this: BRepMeshModelHealer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_ModelHealer.hxx".}

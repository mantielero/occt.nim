##  Created on: 2016-04-19
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

## ! Class implements functionality starting triangulation of model's faces.
## ! Each face is processed separately and can be executed in parallel mode.
## ! Uses mesh algo factory passed as initializer to create instance of triangulation
## ! algorithm according to type of surface of target face.

type
  BRepMeshFaceDiscret* {.importcpp: "BRepMesh_FaceDiscret",
                        header: "BRepMesh_FaceDiscret.hxx", bycopy.} = object of IMeshToolsModelAlgo ##
                                                                                              ## !
                                                                                              ## Constructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Performs
                                                                                              ## processing
                                                                                              ## of
                                                                                              ## faces
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


proc constructBRepMeshFaceDiscret*(theAlgoFactory: Handle[
    IMeshToolsMeshAlgoFactory]): BRepMeshFaceDiscret {.constructor,
    importcpp: "BRepMesh_FaceDiscret(@)", header: "BRepMesh_FaceDiscret.hxx".}
proc destroyBRepMeshFaceDiscret*(this: var BRepMeshFaceDiscret) {.
    importcpp: "#.~BRepMesh_FaceDiscret()", header: "BRepMesh_FaceDiscret.hxx".}
type
  BRepMeshFaceDiscretbaseType* = IMeshToolsModelAlgo

proc getTypeName*(): cstring {.importcpp: "BRepMesh_FaceDiscret::get_type_name(@)",
                            header: "BRepMesh_FaceDiscret.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepMesh_FaceDiscret::get_type_descriptor(@)",
    header: "BRepMesh_FaceDiscret.hxx".}
proc dynamicType*(this: BRepMeshFaceDiscret): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepMesh_FaceDiscret.hxx".}


























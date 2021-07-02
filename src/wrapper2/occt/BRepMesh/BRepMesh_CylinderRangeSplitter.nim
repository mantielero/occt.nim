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

## ! Auxiliary class extending default range splitter in
## ! order to generate internal nodes for cylindrical surface.

type
  BRepMeshCylinderRangeSplitter* {.importcpp: "BRepMesh_CylinderRangeSplitter",
                                  header: "BRepMesh_CylinderRangeSplitter.hxx",
                                  bycopy.} = object of BRepMeshDefaultRangeSplitter ## !
                                                                               ## Constructor.
                                                                               ## !
                                                                               ## Computes
                                                                               ## parametric
                                                                               ## delta
                                                                               ## taking
                                                                               ## length
                                                                               ## along U
                                                                               ## and V
                                                                               ## into
                                                                               ## account.


proc constructBRepMeshCylinderRangeSplitter*(): BRepMeshCylinderRangeSplitter {.
    constructor, importcpp: "BRepMesh_CylinderRangeSplitter(@)",
    header: "BRepMesh_CylinderRangeSplitter.hxx".}
proc destroyBRepMeshCylinderRangeSplitter*(
    this: var BRepMeshCylinderRangeSplitter) {.
    importcpp: "#.~BRepMesh_CylinderRangeSplitter()",
    header: "BRepMesh_CylinderRangeSplitter.hxx".}
proc reset*(this: var BRepMeshCylinderRangeSplitter; theDFace: IFaceHandle;
           theParameters: IMeshToolsParameters) {.importcpp: "Reset",
    header: "BRepMesh_CylinderRangeSplitter.hxx".}
proc generateSurfaceNodes*(this: BRepMeshCylinderRangeSplitter;
                          theParameters: IMeshToolsParameters): Handle[ListOfPnt2d] {.
    noSideEffect, importcpp: "GenerateSurfaceNodes",
    header: "BRepMesh_CylinderRangeSplitter.hxx".}


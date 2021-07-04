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
  BRepMesh_UVParamRangeSplitter, ../IMeshTools/IMeshTools_Parameters

## ! Auxiliary class extending UV range splitter in order to generate
## ! internal nodes for NURBS surface.

type
  BRepMesh_TorusRangeSplitter* {.importcpp: "BRepMesh_TorusRangeSplitter",
                                header: "BRepMesh_TorusRangeSplitter.hxx", bycopy.} = object of BRepMesh_UVParamRangeSplitter ##
                                                                                                                       ## !
                                                                                                                       ## Constructor.


proc constructBRepMesh_TorusRangeSplitter*(): BRepMesh_TorusRangeSplitter {.
    constructor, importcpp: "BRepMesh_TorusRangeSplitter(@)",
    header: "BRepMesh_TorusRangeSplitter.hxx".}
proc destroyBRepMesh_TorusRangeSplitter*(this: var BRepMesh_TorusRangeSplitter) {.
    importcpp: "#.~BRepMesh_TorusRangeSplitter()",
    header: "BRepMesh_TorusRangeSplitter.hxx".}
proc GenerateSurfaceNodes*(this: BRepMesh_TorusRangeSplitter;
                          theParameters: IMeshTools_Parameters): handle[
    ListOfPnt2d] {.noSideEffect, importcpp: "GenerateSurfaceNodes",
                  header: "BRepMesh_TorusRangeSplitter.hxx".}
proc AddPoint*(this: var BRepMesh_TorusRangeSplitter; thePoint: gp_Pnt2d) {.
    importcpp: "AddPoint", header: "BRepMesh_TorusRangeSplitter.hxx".}
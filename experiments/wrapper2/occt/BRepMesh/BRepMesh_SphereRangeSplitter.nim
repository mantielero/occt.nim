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
  BRepMesh_DefaultRangeSplitter, ../IMeshTools/IMeshTools_Parameters

## ! Auxiliary class extending default range splitter in
## ! order to generate internal nodes for spherical surface.

type
  BRepMesh_SphereRangeSplitter* {.importcpp: "BRepMesh_SphereRangeSplitter",
                                 header: "BRepMesh_SphereRangeSplitter.hxx",
                                 bycopy.} = object of BRepMesh_DefaultRangeSplitter ## !
                                                                               ## Constructor.
                                                                               ## !
                                                                               ## Computes
                                                                               ## step
                                                                               ## for
                                                                               ## the
                                                                               ## given
                                                                               ## range.


proc constructBRepMesh_SphereRangeSplitter*(): BRepMesh_SphereRangeSplitter {.
    constructor, importcpp: "BRepMesh_SphereRangeSplitter(@)",
    header: "BRepMesh_SphereRangeSplitter.hxx".}
proc destroyBRepMesh_SphereRangeSplitter*(this: var BRepMesh_SphereRangeSplitter) {.
    importcpp: "#.~BRepMesh_SphereRangeSplitter()",
    header: "BRepMesh_SphereRangeSplitter.hxx".}
proc GenerateSurfaceNodes*(this: BRepMesh_SphereRangeSplitter;
                          theParameters: IMeshTools_Parameters): handle[
    ListOfPnt2d] {.noSideEffect, importcpp: "GenerateSurfaceNodes",
                  header: "BRepMesh_SphereRangeSplitter.hxx".}
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
  BRepMesh_NURBSRangeSplitter

## ! Auxiliary class extending UV range splitter in order to generate
## ! internal nodes for NURBS surface.

type
  BRepMesh_BoundaryParamsRangeSplitter* {.
      importcpp: "BRepMesh_BoundaryParamsRangeSplitter",
      header: "BRepMesh_BoundaryParamsRangeSplitter.hxx", bycopy.} = object of BRepMesh_NURBSRangeSplitter ##
                                                                                                    ## !
                                                                                                    ## Constructor.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## U
                                                                                                    ## and
                                                                                                    ## V
                                                                                                    ## parameters
                                                                                                    ## lists
                                                                                                    ## using
                                                                                                    ## CN
                                                                                                    ## continuity
                                                                                                    ## intervals.


proc constructBRepMesh_BoundaryParamsRangeSplitter*(): BRepMesh_BoundaryParamsRangeSplitter {.
    constructor, importcpp: "BRepMesh_BoundaryParamsRangeSplitter(@)",
    header: "BRepMesh_BoundaryParamsRangeSplitter.hxx".}
proc destroyBRepMesh_BoundaryParamsRangeSplitter*(
    this: var BRepMesh_BoundaryParamsRangeSplitter) {.
    importcpp: "#.~BRepMesh_BoundaryParamsRangeSplitter()",
    header: "BRepMesh_BoundaryParamsRangeSplitter.hxx".}
proc AddPoint*(this: var BRepMesh_BoundaryParamsRangeSplitter; thePoint: gp_Pnt2d) {.
    importcpp: "AddPoint", header: "BRepMesh_BoundaryParamsRangeSplitter.hxx".}
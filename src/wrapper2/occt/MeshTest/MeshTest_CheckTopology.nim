##  Created on: 2004-05-10
##  Created by: Michael SAZONOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

## ! This class checks topology of the mesh presented by
## ! triangulations of faces.
## !
## ! The following error are reported:
## ! - free links. A link is considered free if it has only one
## !   neighboring triangle and at least one of its nodes belongs to
## !   interior of the face rather than to its boundary.
## ! - cross face errors. It is a situation when a point on a common
## !   boundary between two faces has different 3d coordinates on each
## !   triangulation. The error is reported if the distance is greater
## !   than a deflection written in triangulations.
## ! - asynchronous edges. It is an edge having polygons on two neighboring
## !   triangulations with different number of points in the polygons.
## ! - free nodes -- nodes not shared by any triangle.

type
  MeshTestCheckTopology* {.importcpp: "MeshTest_CheckTopology",
                          header: "MeshTest_CheckTopology.hxx", bycopy.} = object ## !
                                                                             ## constructor


proc constructMeshTestCheckTopology*(theShape: TopoDS_Shape): MeshTestCheckTopology {.
    constructor, importcpp: "MeshTest_CheckTopology(@)",
    header: "MeshTest_CheckTopology.hxx".}
proc perform*(this: var MeshTestCheckTopology; di: var DrawInterpretor) {.
    importcpp: "Perform", header: "MeshTest_CheckTopology.hxx".}
proc nbFacesWithFL*(this: MeshTestCheckTopology): StandardInteger {.noSideEffect,
    importcpp: "NbFacesWithFL", header: "MeshTest_CheckTopology.hxx".}
proc getFaceNumWithFL*(this: MeshTestCheckTopology; theIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "GetFaceNumWithFL",
    header: "MeshTest_CheckTopology.hxx".}
proc nbFreeLinks*(this: MeshTestCheckTopology; theIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbFreeLinks", header: "MeshTest_CheckTopology.hxx".}
proc getFreeLink*(this: MeshTestCheckTopology; theFaceIndex: StandardInteger;
                 theLinkIndex: StandardInteger; theNode1: var StandardInteger;
                 theNode2: var StandardInteger) {.noSideEffect,
    importcpp: "GetFreeLink", header: "MeshTest_CheckTopology.hxx".}
proc nbCrossFaceErrors*(this: MeshTestCheckTopology): StandardInteger {.
    noSideEffect, importcpp: "NbCrossFaceErrors",
    header: "MeshTest_CheckTopology.hxx".}
proc getCrossFaceError*(this: MeshTestCheckTopology; theIndex: StandardInteger;
                       theFace1: var StandardInteger;
                       theNode1: var StandardInteger;
                       theFace2: var StandardInteger;
                       theNode2: var StandardInteger; theValue: var StandardReal) {.
    noSideEffect, importcpp: "GetCrossFaceError",
    header: "MeshTest_CheckTopology.hxx".}
proc nbAsyncEdges*(this: MeshTestCheckTopology): StandardInteger {.noSideEffect,
    importcpp: "NbAsyncEdges", header: "MeshTest_CheckTopology.hxx".}
proc getAsyncEdgeNum*(this: MeshTestCheckTopology; theIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "GetAsyncEdgeNum",
    header: "MeshTest_CheckTopology.hxx".}
proc nbFreeNodes*(this: MeshTestCheckTopology): StandardInteger {.noSideEffect,
    importcpp: "NbFreeNodes", header: "MeshTest_CheckTopology.hxx".}
proc getFreeNodeNum*(this: MeshTestCheckTopology; theIndex: StandardInteger;
                    theFaceNum: var StandardInteger;
                    theNodeNum: var StandardInteger) {.noSideEffect,
    importcpp: "GetFreeNodeNum", header: "MeshTest_CheckTopology.hxx".}
proc nbSmallTriangles*(this: MeshTestCheckTopology): StandardInteger {.noSideEffect,
    importcpp: "NbSmallTriangles", header: "MeshTest_CheckTopology.hxx".}
proc getSmallTriangle*(this: MeshTestCheckTopology; theIndex: StandardInteger;
                      theFaceNum: var StandardInteger;
                      theNodeNum: var StandardInteger) {.noSideEffect,
    importcpp: "GetSmallTriangle", header: "MeshTest_CheckTopology.hxx".}


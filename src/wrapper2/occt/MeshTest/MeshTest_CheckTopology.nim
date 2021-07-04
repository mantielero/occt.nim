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

import
  ../TopoDS/TopoDS_Shape, ../NCollection/NCollection_IndexedDataMap,
  ../TColStd/TColStd_HSequenceOfInteger, ../TColStd/TColStd_SequenceOfReal,
  ../Draw/Draw_Interpretor

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
  MeshTest_CheckTopology* {.importcpp: "MeshTest_CheckTopology",
                           header: "MeshTest_CheckTopology.hxx", bycopy.} = object ## !
                                                                              ## constructor


proc constructMeshTest_CheckTopology*(theShape: TopoDS_Shape): MeshTest_CheckTopology {.
    constructor, importcpp: "MeshTest_CheckTopology(@)",
    header: "MeshTest_CheckTopology.hxx".}
proc Perform*(this: var MeshTest_CheckTopology; di: var Draw_Interpretor) {.
    importcpp: "Perform", header: "MeshTest_CheckTopology.hxx".}
proc NbFacesWithFL*(this: MeshTest_CheckTopology): Standard_Integer {.noSideEffect,
    importcpp: "NbFacesWithFL", header: "MeshTest_CheckTopology.hxx".}
proc GetFaceNumWithFL*(this: MeshTest_CheckTopology; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetFaceNumWithFL",
    header: "MeshTest_CheckTopology.hxx".}
proc NbFreeLinks*(this: MeshTest_CheckTopology; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbFreeLinks", header: "MeshTest_CheckTopology.hxx".}
proc GetFreeLink*(this: MeshTest_CheckTopology; theFaceIndex: Standard_Integer;
                 theLinkIndex: Standard_Integer; theNode1: var Standard_Integer;
                 theNode2: var Standard_Integer) {.noSideEffect,
    importcpp: "GetFreeLink", header: "MeshTest_CheckTopology.hxx".}
proc NbCrossFaceErrors*(this: MeshTest_CheckTopology): Standard_Integer {.
    noSideEffect, importcpp: "NbCrossFaceErrors",
    header: "MeshTest_CheckTopology.hxx".}
proc GetCrossFaceError*(this: MeshTest_CheckTopology; theIndex: Standard_Integer;
                       theFace1: var Standard_Integer;
                       theNode1: var Standard_Integer;
                       theFace2: var Standard_Integer;
                       theNode2: var Standard_Integer; theValue: var Standard_Real) {.
    noSideEffect, importcpp: "GetCrossFaceError",
    header: "MeshTest_CheckTopology.hxx".}
proc NbAsyncEdges*(this: MeshTest_CheckTopology): Standard_Integer {.noSideEffect,
    importcpp: "NbAsyncEdges", header: "MeshTest_CheckTopology.hxx".}
proc GetAsyncEdgeNum*(this: MeshTest_CheckTopology; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetAsyncEdgeNum",
    header: "MeshTest_CheckTopology.hxx".}
proc NbFreeNodes*(this: MeshTest_CheckTopology): Standard_Integer {.noSideEffect,
    importcpp: "NbFreeNodes", header: "MeshTest_CheckTopology.hxx".}
proc GetFreeNodeNum*(this: MeshTest_CheckTopology; theIndex: Standard_Integer;
                    theFaceNum: var Standard_Integer;
                    theNodeNum: var Standard_Integer) {.noSideEffect,
    importcpp: "GetFreeNodeNum", header: "MeshTest_CheckTopology.hxx".}
proc NbSmallTriangles*(this: MeshTest_CheckTopology): Standard_Integer {.
    noSideEffect, importcpp: "NbSmallTriangles",
    header: "MeshTest_CheckTopology.hxx".}
proc GetSmallTriangle*(this: MeshTest_CheckTopology; theIndex: Standard_Integer;
                      theFaceNum: var Standard_Integer;
                      theNodeNum: var Standard_Integer) {.noSideEffect,
    importcpp: "GetSmallTriangle", header: "MeshTest_CheckTopology.hxx".}
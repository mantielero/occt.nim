##  Created on: 2015-06-30
##  Created by: Anton POLETAEV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../BVH/BVH_Set, ../BVH/BVH_Tree, Graphic3d_BndBox3d, Graphic3d_Mat4d,
  Graphic3d_WorldViewProjState, ../NCollection/NCollection_Shared,
  ../NCollection/NCollection_IndexedMap, ../Select3D/Select3D_BVHBuilder3d

discard "forward decl of Graphic3d_Camera"
discard "forward decl of Graphic3d_CStructure"
type
  Graphic3d_BvhCStructureSetTrsfPers* {.importcpp: "Graphic3d_BvhCStructureSetTrsfPers", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx",
                                       bycopy.} = object of BVH_Set[Standard_Real, 3] ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## empty
                                                                                ## primitive
                                                                                ## set
                                                                                ## for
                                                                                ## BVH
                                                                                ## clipping.
                                                                                ##
                                                                                ## !
                                                                                ## Marks
                                                                                ## internal
                                                                                ## object
                                                                                ## state
                                                                                ## as
                                                                                ## outdated.
    ## ! Constructed bottom-level BVH.
    ## ! Builder for bottom-level BVH.
    ## ! Indexed map of structures.
    ## ! Cached set of bounding boxes precomputed for transformation persistent selectable objects.
    ## ! Cache exists only during computation of BVH Tree. Bounding boxes are world view projection
    ## ! dependent and should by synchronized.
    ## ! State of world view projection used for generation of transformation persistence bounding boxes.


proc constructGraphic3d_BvhCStructureSetTrsfPers*(
    theBuilder: handle[Select3D_BVHBuilder3d]): Graphic3d_BvhCStructureSetTrsfPers {.
    constructor, importcpp: "Graphic3d_BvhCStructureSetTrsfPers(@)",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Size*(this: Graphic3d_BvhCStructureSetTrsfPers): Standard_Integer {.
    noSideEffect, importcpp: "Size",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Box*(this: Graphic3d_BvhCStructureSetTrsfPers; theIdx: Standard_Integer): Graphic3d_BndBox3d {.
    noSideEffect, importcpp: "Box",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Center*(this: Graphic3d_BvhCStructureSetTrsfPers; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Swap*(this: var Graphic3d_BvhCStructureSetTrsfPers; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Add*(this: var Graphic3d_BvhCStructureSetTrsfPers;
         theStruct: ptr Graphic3d_CStructure): Standard_Boolean {.importcpp: "Add",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Remove*(this: var Graphic3d_BvhCStructureSetTrsfPers;
            theStruct: ptr Graphic3d_CStructure): Standard_Boolean {.
    importcpp: "Remove", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Clear*(this: var Graphic3d_BvhCStructureSetTrsfPers) {.importcpp: "Clear",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc GetStructureById*(this: var Graphic3d_BvhCStructureSetTrsfPers;
                      theId: Standard_Integer): ptr Graphic3d_CStructure {.
    importcpp: "GetStructureById",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Structures*(this: Graphic3d_BvhCStructureSetTrsfPers): NCollection_IndexedMap[
    ptr Graphic3d_CStructure] {.noSideEffect, importcpp: "Structures",
                              header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc MarkDirty*(this: var Graphic3d_BvhCStructureSetTrsfPers) {.
    importcpp: "MarkDirty", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc BVH*(this: var Graphic3d_BvhCStructureSetTrsfPers;
         theCamera: handle[Graphic3d_Camera];
         theProjectionMatrix: Graphic3d_Mat4d;
         theWorldViewMatrix: Graphic3d_Mat4d; theViewportWidth: Standard_Integer;
         theViewportHeight: Standard_Integer;
         theWVPState: Graphic3d_WorldViewProjState): handle[
    BVH_Tree[Standard_Real, 3]] {.importcpp: "BVH", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc Builder*(this: Graphic3d_BvhCStructureSetTrsfPers): handle[
    Select3D_BVHBuilder3d] {.noSideEffect, importcpp: "Builder",
                            header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc SetBuilder*(this: var Graphic3d_BvhCStructureSetTrsfPers;
                theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetBuilder", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
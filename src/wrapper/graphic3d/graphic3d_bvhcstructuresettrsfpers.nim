import ../../tkernel/standard/standard_types
import graphic3d_types
import ../selectmgr/selectmgr_types
import ../../tkmath/bvh/bvh_types




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



proc newGraphic3dBvhCStructureSetTrsfPers*(
    theBuilder: Handle[Select3D_BVHBuilder3d]): Graphic3dBvhCStructureSetTrsfPers {.
    cdecl, constructor, importcpp: "Graphic3d_BvhCStructureSetTrsfPers(@)",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc size*(this: Graphic3dBvhCStructureSetTrsfPers): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc box*(this: Graphic3dBvhCStructureSetTrsfPers; theIdx: cint): Graphic3dBndBox3d {.
    noSideEffect, cdecl, importcpp: "Box", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc center*(this: Graphic3dBvhCStructureSetTrsfPers; theIdx: cint; theAxis: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Center", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc swap*(this: var Graphic3dBvhCStructureSetTrsfPers; theIdx1: cint; theIdx2: cint) {.
    cdecl, importcpp: "Swap", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc add*(this: var Graphic3dBvhCStructureSetTrsfPers;
         theStruct: ptr Graphic3dCStructure): bool {.cdecl, importcpp: "Add",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc remove*(this: var Graphic3dBvhCStructureSetTrsfPers;
            theStruct: ptr Graphic3dCStructure): bool {.cdecl, importcpp: "Remove",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc clear*(this: var Graphic3dBvhCStructureSetTrsfPers) {.cdecl, importcpp: "Clear",
    header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc getStructureById*(this: var Graphic3dBvhCStructureSetTrsfPers; theId: cint): ptr Graphic3dCStructure {.
    cdecl, importcpp: "GetStructureById", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
#proc structures*(this: Graphic3dBvhCStructureSetTrsfPers): NCollectionIndexedMap[
#    ptr Graphic3dCStructure] {.noSideEffect, cdecl, importcpp: "Structures",
#                             header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc markDirty*(this: var Graphic3dBvhCStructureSetTrsfPers) {.cdecl,
    importcpp: "MarkDirty", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc bvh*(this: var Graphic3dBvhCStructureSetTrsfPers;
         theCamera: Handle[Graphic3dCamera]; theProjectionMatrix: Graphic3dMat4d;
         theWorldViewMatrix: Graphic3dMat4d; theViewportWidth: cint;
         theViewportHeight: cint; theWVPState: Graphic3dWorldViewProjState): Handle[
    BVH_Tree[cfloat, 3]] {.cdecl, importcpp: "BVH", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc builder*(this: Graphic3dBvhCStructureSetTrsfPers): Handle[
    Select3D_BVHBuilder3d] {.noSideEffect, cdecl, importcpp: "Builder", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}
proc setBuilder*(this: var Graphic3dBvhCStructureSetTrsfPers;
                theBuilder: Handle[Select3D_BVHBuilder3d]) {.cdecl,
    importcpp: "SetBuilder", header: "Graphic3d_BvhCStructureSetTrsfPers.hxx".}



import graphic3d_types





##  Created on: 2013-12-25
##  Created by: Varvara POSKONINA
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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




proc newGraphic3dBvhCStructureSet*(): Graphic3dBvhCStructureSet {.cdecl,
    constructor, importcpp: "Graphic3d_BvhCStructureSet(@)", header: "Graphic3d_BvhCStructureSet.hxx".}
proc size*(this: Graphic3dBvhCStructureSet): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "Graphic3d_BvhCStructureSet.hxx".}
proc box*(this: Graphic3dBvhCStructureSet; theIdx: cint): Graphic3dBndBox3d {.
    noSideEffect, cdecl, importcpp: "Box", header: "Graphic3d_BvhCStructureSet.hxx".}
proc center*(this: Graphic3dBvhCStructureSet; theIdx: cint; theAxis: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Center", header: "Graphic3d_BvhCStructureSet.hxx".}
proc swap*(this: var Graphic3dBvhCStructureSet; theIdx1: cint; theIdx2: cint) {.cdecl,
    importcpp: "Swap", header: "Graphic3d_BvhCStructureSet.hxx".}
proc add*(this: var Graphic3dBvhCStructureSet; theStruct: ptr Graphic3dCStructure): bool {.
    cdecl, importcpp: "Add", header: "Graphic3d_BvhCStructureSet.hxx".}
proc remove*(this: var Graphic3dBvhCStructureSet; theStruct: ptr Graphic3dCStructure): bool {.
    cdecl, importcpp: "Remove", header: "Graphic3d_BvhCStructureSet.hxx".}
proc clear*(this: var Graphic3dBvhCStructureSet) {.cdecl, importcpp: "Clear",
    header: "Graphic3d_BvhCStructureSet.hxx".}
proc getStructureById*(this: var Graphic3dBvhCStructureSet; theId: cint): ptr Graphic3dCStructure {.
    cdecl, importcpp: "GetStructureById", header: "Graphic3d_BvhCStructureSet.hxx".}
#proc structures*(this: Graphic3dBvhCStructureSet): NCollectionIndexedMap[
#    ptr Graphic3dCStructure] {.noSideEffect, cdecl, importcpp: "Structures",
#                             header: "Graphic3d_BvhCStructureSet.hxx".}



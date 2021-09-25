##  Created on: 2016-02-25
##  Created by: Kirill Gavrilov
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Index buffer for BVH tree.

type
  Select3D_BVHIndexBuffer* {.importcpp: "Select3D_BVHIndexBuffer",
                            header: "Select3D_BVHIndexBuffer.hxx", bycopy.} = object of Graphic3dBuffer ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor.


proc constructSelect3D_BVHIndexBuffer*(theAlloc: Handle[NCollectionBaseAllocator]): Select3D_BVHIndexBuffer {.
    constructor, importcpp: "Select3D_BVHIndexBuffer(@)",
    header: "Select3D_BVHIndexBuffer.hxx".}
proc hasPatches*(this: Select3D_BVHIndexBuffer): bool {.noSideEffect,
    importcpp: "HasPatches", header: "Select3D_BVHIndexBuffer.hxx".}
proc init*(this: var Select3D_BVHIndexBuffer; theNbElems: int; theHasPatches: bool): bool {.
    importcpp: "Init", header: "Select3D_BVHIndexBuffer.hxx".}
proc index*(this: Select3D_BVHIndexBuffer; theIndex: int): int {.noSideEffect,
    importcpp: "Index", header: "Select3D_BVHIndexBuffer.hxx".}
proc patchSize*(this: Select3D_BVHIndexBuffer; theIndex: int): int {.noSideEffect,
    importcpp: "PatchSize", header: "Select3D_BVHIndexBuffer.hxx".}
proc setIndex*(this: var Select3D_BVHIndexBuffer; theIndex: int; theValue: int) {.
    importcpp: "SetIndex", header: "Select3D_BVHIndexBuffer.hxx".}
proc setIndex*(this: var Select3D_BVHIndexBuffer; theIndex: int; theValue: int;
              thePatchSize: int) {.importcpp: "SetIndex",
                                 header: "Select3D_BVHIndexBuffer.hxx".}
type
  Select3D_BVHIndexBufferbaseType* = Graphic3dBuffer

proc getTypeName*(): cstring {.importcpp: "Select3D_BVHIndexBuffer::get_type_name(@)",
                            header: "Select3D_BVHIndexBuffer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_BVHIndexBuffer::get_type_descriptor(@)",
    header: "Select3D_BVHIndexBuffer.hxx".}
proc dynamicType*(this: Select3D_BVHIndexBuffer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_BVHIndexBuffer.hxx".}
discard "forward decl of Select3D_BVHIndexBuffer"
type
  HandleSelect3D_BVHIndexBuffer* = Handle[Select3D_BVHIndexBuffer]


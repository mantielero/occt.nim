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

import
  ../Graphic3d/Graphic3d_Buffer, ../Graphic3d/Graphic3d_IndexBuffer,
  Select3D_SensitiveSet, ../TColStd/TColStd_HArray1OfInteger

## ! Index buffer for BVH tree.

type
  Select3D_BVHIndexBuffer* {.importcpp: "Select3D_BVHIndexBuffer",
                            header: "Select3D_BVHIndexBuffer.hxx", bycopy.} = object of Graphic3d_Buffer ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor.


proc constructSelect3D_BVHIndexBuffer*(theAlloc: handle[NCollection_BaseAllocator]): Select3D_BVHIndexBuffer {.
    constructor, importcpp: "Select3D_BVHIndexBuffer(@)",
    header: "Select3D_BVHIndexBuffer.hxx".}
proc HasPatches*(this: Select3D_BVHIndexBuffer): bool {.noSideEffect,
    importcpp: "HasPatches", header: "Select3D_BVHIndexBuffer.hxx".}
proc Init*(this: var Select3D_BVHIndexBuffer; theNbElems: Standard_Integer;
          theHasPatches: bool): bool {.importcpp: "Init",
                                    header: "Select3D_BVHIndexBuffer.hxx".}
proc Index*(this: Select3D_BVHIndexBuffer; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "Select3D_BVHIndexBuffer.hxx".}
proc PatchSize*(this: Select3D_BVHIndexBuffer; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "PatchSize", header: "Select3D_BVHIndexBuffer.hxx".}
proc SetIndex*(this: var Select3D_BVHIndexBuffer; theIndex: Standard_Integer;
              theValue: Standard_Integer) {.importcpp: "SetIndex",
    header: "Select3D_BVHIndexBuffer.hxx".}
proc SetIndex*(this: var Select3D_BVHIndexBuffer; theIndex: Standard_Integer;
              theValue: Standard_Integer; thePatchSize: Standard_Integer) {.
    importcpp: "SetIndex", header: "Select3D_BVHIndexBuffer.hxx".}
type
  Select3D_BVHIndexBufferbase_type* = Graphic3d_Buffer

proc get_type_name*(): cstring {.importcpp: "Select3D_BVHIndexBuffer::get_type_name(@)",
                              header: "Select3D_BVHIndexBuffer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_BVHIndexBuffer::get_type_descriptor(@)",
    header: "Select3D_BVHIndexBuffer.hxx".}
proc DynamicType*(this: Select3D_BVHIndexBuffer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_BVHIndexBuffer.hxx".}
discard "forward decl of Select3D_BVHIndexBuffer"
type
  Handle_Select3D_BVHIndexBuffer* = handle[Select3D_BVHIndexBuffer]

##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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
  RWGltf_GltfBufferViewTarget, ../Standard/Standard_TypeDef

## ! Low-level glTF data structure defining BufferView.

type
  RWGltf_GltfBufferView* {.importcpp: "RWGltf_GltfBufferView",
                          header: "RWGltf_GltfBufferView.hxx", bycopy.} = object
    Id* {.importc: "Id".}: cint
    ByteOffset* {.importc: "ByteOffset".}: int64_t
    ByteLength* {.importc: "ByteLength".}: int64_t
    ByteStride* {.importc: "ByteStride".}: int32_t ## !< [0, 255]
    Target* {.importc: "Target".}: RWGltf_GltfBufferViewTarget


proc constructRWGltf_GltfBufferView*(): RWGltf_GltfBufferView {.constructor,
    importcpp: "RWGltf_GltfBufferView(@)", header: "RWGltf_GltfBufferView.hxx".}
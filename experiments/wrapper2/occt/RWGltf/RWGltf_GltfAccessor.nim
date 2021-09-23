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
  ../Graphic3d/Graphic3d_BndBox3d, RWGltf_GltfAccessorCompType,
  RWGltf_GltfAccessorLayout, ../Standard/Standard_TypeDef

## ! Low-level glTF data structure defining Accessor.

type
  RWGltf_GltfAccessor* {.importcpp: "RWGltf_GltfAccessor",
                        header: "RWGltf_GltfAccessor.hxx", bycopy.} = object
    Id* {.importc: "Id".}: cint  ## !< identifier
    ByteOffset* {.importc: "ByteOffset".}: int64_t ## !< byte offset
    Count* {.importc: "Count".}: int64_t ## !< size
    ByteStride* {.importc: "ByteStride".}: int32_t ## !< [0, 255] for glTF 1.0
    Type* {.importc: "Type".}: RWGltf_GltfAccessorLayout ## !< layout type
    ComponentType* {.importc: "ComponentType".}: RWGltf_GltfAccessorCompType ## !< component type
    BndBox* {.importc: "BndBox".}: Graphic3d_BndBox3d ## !< bounding box
                                                  ## ! Empty constructor.


proc constructRWGltf_GltfAccessor*(): RWGltf_GltfAccessor {.constructor,
    importcpp: "RWGltf_GltfAccessor(@)", header: "RWGltf_GltfAccessor.hxx".}
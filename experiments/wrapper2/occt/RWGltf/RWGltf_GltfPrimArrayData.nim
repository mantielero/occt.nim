##  Author: Kirill Gavrilov
##  Copyright (c) 2018-2019 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Buffer, RWGltf_GltfAccessor, RWGltf_GltfArrayType,
  ../TCollection/TCollection_AsciiString

## ! An element within primitive array - vertex attribute or element indexes.

type
  RWGltf_GltfPrimArrayData* {.importcpp: "RWGltf_GltfPrimArrayData",
                             header: "RWGltf_GltfPrimArrayData.hxx", bycopy.} = object
    StreamData* {.importc: "StreamData".}: handle[NCollection_Buffer]
    StreamUri* {.importc: "StreamUri".}: TCollection_AsciiString
    StreamOffset* {.importc: "StreamOffset".}: int64_t
    Accessor* {.importc: "Accessor".}: RWGltf_GltfAccessor
    Type* {.importc: "Type".}: RWGltf_GltfArrayType


proc constructRWGltf_GltfPrimArrayData*(): RWGltf_GltfPrimArrayData {.constructor,
    importcpp: "RWGltf_GltfPrimArrayData(@)",
    header: "RWGltf_GltfPrimArrayData.hxx".}
proc constructRWGltf_GltfPrimArrayData*(theType: RWGltf_GltfArrayType): RWGltf_GltfPrimArrayData {.
    constructor, importcpp: "RWGltf_GltfPrimArrayData(@)",
    header: "RWGltf_GltfPrimArrayData.hxx".}
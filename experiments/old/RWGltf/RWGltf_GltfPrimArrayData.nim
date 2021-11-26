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

## ! An element within primitive array - vertex attribute or element indexes.

type
  RWGltfGltfPrimArrayData* {.importcpp: "RWGltf_GltfPrimArrayData",
                            header: "RWGltf_GltfPrimArrayData.hxx", bycopy.} = object
    streamData* {.importc: "StreamData".}: Handle[NCollectionBuffer]
    streamUri* {.importc: "StreamUri".}: TCollectionAsciiString
    streamOffset* {.importc: "StreamOffset".}: int64T
    accessor* {.importc: "Accessor".}: RWGltfGltfAccessor
    `type`* {.importc: "Type".}: RWGltfGltfArrayType


proc constructRWGltfGltfPrimArrayData*(): RWGltfGltfPrimArrayData {.constructor,
    importcpp: "RWGltf_GltfPrimArrayData(@)",
    header: "RWGltf_GltfPrimArrayData.hxx".}
proc constructRWGltfGltfPrimArrayData*(theType: RWGltfGltfArrayType): RWGltfGltfPrimArrayData {.
    constructor, importcpp: "RWGltf_GltfPrimArrayData(@)",
    header: "RWGltf_GltfPrimArrayData.hxx".}


























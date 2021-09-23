##  Author: Kirill Gavrilov
##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../Standard/Standard_CString

## ! Low-level glTF enumeration defining Alpha Mode.

type
  RWGltf_GltfAlphaMode* {.size: sizeof(cint), importcpp: "RWGltf_GltfAlphaMode",
                         header: "RWGltf_GltfAlphaMode.hxx".} = enum
    RWGltf_GltfAlphaMode_Opaque, ## !< alpha value is ignored and the rendered output is fully opaque
    RWGltf_GltfAlphaMode_Mask, ## !< rendered output is either fully opaque or fully transparent depending on the alpha value and the specified alpha cutoff value
    RWGltf_GltfAlphaMode_Blend ## !< alpha value is used to composite the source and destination areas


## ! Parse RWGltf_GltfAlphaMode from string.

proc RWGltf_GltfParseAlphaMode*(theType: cstring): RWGltf_GltfAlphaMode =
  discard

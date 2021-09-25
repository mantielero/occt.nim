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

## ! Low-level glTF enumeration defining Accessor component type.

type
  RWGltfGltfAccessorCompType* {.size: sizeof(cint),
                               importcpp: "RWGltf_GltfAccessorCompType",
                               header: "RWGltf_GltfAccessorCompType.hxx".} = enum
    RWGltfGltfAccessorCompTypeUNKNOWN, ## !< unknown or invalid type
    RWGltfGltfAccessorCompTypeInt8 = 5120, ## !< GL_BYTE
    RWGltfGltfAccessorCompTypeUInt8 = 5121, ## !< GL_UNSIGNED_BYTE
    RWGltfGltfAccessorCompTypeInt16 = 5122, ## !< GL_SHORT
    RWGltfGltfAccessorCompTypeUInt16 = 5123, ## !< GL_UNSIGNED_SHORT
    RWGltfGltfAccessorCompTypeUInt32 = 5125, ## !< GL_UNSIGNED_INT
    RWGltfGltfAccessorCompTypeFloat32 = 5126 ## !< GL_FLOAT



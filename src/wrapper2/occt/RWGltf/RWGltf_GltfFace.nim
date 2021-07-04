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
  RWGltf_GltfAccessor

## ! Low-level glTF data structure holding single Face (one primitive array) definition.

type
  RWGltf_GltfFace* {.importcpp: "RWGltf_GltfFace", header: "RWGltf_GltfFace.hxx",
                    bycopy.} = object
    NodePos* {.importc: "NodePos".}: RWGltf_GltfAccessor ## !< accessor for nodal positions
    NodeNorm* {.importc: "NodeNorm".}: RWGltf_GltfAccessor ## !< accessor for nodal normals
    NodeUV* {.importc: "NodeUV".}: RWGltf_GltfAccessor ## !< accessor for nodal UV texture coordinates
    Indices* {.importc: "Indices".}: RWGltf_GltfAccessor ## !< accessor for indexes


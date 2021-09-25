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

## ! Low-level glTF enumeration defining Primitive type.
## ! Similar to Graphic3d_TypeOfData but does not define actual type and includes matrices.

type
  RWGltfGltfPrimitiveMode* {.size: sizeof(cint),
                            importcpp: "RWGltf_GltfPrimitiveMode",
                            header: "RWGltf_GltfPrimitiveMode.hxx".} = enum
    RWGltfGltfPrimitiveModeUNKNOWN = -1, ## !< unknown or invalid type
    RWGltfGltfPrimitiveModePoints = 0, ## !< GL_POINTS
    RWGltfGltfPrimitiveModeLines = 1, ## !< GL_LINES
    RWGltfGltfPrimitiveModeLineLoop = 2, ## !< GL_LINE_LOOP
    RWGltfGltfPrimitiveModeLineStrip = 3, ## !< GL_LINE_STRIP
    RWGltfGltfPrimitiveModeTriangles = 4, ## !< GL_TRIANGLES
    RWGltfGltfPrimitiveModeTriangleStrip = 5, ## !< GL_TRIANGLE_STRIP
    RWGltfGltfPrimitiveModeTriangleFan = 6 ## !< GL_TRIANGLE_FAN



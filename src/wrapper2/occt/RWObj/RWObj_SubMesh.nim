##  Author: Kirill Gavrilov
##  Copyright (c) 2015-2019 OPEN CASCADE SAS
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
  ../Quantity/Quantity_Color, ../TCollection/TCollection_AsciiString

## ! Sub-mesh definition for OBJ reader.

type
  RWObj_SubMesh* {.importcpp: "RWObj_SubMesh", header: "RWObj_SubMesh.hxx", bycopy.} = object
    Object* {.importc: "Object".}: TCollection_AsciiString ## !< name of active object
    Group* {.importc: "Group".}: TCollection_AsciiString ## !< name of active group
    SmoothGroup* {.importc: "SmoothGroup".}: TCollection_AsciiString ## !< name of active smoothing group
    Material* {.importc: "Material".}: TCollection_AsciiString ## !< name of active material


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

## ! Sub-mesh definition for OBJ reader.

type
  RWObjSubMesh* {.importcpp: "RWObj_SubMesh", header: "RWObj_SubMesh.hxx", bycopy.} = object
    `object`* {.importc: "Object".}: TCollectionAsciiString ## !< name of active object
    group* {.importc: "Group".}: TCollectionAsciiString ## !< name of active group
    smoothGroup* {.importc: "SmoothGroup".}: TCollectionAsciiString ## !< name of active smoothing group
    material* {.importc: "Material".}: TCollectionAsciiString ## !< name of active material



##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

## ! Reason for creating a new group within OBJ reader.

type
  RWObjSubMeshReason* {.size: sizeof(cint), importcpp: "RWObj_SubMeshReason",
                       header: "RWObj_SubMeshReason.hxx".} = enum
    RWObjSubMeshReasonNewObject, ## !< new object, should occur only ones in valid OBJ file (at the very beginning)
    RWObjSubMeshReasonNewGroup, ## !< new group (g item)
    RWObjSubMeshReasonNewMaterial, ## !< new material (usemtl item)
    RWObjSubMeshReasonNewSmoothGroup ## !< new smoothing group (s item)




























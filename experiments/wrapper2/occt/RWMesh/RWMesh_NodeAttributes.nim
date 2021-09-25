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

discard "forward decl of TDataStd_NamedData"
type
  RWMeshNodeAttributes* {.importcpp: "RWMesh_NodeAttributes",
                         header: "RWMesh_NodeAttributes.hxx", bycopy.} = object
    name* {.importc: "Name".}: TCollectionAsciiString ## !< name for the user
    rawName* {.importc: "RawName".}: TCollectionAsciiString ## !< name within low-level format structure
    namedData* {.importc: "NamedData".}: Handle[TDataStdNamedData] ## !< optional metadata
    style* {.importc: "Style".}: XCAFPrsStyle ## !< presentation style

  RWMeshNodeAttributeMap* = NCollectionDataMap[TopoDS_Shape, RWMeshNodeAttributes,
      TopToolsShapeMapHasher]


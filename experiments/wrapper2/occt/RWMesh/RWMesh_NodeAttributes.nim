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
  ../NCollection/NCollection_DataMap, ../TCollection/TCollection_AsciiString,
  ../TopTools/TopTools_ShapeMapHasher, ../XCAFPrs/XCAFPrs_Style

discard "forward decl of TDataStd_NamedData"
type
  RWMesh_NodeAttributes* {.importcpp: "RWMesh_NodeAttributes",
                          header: "RWMesh_NodeAttributes.hxx", bycopy.} = object
    Name* {.importc: "Name".}: TCollection_AsciiString ## !< name for the user
    RawName* {.importc: "RawName".}: TCollection_AsciiString ## !< name within low-level format structure
    NamedData* {.importc: "NamedData".}: handle[TDataStd_NamedData] ## !< optional metadata
    Style* {.importc: "Style".}: XCAFPrs_Style ## !< presentation style

  RWMesh_NodeAttributeMap* = NCollection_DataMap[TopoDS_Shape,
      RWMesh_NodeAttributes, TopTools_ShapeMapHasher]

import brepoffset_types
import ../topods/topods_types
import ../message/message_types
##  Created on: 2012-08-06
##  Created by: jgv@ROLEX
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## ! Describes functions to build a middle path of a
## ! pipe-like shape


proc newBRepOffsetAPI_MiddlePath*(aShape: TopoDS_Shape; StartShape: TopoDS_Shape;
                                 EndShape: TopoDS_Shape): BRepOffsetAPI_MiddlePath {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MiddlePath(@)".}
proc Build*(this: var BRepOffsetAPI_MiddlePath;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
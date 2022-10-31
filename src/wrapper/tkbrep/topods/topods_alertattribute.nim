import topods_types
import ../../tkernel/standard/standard_types
import ../../tkernel/message/message_types



##  Created on: 2018-06-10
##  Created by: Natalia Ermolaeva
##  Copyright (c) 2018-2020 OPEN CASCADE SAS
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



proc newTopoDS_AlertAttribute*(theShape: TopoDS_Shape; theName: TCollectionAsciiString = TCollectionAsciiString()): TopoDS_AlertAttribute {.
    cdecl, constructor, importcpp: "TopoDS_AlertAttribute(@)", header: "TopoDS_AlertAttribute.hxx".}
proc getShape*(this: TopoDS_AlertAttribute): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "GetShape", header: "TopoDS_AlertAttribute.hxx".}
proc send*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape) {.cdecl,
    importcpp: "TopoDS_AlertAttribute::Send(@)", header: "TopoDS_AlertAttribute.hxx".}
proc dumpJson*(this: TopoDS_AlertAttribute; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TopoDS_AlertAttribute.hxx".}
proc `<<`*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape): var Handle[
    MessageMessenger] {.cdecl, importcpp: "(# << #)", header: "TopoDS_AlertAttribute.hxx".}


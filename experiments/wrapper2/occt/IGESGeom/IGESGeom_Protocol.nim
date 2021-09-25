##  Created on: 1993-05-05
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Interface_Protocol"
discard "forward decl of IGESGeom_Protocol"
discard "forward decl of IGESGeom_Protocol"
type
  HandleIGESGeomProtocol* = Handle[IGESGeomProtocol]

## ! Description of Protocol for IGESGeom

type
  IGESGeomProtocol* {.importcpp: "IGESGeom_Protocol",
                     header: "IGESGeom_Protocol.hxx", bycopy.} = object of IGESDataProtocol


proc constructIGESGeomProtocol*(): IGESGeomProtocol {.constructor,
    importcpp: "IGESGeom_Protocol(@)", header: "IGESGeom_Protocol.hxx".}
proc nbResources*(this: IGESGeomProtocol): int {.noSideEffect,
    importcpp: "NbResources", header: "IGESGeom_Protocol.hxx".}
proc resource*(this: IGESGeomProtocol; num: int): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "IGESGeom_Protocol.hxx".}
proc typeNumber*(this: IGESGeomProtocol; atype: Handle[StandardType]): int {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESGeom_Protocol.hxx".}
type
  IGESGeomProtocolbaseType* = IGESDataProtocol

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Protocol::get_type_name(@)",
                            header: "IGESGeom_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Protocol::get_type_descriptor(@)",
    header: "IGESGeom_Protocol.hxx".}
proc dynamicType*(this: IGESGeomProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Protocol.hxx".}

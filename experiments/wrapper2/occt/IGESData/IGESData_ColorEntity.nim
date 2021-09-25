##  Created on: 1992-04-07
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of IGESData_ColorEntity"
discard "forward decl of IGESData_ColorEntity"
type
  HandleIGESDataColorEntity* = Handle[IGESDataColorEntity]

## ! defines required type for Color in directory part
## ! an effective Color entity must inherits it

type
  IGESDataColorEntity* {.importcpp: "IGESData_ColorEntity",
                        header: "IGESData_ColorEntity.hxx", bycopy.} = object of IGESDataIGESEntity

  IGESDataColorEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_ColorEntity::get_type_name(@)",
                            header: "IGESData_ColorEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_ColorEntity::get_type_descriptor(@)",
    header: "IGESData_ColorEntity.hxx".}
proc dynamicType*(this: IGESDataColorEntity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_ColorEntity.hxx".}

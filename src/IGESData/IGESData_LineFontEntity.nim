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

discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESData_LineFontEntity"
type
  HandleC1C1* = Handle[IGESDataLineFontEntity]

## ! defines required type for LineFont in directory part
## ! an effective LineFont entity must inherits it

type
  IGESDataLineFontEntity* {.importcpp: "IGESData_LineFontEntity",
                           header: "IGESData_LineFontEntity.hxx", bycopy.} = object of IGESDataIGESEntity

  IGESDataLineFontEntitybaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESData_LineFontEntity::get_type_name(@)",
                            header: "IGESData_LineFontEntity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_LineFontEntity::get_type_descriptor(@)",
    header: "IGESData_LineFontEntity.hxx".}
proc dynamicType*(this: IGESDataLineFontEntity): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_LineFontEntity.hxx".}


























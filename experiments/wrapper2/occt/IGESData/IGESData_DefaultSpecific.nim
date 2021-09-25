##  Created on: 1993-09-08
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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESData_DefaultSpecific"
discard "forward decl of IGESData_DefaultSpecific"
type
  HandleIGESDataDefaultSpecific* = Handle[IGESDataDefaultSpecific]

## ! Specific IGES Services for UndefinedEntity, FreeFormatEntity

type
  IGESDataDefaultSpecific* {.importcpp: "IGESData_DefaultSpecific",
                            header: "IGESData_DefaultSpecific.hxx", bycopy.} = object of IGESDataSpecificModule ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## DefaultSpecific
                                                                                                         ## and
                                                                                                         ## puts
                                                                                                         ## it
                                                                                                         ## into
                                                                                                         ## SpecificLib


proc constructIGESDataDefaultSpecific*(): IGESDataDefaultSpecific {.constructor,
    importcpp: "IGESData_DefaultSpecific(@)",
    header: "IGESData_DefaultSpecific.hxx".}
proc ownDump*(this: IGESDataDefaultSpecific; cn: int;
             ent: Handle[IGESDataIGESEntity]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESData_DefaultSpecific.hxx".}
type
  IGESDataDefaultSpecificbaseType* = IGESDataSpecificModule

proc getTypeName*(): cstring {.importcpp: "IGESData_DefaultSpecific::get_type_name(@)",
                            header: "IGESData_DefaultSpecific.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_DefaultSpecific::get_type_descriptor(@)",
    header: "IGESData_DefaultSpecific.hxx".}
proc dynamicType*(this: IGESDataDefaultSpecific): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_DefaultSpecific.hxx".}

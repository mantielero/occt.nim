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

import
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_SpecificModule,
  ../Standard/Standard_Integer

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESData_DefaultSpecific"
discard "forward decl of IGESData_DefaultSpecific"
type
  Handle_IGESData_DefaultSpecific* = handle[IGESData_DefaultSpecific]

## ! Specific IGES Services for UndefinedEntity, FreeFormatEntity

type
  IGESData_DefaultSpecific* {.importcpp: "IGESData_DefaultSpecific",
                             header: "IGESData_DefaultSpecific.hxx", bycopy.} = object of IGESData_SpecificModule ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## DefaultSpecific
                                                                                                           ## and
                                                                                                           ## puts
                                                                                                           ## it
                                                                                                           ## into
                                                                                                           ## SpecificLib


proc constructIGESData_DefaultSpecific*(): IGESData_DefaultSpecific {.constructor,
    importcpp: "IGESData_DefaultSpecific(@)",
    header: "IGESData_DefaultSpecific.hxx".}
proc OwnDump*(this: IGESData_DefaultSpecific; CN: Standard_Integer;
             ent: handle[IGESData_IGESEntity]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESData_DefaultSpecific.hxx".}
type
  IGESData_DefaultSpecificbase_type* = IGESData_SpecificModule

proc get_type_name*(): cstring {.importcpp: "IGESData_DefaultSpecific::get_type_name(@)",
                              header: "IGESData_DefaultSpecific.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_DefaultSpecific::get_type_descriptor(@)",
    header: "IGESData_DefaultSpecific.hxx".}
proc DynamicType*(this: IGESData_DefaultSpecific): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_DefaultSpecific.hxx".}
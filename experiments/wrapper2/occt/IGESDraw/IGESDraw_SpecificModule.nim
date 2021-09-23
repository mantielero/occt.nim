##  Created on: 1993-09-07
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_SpecificModule, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESDraw_SpecificModule"
discard "forward decl of IGESDraw_SpecificModule"
type
  Handle_IGESDraw_SpecificModule* = handle[IGESDraw_SpecificModule]

## ! Defines Services attached to IGES Entities :
## ! Dump & OwnCorrect, for IGESDraw

type
  IGESDraw_SpecificModule* {.importcpp: "IGESDraw_SpecificModule",
                            header: "IGESDraw_SpecificModule.hxx", bycopy.} = object of IGESData_SpecificModule ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## SpecificModule
                                                                                                         ## from
                                                                                                         ## IGESDraw
                                                                                                         ## &
                                                                                                         ## puts
                                                                                                         ## it
                                                                                                         ## into
                                                                                                         ## SpecificLib


proc constructIGESDraw_SpecificModule*(): IGESDraw_SpecificModule {.constructor,
    importcpp: "IGESDraw_SpecificModule(@)", header: "IGESDraw_SpecificModule.hxx".}
proc OwnDump*(this: IGESDraw_SpecificModule; CN: Standard_Integer;
             ent: handle[IGESData_IGESEntity]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESDraw_SpecificModule.hxx".}
proc OwnCorrect*(this: IGESDraw_SpecificModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): Standard_Boolean {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDraw_SpecificModule.hxx".}
type
  IGESDraw_SpecificModulebase_type* = IGESData_SpecificModule

proc get_type_name*(): cstring {.importcpp: "IGESDraw_SpecificModule::get_type_name(@)",
                              header: "IGESDraw_SpecificModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_SpecificModule::get_type_descriptor(@)",
    header: "IGESDraw_SpecificModule.hxx".}
proc DynamicType*(this: IGESDraw_SpecificModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_SpecificModule.hxx".}
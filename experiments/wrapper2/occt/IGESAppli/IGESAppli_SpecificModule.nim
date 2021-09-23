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
discard "forward decl of IGESAppli_SpecificModule"
discard "forward decl of IGESAppli_SpecificModule"
type
  Handle_IGESAppli_SpecificModule* = handle[IGESAppli_SpecificModule]

## ! Defines Services attached to IGES Entities :
## ! Dump & OwnCorrect, for IGESAppli

type
  IGESAppli_SpecificModule* {.importcpp: "IGESAppli_SpecificModule",
                             header: "IGESAppli_SpecificModule.hxx", bycopy.} = object of IGESData_SpecificModule ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## SpecificModule
                                                                                                           ## from
                                                                                                           ## IGESAppli
                                                                                                           ## &
                                                                                                           ## puts
                                                                                                           ## it
                                                                                                           ## into
                                                                                                           ## SpecificLib


proc constructIGESAppli_SpecificModule*(): IGESAppli_SpecificModule {.constructor,
    importcpp: "IGESAppli_SpecificModule(@)",
    header: "IGESAppli_SpecificModule.hxx".}
proc OwnDump*(this: IGESAppli_SpecificModule; CN: Standard_Integer;
             ent: handle[IGESData_IGESEntity]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESAppli_SpecificModule.hxx".}
proc OwnCorrect*(this: IGESAppli_SpecificModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): Standard_Boolean {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESAppli_SpecificModule.hxx".}
type
  IGESAppli_SpecificModulebase_type* = IGESData_SpecificModule

proc get_type_name*(): cstring {.importcpp: "IGESAppli_SpecificModule::get_type_name(@)",
                              header: "IGESAppli_SpecificModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_SpecificModule::get_type_descriptor(@)",
    header: "IGESAppli_SpecificModule.hxx".}
proc DynamicType*(this: IGESAppli_SpecificModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_SpecificModule.hxx".}
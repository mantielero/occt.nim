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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESGraph_SpecificModule"
discard "forward decl of IGESGraph_SpecificModule"
type
  HandleIGESGraphSpecificModule* = Handle[IGESGraphSpecificModule]

## ! Defines Services attached to IGES Entities :
## ! Dump & OwnCorrect, for IGESGraph

type
  IGESGraphSpecificModule* {.importcpp: "IGESGraph_SpecificModule",
                            header: "IGESGraph_SpecificModule.hxx", bycopy.} = object of IGESDataSpecificModule ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## SpecificModule
                                                                                                         ## from
                                                                                                         ## IGESGraph
                                                                                                         ## &
                                                                                                         ## puts
                                                                                                         ## it
                                                                                                         ## into
                                                                                                         ## SpecificLib


proc constructIGESGraphSpecificModule*(): IGESGraphSpecificModule {.constructor,
    importcpp: "IGESGraph_SpecificModule(@)",
    header: "IGESGraph_SpecificModule.hxx".}
proc ownDump*(this: IGESGraphSpecificModule; cn: int;
             ent: Handle[IGESDataIGESEntity]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGraph_SpecificModule.hxx".}
proc ownCorrect*(this: IGESGraphSpecificModule; cn: int;
                ent: Handle[IGESDataIGESEntity]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESGraph_SpecificModule.hxx".}
type
  IGESGraphSpecificModulebaseType* = IGESDataSpecificModule

proc getTypeName*(): cstring {.importcpp: "IGESGraph_SpecificModule::get_type_name(@)",
                            header: "IGESGraph_SpecificModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_SpecificModule::get_type_descriptor(@)",
    header: "IGESGraph_SpecificModule.hxx".}
proc dynamicType*(this: IGESGraphSpecificModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_SpecificModule.hxx".}

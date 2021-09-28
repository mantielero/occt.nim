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
discard "forward decl of IGESDimen_SpecificModule"
discard "forward decl of IGESDimen_SpecificModule"
type
  HandleC1C1* = Handle[IGESDimenSpecificModule]

## ! Defines Services attached to IGES Entities :
## ! Dump & OwnCorrect, for IGESDimen

type
  IGESDimenSpecificModule* {.importcpp: "IGESDimen_SpecificModule",
                            header: "IGESDimen_SpecificModule.hxx", bycopy.} = object of IGESDataSpecificModule ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## SpecificModule
                                                                                                         ## from
                                                                                                         ## IGESDimen
                                                                                                         ## &
                                                                                                         ## puts
                                                                                                         ## it
                                                                                                         ## into
                                                                                                         ## SpecificLib


proc constructIGESDimenSpecificModule*(): IGESDimenSpecificModule {.constructor,
    importcpp: "IGESDimen_SpecificModule(@)",
    header: "IGESDimen_SpecificModule.hxx".}
proc ownDump*(this: IGESDimenSpecificModule; cn: cint;
             ent: Handle[IGESDataIGESEntity]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_SpecificModule.hxx".}
proc ownCorrect*(this: IGESDimenSpecificModule; cn: cint;
                ent: Handle[IGESDataIGESEntity]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDimen_SpecificModule.hxx".}
type
  IGESDimenSpecificModulebaseType* = IGESDataSpecificModule

proc getTypeName*(): cstring {.importcpp: "IGESDimen_SpecificModule::get_type_name(@)",
                            header: "IGESDimen_SpecificModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_SpecificModule::get_type_descriptor(@)",
    header: "IGESDimen_SpecificModule.hxx".}
proc dynamicType*(this: IGESDimenSpecificModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_SpecificModule.hxx".}


























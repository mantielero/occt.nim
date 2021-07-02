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
discard "forward decl of IGESDefs_SpecificModule"
discard "forward decl of IGESDefs_SpecificModule"
type
  HandleIGESDefsSpecificModule* = Handle[IGESDefsSpecificModule]

## ! Defines Services attached to IGES Entities : Dump, for IGESDefs

type
  IGESDefsSpecificModule* {.importcpp: "IGESDefs_SpecificModule",
                           header: "IGESDefs_SpecificModule.hxx", bycopy.} = object of IGESDataSpecificModule ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## SpecificModule
                                                                                                       ## from
                                                                                                       ## IGESDefs
                                                                                                       ## &
                                                                                                       ## puts
                                                                                                       ## it
                                                                                                       ## into
                                                                                                       ## SpecificLib


proc constructIGESDefsSpecificModule*(): IGESDefsSpecificModule {.constructor,
    importcpp: "IGESDefs_SpecificModule(@)", header: "IGESDefs_SpecificModule.hxx".}
proc ownDump*(this: IGESDefsSpecificModule; cn: StandardInteger;
             ent: Handle[IGESDataIGESEntity]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESDefs_SpecificModule.hxx".}
type
  IGESDefsSpecificModulebaseType* = IGESDataSpecificModule

proc getTypeName*(): cstring {.importcpp: "IGESDefs_SpecificModule::get_type_name(@)",
                            header: "IGESDefs_SpecificModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDefs_SpecificModule::get_type_descriptor(@)",
    header: "IGESDefs_SpecificModule.hxx".}
proc dynamicType*(this: IGESDefsSpecificModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDefs_SpecificModule.hxx".}


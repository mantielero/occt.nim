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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of IGESData_SpecificModule"
discard "forward decl of IGESData_SpecificModule"
type
  Handle_IGESData_SpecificModule* = handle[IGESData_SpecificModule]

## ! This class defines some Services which are specifically
## ! attached to IGES Entities : Dump

type
  IGESData_SpecificModule* {.importcpp: "IGESData_SpecificModule",
                            header: "IGESData_SpecificModule.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Specific
                                                                                                    ## Dump
                                                                                                    ## for
                                                                                                    ## each
                                                                                                    ## type
                                                                                                    ## of
                                                                                                    ## IGES
                                                                                                    ## Entity
                                                                                                    ## :
                                                                                                    ## it
                                                                                                    ## concerns
                                                                                                    ## only
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## own
                                                                                                    ## parameters,
                                                                                                    ## the
                                                                                                    ## general
                                                                                                    ## data
                                                                                                    ## (Directory
                                                                                                    ## Part,
                                                                                                    ## Lists)
                                                                                                    ## are
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## taken
                                                                                                    ## into
                                                                                                    ## account
                                                                                                    ## by
                                                                                                    ## the
                                                                                                    ## IGESDumper
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## See
                                                                                                    ## class
                                                                                                    ## IGESDumper
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ## rules
                                                                                                    ## to
                                                                                                    ## follow
                                                                                                    ## for
                                                                                                    ## <own>
                                                                                                    ## and
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <attached>
                                                                                                    ## level


proc OwnDump*(this: IGESData_SpecificModule; CN: Standard_Integer;
             ent: handle[IGESData_IGESEntity]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESData_SpecificModule.hxx".}
proc OwnCorrect*(this: IGESData_SpecificModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): Standard_Boolean {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESData_SpecificModule.hxx".}
type
  IGESData_SpecificModulebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESData_SpecificModule::get_type_name(@)",
                              header: "IGESData_SpecificModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_SpecificModule::get_type_descriptor(@)",
    header: "IGESData_SpecificModule.hxx".}
proc DynamicType*(this: IGESData_SpecificModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_SpecificModule.hxx".}
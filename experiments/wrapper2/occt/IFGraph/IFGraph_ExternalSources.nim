##  Created on: 1992-09-23
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

discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
type
  IFGraphExternalSources* {.importcpp: "IFGraph_ExternalSources",
                           header: "IFGraph_ExternalSources.hxx", bycopy.} = object of InterfaceGraphContent ##
                                                                                                      ## !
                                                                                                      ## creates
                                                                                                      ## empty
                                                                                                      ## ExternalSources,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## work


proc constructIFGraphExternalSources*(agraph: InterfaceGraph): IFGraphExternalSources {.
    constructor, importcpp: "IFGraph_ExternalSources(@)",
    header: "IFGraph_ExternalSources.hxx".}
proc getFromEntity*(this: var IFGraphExternalSources; ent: Handle[StandardTransient]) {.
    importcpp: "GetFromEntity", header: "IFGraph_ExternalSources.hxx".}
proc getFromIter*(this: var IFGraphExternalSources; iter: InterfaceEntityIterator) {.
    importcpp: "GetFromIter", header: "IFGraph_ExternalSources.hxx".}
proc resetData*(this: var IFGraphExternalSources) {.importcpp: "ResetData",
    header: "IFGraph_ExternalSources.hxx".}
proc evaluate*(this: var IFGraphExternalSources) {.importcpp: "Evaluate",
    header: "IFGraph_ExternalSources.hxx".}
proc isEmpty*(this: var IFGraphExternalSources): bool {.importcpp: "IsEmpty",
    header: "IFGraph_ExternalSources.hxx".}

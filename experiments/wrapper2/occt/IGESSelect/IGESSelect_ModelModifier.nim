##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IGESData_IGESModel"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESSelect_ModelModifier"
discard "forward decl of IGESSelect_ModelModifier"
type
  HandleIGESSelectModelModifier* = Handle[IGESSelectModelModifier]
  IGESSelectModelModifier* {.importcpp: "IGESSelect_ModelModifier",
                            header: "IGESSelect_ModelModifier.hxx", bycopy.} = object of IFSelectModifier ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## inherited
                                                                                                   ## Perform
                                                                                                   ## does
                                                                                                   ## the
                                                                                                   ## required
                                                                                                   ## cast
                                                                                                   ## (and
                                                                                                   ## refuses
                                                                                                   ## to
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## go
                                                                                                   ## further
                                                                                                   ## if
                                                                                                   ## cast
                                                                                                   ## has
                                                                                                   ## failed)
                                                                                                   ## then
                                                                                                   ## calls
                                                                                                   ## the
                                                                                                   ## instantiated
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Performing
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Calls
                                                                                                   ## inherited
                                                                                                   ## Initialize,
                                                                                                   ## transmits
                                                                                                   ## to
                                                                                                   ## it
                                                                                                   ## the
                                                                                                   ## information
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## <maychangegraph>


proc perform*(this: IGESSelectModelModifier; ctx: var IFSelectContextModif;
             target: Handle[InterfaceInterfaceModel];
             protocol: Handle[InterfaceProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Perform", header: "IGESSelect_ModelModifier.hxx".}
proc performProtocol*(this: IGESSelectModelModifier; ctx: var IFSelectContextModif;
                     target: Handle[IGESDataIGESModel];
                     proto: Handle[IGESDataProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "PerformProtocol",
    header: "IGESSelect_ModelModifier.hxx".}
proc performing*(this: IGESSelectModelModifier; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_ModelModifier.hxx".}
type
  IGESSelectModelModifierbaseType* = IFSelectModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_ModelModifier::get_type_name(@)",
                            header: "IGESSelect_ModelModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_ModelModifier::get_type_descriptor(@)",
    header: "IGESSelect_ModelModifier.hxx".}
proc dynamicType*(this: IGESSelectModelModifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_ModelModifier.hxx".}

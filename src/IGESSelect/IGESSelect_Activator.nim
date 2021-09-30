##  Created on: 1994-06-03
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

discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IGESSelect_Activator"
discard "forward decl of IGESSelect_Activator"
type
  HandleC1C1* = Handle[IGESSelectActivator]

## ! Performs Actions specific to IGESSelect, i.e. creation of
## ! IGES Selections and Dispatches, plus dumping specific to IGES

type
  IGESSelectActivator* {.importcpp: "IGESSelect_Activator",
                        header: "IGESSelect_Activator.hxx", bycopy.} = object of IFSelectActivator


proc constructIGESSelectActivator*(): IGESSelectActivator {.constructor,
    importcpp: "IGESSelect_Activator(@)", header: "IGESSelect_Activator.hxx".}
proc `do`*(this: var IGESSelectActivator; number: cint;
          pilot: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.
    importcpp: "Do", header: "IGESSelect_Activator.hxx".}
proc help*(this: IGESSelectActivator; number: cint): StandardCString {.noSideEffect,
    importcpp: "Help", header: "IGESSelect_Activator.hxx".}
type
  IGESSelectActivatorbaseType* = IFSelectActivator

proc getTypeName*(): cstring {.importcpp: "IGESSelect_Activator::get_type_name(@)",
                            header: "IGESSelect_Activator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_Activator::get_type_descriptor(@)",
    header: "IGESSelect_Activator.hxx".}
proc dynamicType*(this: IGESSelectActivator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_Activator.hxx".}


























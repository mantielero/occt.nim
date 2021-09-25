##  Created on: 1994-06-01
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

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SetVersion5"
discard "forward decl of IGESSelect_SetVersion5"
type
  HandleIGESSelectSetVersion5* = Handle[IGESSelectSetVersion5]

## ! Sets IGES Version (coded in global parameter 23) to be at least
## ! IGES 5.1 . If it is older, it is set to IGES 5.1, and
## ! LastChangeDate (new Global n0 25) is added (current time)
## ! Else, it does nothing (i.e. changes neither IGES Version nor
## ! LastChangeDate)

type
  IGESSelectSetVersion5* {.importcpp: "IGESSelect_SetVersion5",
                          header: "IGESSelect_SetVersion5.hxx", bycopy.} = object of IGESSelectModelModifier ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## SetVersion5,
                                                                                                      ## which
                                                                                                      ## uses
                                                                                                      ## the
                                                                                                      ## system
                                                                                                      ## Date
                                                                                                      ## for
                                                                                                      ## Last
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Change
                                                                                                      ## Date


proc constructIGESSelectSetVersion5*(): IGESSelectSetVersion5 {.constructor,
    importcpp: "IGESSelect_SetVersion5(@)", header: "IGESSelect_SetVersion5.hxx".}
proc performing*(this: IGESSelectSetVersion5; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_SetVersion5.hxx".}
proc label*(this: IGESSelectSetVersion5): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_SetVersion5.hxx".}
type
  IGESSelectSetVersion5baseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SetVersion5::get_type_name(@)",
                            header: "IGESSelect_SetVersion5.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SetVersion5::get_type_descriptor(@)",
    header: "IGESSelect_SetVersion5.hxx".}
proc dynamicType*(this: IGESSelectSetVersion5): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_SetVersion5.hxx".}

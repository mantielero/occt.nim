##  Created on: 1992-11-17
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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectBase

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectModelRoots"
discard "forward decl of IFSelect_SelectModelRoots"
type
  Handle_IFSelect_SelectModelRoots* = handle[IFSelect_SelectModelRoots]

## ! A SelectModelRoots gets all the Root Entities of an
## ! InterfaceModel. Remember that a "Root Entity" is defined as
## ! having no Sharing Entity (if there is a Loop between Entities,
## ! none of them can be a "Root").

type
  IFSelect_SelectModelRoots* {.importcpp: "IFSelect_SelectModelRoots",
                              header: "IFSelect_SelectModelRoots.hxx", bycopy.} = object of IFSelect_SelectBase ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## SelectModelRoot


proc constructIFSelect_SelectModelRoots*(): IFSelect_SelectModelRoots {.
    constructor, importcpp: "IFSelect_SelectModelRoots(@)",
    header: "IFSelect_SelectModelRoots.hxx".}
proc RootResult*(this: IFSelect_SelectModelRoots; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectModelRoots.hxx".}
proc Label*(this: IFSelect_SelectModelRoots): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_SelectModelRoots.hxx".}
type
  IFSelect_SelectModelRootsbase_type* = IFSelect_SelectBase

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectModelRoots::get_type_name(@)",
                              header: "IFSelect_SelectModelRoots.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectModelRoots::get_type_descriptor(@)",
    header: "IFSelect_SelectModelRoots.hxx".}
proc DynamicType*(this: IFSelect_SelectModelRoots): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectModelRoots.hxx".}
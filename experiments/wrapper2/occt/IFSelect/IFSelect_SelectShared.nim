##  Created on: 1992-11-18
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectDeduct

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectShared"
discard "forward decl of IFSelect_SelectShared"
type
  Handle_IFSelect_SelectShared* = handle[IFSelect_SelectShared]

## ! A SelectShared selects Entities which are directly Shared
## ! by the Entities of the Input list

type
  IFSelect_SelectShared* {.importcpp: "IFSelect_SelectShared",
                          header: "IFSelect_SelectShared.hxx", bycopy.} = object of IFSelect_SelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## SelectShared;


proc constructIFSelect_SelectShared*(): IFSelect_SelectShared {.constructor,
    importcpp: "IFSelect_SelectShared(@)", header: "IFSelect_SelectShared.hxx".}
proc RootResult*(this: IFSelect_SelectShared; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectShared.hxx".}
proc Label*(this: IFSelect_SelectShared): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectShared.hxx".}
type
  IFSelect_SelectSharedbase_type* = IFSelect_SelectDeduct

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectShared::get_type_name(@)",
                              header: "IFSelect_SelectShared.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectShared::get_type_descriptor(@)",
    header: "IFSelect_SelectShared.hxx".}
proc DynamicType*(this: IFSelect_SelectShared): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectShared.hxx".}
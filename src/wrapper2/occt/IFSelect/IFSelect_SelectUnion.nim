##  Created on: 1993-01-11
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectCombine

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectUnion"
discard "forward decl of IFSelect_SelectUnion"
type
  Handle_IFSelect_SelectUnion* = handle[IFSelect_SelectUnion]

## ! A SelectUnion cumulates the Entities issued from several other
## ! Selections (union of results : "OR" operator)

type
  IFSelect_SelectUnion* {.importcpp: "IFSelect_SelectUnion",
                         header: "IFSelect_SelectUnion.hxx", bycopy.} = object of IFSelect_SelectCombine ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## SelectUnion


proc constructIFSelect_SelectUnion*(): IFSelect_SelectUnion {.constructor,
    importcpp: "IFSelect_SelectUnion(@)", header: "IFSelect_SelectUnion.hxx".}
proc RootResult*(this: IFSelect_SelectUnion; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectUnion.hxx".}
proc Label*(this: IFSelect_SelectUnion): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectUnion.hxx".}
type
  IFSelect_SelectUnionbase_type* = IFSelect_SelectCombine

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectUnion::get_type_name(@)",
                              header: "IFSelect_SelectUnion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectUnion::get_type_descriptor(@)",
    header: "IFSelect_SelectUnion.hxx".}
proc DynamicType*(this: IFSelect_SelectUnion): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectUnion.hxx".}
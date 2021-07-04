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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Selection

discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectBase"
discard "forward decl of IFSelect_SelectBase"
type
  Handle_IFSelect_SelectBase* = handle[IFSelect_SelectBase]

## ! SelectBase works directly from an InterfaceModel : it is the
## ! first base for other Selections.

type
  IFSelect_SelectBase* {.importcpp: "IFSelect_SelectBase",
                        header: "IFSelect_SelectBase.hxx", bycopy.} = object of IFSelect_Selection ##
                                                                                            ## !
                                                                                            ## Puts
                                                                                            ## in
                                                                                            ## an
                                                                                            ## Iterator
                                                                                            ## the
                                                                                            ## Selections
                                                                                            ## from
                                                                                            ## which
                                                                                            ## "me"
                                                                                            ## depends
                                                                                            ##
                                                                                            ## !
                                                                                            ## This
                                                                                            ## list
                                                                                            ## is
                                                                                            ## empty
                                                                                            ## for
                                                                                            ## all
                                                                                            ## SelectBase
                                                                                            ## type
                                                                                            ## Selections


proc FillIterator*(this: IFSelect_SelectBase; iter: var IFSelect_SelectionIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "IFSelect_SelectBase.hxx".}
type
  IFSelect_SelectBasebase_type* = IFSelect_Selection

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectBase::get_type_name(@)",
                              header: "IFSelect_SelectBase.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectBase::get_type_descriptor(@)",
    header: "IFSelect_SelectBase.hxx".}
proc DynamicType*(this: IFSelect_SelectBase): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectBase.hxx".}
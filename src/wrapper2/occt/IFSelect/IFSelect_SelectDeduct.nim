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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Selection,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectPointed"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of IFSelect_SelectDeduct"
type
  Handle_IFSelect_SelectDeduct* = handle[IFSelect_SelectDeduct]

## ! A SelectDeduct determines a list of Entities from an Input
## ! Selection, by a computation : Output list is not obliged to be
## ! a sub-list of Input list
## ! (for more specific, see SelectExtract for filtered sub-lists,
## ! and SelectExplore for recurcive exploration)
## !
## ! A SelectDeduct may use an alternate input for one shot
## ! This allows to use an already existing definition, by
## ! overloading the input selection by an alternate list,
## ! already defined, for one use :
## ! If this alternate list is set, InputResult queries it instead
## ! of calling the input selection, then clears it immediately

type
  IFSelect_SelectDeduct* {.importcpp: "IFSelect_SelectDeduct",
                          header: "IFSelect_SelectDeduct.hxx", bycopy.} = object of IFSelect_Selection ##
                                                                                                ## !
                                                                                                ## Defines
                                                                                                ## or
                                                                                                ## Changes
                                                                                                ## the
                                                                                                ## Input
                                                                                                ## Selection


proc SetInput*(this: var IFSelect_SelectDeduct; sel: handle[IFSelect_Selection]) {.
    importcpp: "SetInput", header: "IFSelect_SelectDeduct.hxx".}
proc Input*(this: IFSelect_SelectDeduct): handle[IFSelect_Selection] {.noSideEffect,
    importcpp: "Input", header: "IFSelect_SelectDeduct.hxx".}
proc HasInput*(this: IFSelect_SelectDeduct): Standard_Boolean {.noSideEffect,
    importcpp: "HasInput", header: "IFSelect_SelectDeduct.hxx".}
proc HasAlternate*(this: IFSelect_SelectDeduct): Standard_Boolean {.noSideEffect,
    importcpp: "HasAlternate", header: "IFSelect_SelectDeduct.hxx".}
proc Alternate*(this: var IFSelect_SelectDeduct): var handle[IFSelect_SelectPointed] {.
    importcpp: "Alternate", header: "IFSelect_SelectDeduct.hxx".}
proc InputResult*(this: IFSelect_SelectDeduct; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "InputResult", header: "IFSelect_SelectDeduct.hxx".}
proc FillIterator*(this: IFSelect_SelectDeduct;
                  iter: var IFSelect_SelectionIterator) {.noSideEffect,
    importcpp: "FillIterator", header: "IFSelect_SelectDeduct.hxx".}
type
  IFSelect_SelectDeductbase_type* = IFSelect_Selection

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectDeduct::get_type_name(@)",
                              header: "IFSelect_SelectDeduct.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectDeduct::get_type_descriptor(@)",
    header: "IFSelect_SelectDeduct.hxx".}
proc DynamicType*(this: IFSelect_SelectDeduct): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SelectDeduct.hxx".}
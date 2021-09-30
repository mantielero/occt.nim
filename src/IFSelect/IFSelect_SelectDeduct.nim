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

discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectPointed"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of IFSelect_SelectDeduct"
type
  HandleC1C1* = Handle[IFSelectSelectDeduct]

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
  IFSelectSelectDeduct* {.importcpp: "IFSelect_SelectDeduct",
                         header: "IFSelect_SelectDeduct.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                              ## !
                                                                                              ## Defines
                                                                                              ## or
                                                                                              ## Changes
                                                                                              ## the
                                                                                              ## Input
                                                                                              ## Selection


proc setInput*(this: var IFSelectSelectDeduct; sel: Handle[IFSelectSelection]) {.
    importcpp: "SetInput", header: "IFSelect_SelectDeduct.hxx".}
proc input*(this: IFSelectSelectDeduct): Handle[IFSelectSelection] {.noSideEffect,
    importcpp: "Input", header: "IFSelect_SelectDeduct.hxx".}
proc hasInput*(this: IFSelectSelectDeduct): bool {.noSideEffect,
    importcpp: "HasInput", header: "IFSelect_SelectDeduct.hxx".}
proc hasAlternate*(this: IFSelectSelectDeduct): bool {.noSideEffect,
    importcpp: "HasAlternate", header: "IFSelect_SelectDeduct.hxx".}
proc alternate*(this: var IFSelectSelectDeduct): var Handle[IFSelectSelectPointed] {.
    importcpp: "Alternate", header: "IFSelect_SelectDeduct.hxx".}
proc inputResult*(this: IFSelectSelectDeduct; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "InputResult", header: "IFSelect_SelectDeduct.hxx".}
proc fillIterator*(this: IFSelectSelectDeduct; iter: var IFSelectSelectionIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "IFSelect_SelectDeduct.hxx".}
type
  IFSelectSelectDeductbaseType* = IFSelectSelection

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectDeduct::get_type_name(@)",
                            header: "IFSelect_SelectDeduct.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectDeduct::get_type_descriptor(@)",
    header: "IFSelect_SelectDeduct.hxx".}
proc dynamicType*(this: IFSelectSelectDeduct): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectDeduct.hxx".}


























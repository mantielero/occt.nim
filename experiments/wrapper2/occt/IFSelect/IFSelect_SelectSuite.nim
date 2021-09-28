##  Created on: 1998-10-19
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSuite"
discard "forward decl of IFSelect_SelectSuite"
type
  HandleC1C1* = Handle[IFSelectSelectSuite]

## ! A SelectSuite can describe a suite of SelectDeduct as a unique
## ! one : in other words, it can be seen as a "macro selection"
## !
## ! It works by applying each of its items (which is a
## ! SelectDeduct) on the result computed by the previous one
## ! (by using Alternate Input)
## !
## ! But each of these Selections used as items may be used
## ! independently, it will then give its own result
## !
## ! Hence, SelectSuite gives a way of defining a new Selection
## ! from existing ones, without having to do copies or saves

type
  IFSelectSelectSuite* {.importcpp: "IFSelect_SelectSuite",
                        header: "IFSelect_SelectSuite.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## SelectSuite


proc constructIFSelectSelectSuite*(): IFSelectSelectSuite {.constructor,
    importcpp: "IFSelect_SelectSuite(@)", header: "IFSelect_SelectSuite.hxx".}
proc addInput*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelection]): bool {.
    importcpp: "AddInput", header: "IFSelect_SelectSuite.hxx".}
proc addPrevious*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelectDeduct]) {.
    importcpp: "AddPrevious", header: "IFSelect_SelectSuite.hxx".}
proc addNext*(this: var IFSelectSelectSuite; item: Handle[IFSelectSelectDeduct]) {.
    importcpp: "AddNext", header: "IFSelect_SelectSuite.hxx".}
proc nbItems*(this: IFSelectSelectSuite): cint {.noSideEffect, importcpp: "NbItems",
    header: "IFSelect_SelectSuite.hxx".}
proc item*(this: IFSelectSelectSuite; num: cint): Handle[IFSelectSelectDeduct] {.
    noSideEffect, importcpp: "Item", header: "IFSelect_SelectSuite.hxx".}
proc setLabel*(this: var IFSelectSelectSuite; lab: StandardCString) {.
    importcpp: "SetLabel", header: "IFSelect_SelectSuite.hxx".}
proc rootResult*(this: IFSelectSelectSuite; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectSuite.hxx".}
proc label*(this: IFSelectSelectSuite): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectSuite.hxx".}
type
  IFSelectSelectSuitebaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectSuite::get_type_name(@)",
                            header: "IFSelect_SelectSuite.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectSuite::get_type_descriptor(@)",
    header: "IFSelect_SelectSuite.hxx".}
proc dynamicType*(this: IFSelectSelectSuite): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectSuite.hxx".}


























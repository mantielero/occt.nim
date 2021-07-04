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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../TColStd/TColStd_SequenceOfTransient,
  IFSelect_SelectDeduct, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_CString

discard "forward decl of Interface_InterfaceError"
discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSuite"
discard "forward decl of IFSelect_SelectSuite"
type
  Handle_IFSelect_SelectSuite* = handle[IFSelect_SelectSuite]

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
  IFSelect_SelectSuite* {.importcpp: "IFSelect_SelectSuite",
                         header: "IFSelect_SelectSuite.hxx", bycopy.} = object of IFSelect_SelectDeduct ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## an
                                                                                                 ## empty
                                                                                                 ## SelectSuite


proc constructIFSelect_SelectSuite*(): IFSelect_SelectSuite {.constructor,
    importcpp: "IFSelect_SelectSuite(@)", header: "IFSelect_SelectSuite.hxx".}
proc AddInput*(this: var IFSelect_SelectSuite; item: handle[IFSelect_Selection]): Standard_Boolean {.
    importcpp: "AddInput", header: "IFSelect_SelectSuite.hxx".}
proc AddPrevious*(this: var IFSelect_SelectSuite;
                 item: handle[IFSelect_SelectDeduct]) {.importcpp: "AddPrevious",
    header: "IFSelect_SelectSuite.hxx".}
proc AddNext*(this: var IFSelect_SelectSuite; item: handle[IFSelect_SelectDeduct]) {.
    importcpp: "AddNext", header: "IFSelect_SelectSuite.hxx".}
proc NbItems*(this: IFSelect_SelectSuite): Standard_Integer {.noSideEffect,
    importcpp: "NbItems", header: "IFSelect_SelectSuite.hxx".}
proc Item*(this: IFSelect_SelectSuite; num: Standard_Integer): handle[
    IFSelect_SelectDeduct] {.noSideEffect, importcpp: "Item",
                            header: "IFSelect_SelectSuite.hxx".}
proc SetLabel*(this: var IFSelect_SelectSuite; lab: Standard_CString) {.
    importcpp: "SetLabel", header: "IFSelect_SelectSuite.hxx".}
proc RootResult*(this: IFSelect_SelectSuite; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectSuite.hxx".}
proc Label*(this: IFSelect_SelectSuite): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectSuite.hxx".}
type
  IFSelect_SelectSuitebase_type* = IFSelect_SelectDeduct

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectSuite::get_type_name(@)",
                              header: "IFSelect_SelectSuite.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectSuite::get_type_descriptor(@)",
    header: "IFSelect_SelectSuite.hxx".}
proc DynamicType*(this: IFSelect_SelectSuite): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectSuite.hxx".}
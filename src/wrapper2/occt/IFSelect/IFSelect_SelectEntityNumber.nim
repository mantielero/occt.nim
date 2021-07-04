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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectBase

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectEntityNumber"
discard "forward decl of IFSelect_SelectEntityNumber"
type
  Handle_IFSelect_SelectEntityNumber* = handle[IFSelect_SelectEntityNumber]

## ! A SelectEntityNumber gets in an InterfaceModel (through a
## ! Graph), the Entity which has a specified Number (its rank of
## ! adding into the Model) : there can be zero (if none) or one.
## ! The Number is not directly defined as an Integer, but as a
## ! Parameter, which can be externally controled

type
  IFSelect_SelectEntityNumber* {.importcpp: "IFSelect_SelectEntityNumber",
                                header: "IFSelect_SelectEntityNumber.hxx", bycopy.} = object of IFSelect_SelectBase ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## SelectEntityNumber,
                                                                                                             ## initially
                                                                                                             ## with
                                                                                                             ## no
                                                                                                             ## specified
                                                                                                             ## Number


proc constructIFSelect_SelectEntityNumber*(): IFSelect_SelectEntityNumber {.
    constructor, importcpp: "IFSelect_SelectEntityNumber(@)",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc SetNumber*(this: var IFSelect_SelectEntityNumber;
               num: handle[IFSelect_IntParam]) {.importcpp: "SetNumber",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc Number*(this: IFSelect_SelectEntityNumber): handle[IFSelect_IntParam] {.
    noSideEffect, importcpp: "Number", header: "IFSelect_SelectEntityNumber.hxx".}
proc RootResult*(this: IFSelect_SelectEntityNumber; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc Label*(this: IFSelect_SelectEntityNumber): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_SelectEntityNumber.hxx".}
type
  IFSelect_SelectEntityNumberbase_type* = IFSelect_SelectBase

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectEntityNumber::get_type_name(@)",
                              header: "IFSelect_SelectEntityNumber.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectEntityNumber::get_type_descriptor(@)",
    header: "IFSelect_SelectEntityNumber.hxx".}
proc DynamicType*(this: IFSelect_SelectEntityNumber): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectEntityNumber.hxx".}
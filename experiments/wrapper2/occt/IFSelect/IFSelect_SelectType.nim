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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Type,
  IFSelect_SelectAnyType

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectType"
discard "forward decl of IFSelect_SelectType"
type
  Handle_IFSelect_SelectType* = handle[IFSelect_SelectType]

## ! A SelectType keeps or rejects Entities of which the Type
## ! is Kind of a given Cdl Type

type
  IFSelect_SelectType* {.importcpp: "IFSelect_SelectType",
                        header: "IFSelect_SelectType.hxx", bycopy.} = object of IFSelect_SelectAnyType ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SelectType.
                                                                                                ## Default
                                                                                                ## is
                                                                                                ## no
                                                                                                ## filter


proc constructIFSelect_SelectType*(): IFSelect_SelectType {.constructor,
    importcpp: "IFSelect_SelectType(@)", header: "IFSelect_SelectType.hxx".}
proc constructIFSelect_SelectType*(atype: handle[Standard_Type]): IFSelect_SelectType {.
    constructor, importcpp: "IFSelect_SelectType(@)",
    header: "IFSelect_SelectType.hxx".}
proc SetType*(this: var IFSelect_SelectType; atype: handle[Standard_Type]) {.
    importcpp: "SetType", header: "IFSelect_SelectType.hxx".}
proc TypeForMatch*(this: IFSelect_SelectType): handle[Standard_Type] {.noSideEffect,
    importcpp: "TypeForMatch", header: "IFSelect_SelectType.hxx".}
proc ExtractLabel*(this: IFSelect_SelectType): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectType.hxx".}
type
  IFSelect_SelectTypebase_type* = IFSelect_SelectAnyType

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectType::get_type_name(@)",
                              header: "IFSelect_SelectType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectType::get_type_descriptor(@)",
    header: "IFSelect_SelectType.hxx".}
proc DynamicType*(this: IFSelect_SelectType): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectType.hxx".}
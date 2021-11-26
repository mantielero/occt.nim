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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectType"
discard "forward decl of IFSelect_SelectType"
type
  HandleC1C1* = Handle[IFSelectSelectType]

## ! A SelectType keeps or rejects Entities of which the Type
## ! is Kind of a given Cdl Type

type
  IFSelectSelectType* {.importcpp: "IFSelect_SelectType",
                       header: "IFSelect_SelectType.hxx", bycopy.} = object of IFSelectSelectAnyType ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## SelectType.
                                                                                              ## Default
                                                                                              ## is
                                                                                              ## no
                                                                                              ## filter


proc constructIFSelectSelectType*(): IFSelectSelectType {.constructor,
    importcpp: "IFSelect_SelectType(@)", header: "IFSelect_SelectType.hxx".}
proc constructIFSelectSelectType*(atype: Handle[StandardType]): IFSelectSelectType {.
    constructor, importcpp: "IFSelect_SelectType(@)",
    header: "IFSelect_SelectType.hxx".}
proc setType*(this: var IFSelectSelectType; atype: Handle[StandardType]) {.
    importcpp: "SetType", header: "IFSelect_SelectType.hxx".}
proc typeForMatch*(this: IFSelectSelectType): Handle[StandardType] {.noSideEffect,
    importcpp: "TypeForMatch", header: "IFSelect_SelectType.hxx".}
proc extractLabel*(this: IFSelectSelectType): TCollectionAsciiString {.noSideEffect,
    importcpp: "ExtractLabel", header: "IFSelect_SelectType.hxx".}
type
  IFSelectSelectTypebaseType* = IFSelectSelectAnyType

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectType::get_type_name(@)",
                            header: "IFSelect_SelectType.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectType::get_type_descriptor(@)",
    header: "IFSelect_SelectType.hxx".}
proc dynamicType*(this: IFSelectSelectType): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectType.hxx".}


























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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_Dispatch,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerOne"
discard "forward decl of IFSelect_DispPerOne"
type
  Handle_IFSelect_DispPerOne* = handle[IFSelect_DispPerOne]

## ! A DispPerOne gathers all the input Entities into as many
## ! Packets as there Root Entities from the Final Selection,
## ! that is, one Packet per Entity

type
  IFSelect_DispPerOne* {.importcpp: "IFSelect_DispPerOne",
                        header: "IFSelect_DispPerOne.hxx", bycopy.} = object of IFSelect_Dispatch ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## DispPerOne


proc constructIFSelect_DispPerOne*(): IFSelect_DispPerOne {.constructor,
    importcpp: "IFSelect_DispPerOne(@)", header: "IFSelect_DispPerOne.hxx".}
proc Label*(this: IFSelect_DispPerOne): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerOne.hxx".}
proc LimitedMax*(this: IFSelect_DispPerOne; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispPerOne.hxx".}
proc Packets*(this: IFSelect_DispPerOne; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerOne.hxx".}
type
  IFSelect_DispPerOnebase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IFSelect_DispPerOne::get_type_name(@)",
                              header: "IFSelect_DispPerOne.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_DispPerOne::get_type_descriptor(@)",
    header: "IFSelect_DispPerOne.hxx".}
proc DynamicType*(this: IFSelect_DispPerOne): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_DispPerOne.hxx".}
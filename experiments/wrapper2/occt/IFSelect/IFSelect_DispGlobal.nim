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
discard "forward decl of IFSelect_DispGlobal"
discard "forward decl of IFSelect_DispGlobal"
type
  Handle_IFSelect_DispGlobal* = handle[IFSelect_DispGlobal]

## ! A DispGlobal gathers all the input Entities into only one
## ! global Packet

type
  IFSelect_DispGlobal* {.importcpp: "IFSelect_DispGlobal",
                        header: "IFSelect_DispGlobal.hxx", bycopy.} = object of IFSelect_Dispatch ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## DispGlobal


proc constructIFSelect_DispGlobal*(): IFSelect_DispGlobal {.constructor,
    importcpp: "IFSelect_DispGlobal(@)", header: "IFSelect_DispGlobal.hxx".}
proc Label*(this: IFSelect_DispGlobal): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispGlobal.hxx".}
proc LimitedMax*(this: IFSelect_DispGlobal; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispGlobal.hxx".}
proc Packets*(this: IFSelect_DispGlobal; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispGlobal.hxx".}
type
  IFSelect_DispGlobalbase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IFSelect_DispGlobal::get_type_name(@)",
                              header: "IFSelect_DispGlobal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_DispGlobal::get_type_descriptor(@)",
    header: "IFSelect_DispGlobal.hxx".}
proc DynamicType*(this: IFSelect_DispGlobal): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_DispGlobal.hxx".}
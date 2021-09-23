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
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerCount"
discard "forward decl of IFSelect_DispPerCount"
type
  Handle_IFSelect_DispPerCount* = handle[IFSelect_DispPerCount]

## ! A DispPerCount gathers all the input Entities into one or
## ! several Packets, each containing a defined count of Entity
## ! This count is a Parameter of the DispPerCount, given as an
## ! IntParam, thus allowing external control of its Value

type
  IFSelect_DispPerCount* {.importcpp: "IFSelect_DispPerCount",
                          header: "IFSelect_DispPerCount.hxx", bycopy.} = object of IFSelect_Dispatch ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## DispPerCount
                                                                                               ## with
                                                                                               ## no
                                                                                               ## Count
                                                                                               ## (default
                                                                                               ## value
                                                                                               ## 1)


proc constructIFSelect_DispPerCount*(): IFSelect_DispPerCount {.constructor,
    importcpp: "IFSelect_DispPerCount(@)", header: "IFSelect_DispPerCount.hxx".}
proc Count*(this: IFSelect_DispPerCount): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Count", header: "IFSelect_DispPerCount.hxx".}
proc SetCount*(this: var IFSelect_DispPerCount; count: handle[IFSelect_IntParam]) {.
    importcpp: "SetCount", header: "IFSelect_DispPerCount.hxx".}
proc CountValue*(this: IFSelect_DispPerCount): Standard_Integer {.noSideEffect,
    importcpp: "CountValue", header: "IFSelect_DispPerCount.hxx".}
proc Label*(this: IFSelect_DispPerCount): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerCount.hxx".}
proc LimitedMax*(this: IFSelect_DispPerCount; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_DispPerCount.hxx".}
proc Packets*(this: IFSelect_DispPerCount; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerCount.hxx".}
type
  IFSelect_DispPerCountbase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IFSelect_DispPerCount::get_type_name(@)",
                              header: "IFSelect_DispPerCount.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_DispPerCount::get_type_descriptor(@)",
    header: "IFSelect_DispPerCount.hxx".}
proc DynamicType*(this: IFSelect_DispPerCount): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_DispPerCount.hxx".}
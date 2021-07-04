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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectExtract,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectRange"
discard "forward decl of IFSelect_SelectRange"
type
  Handle_IFSelect_SelectRange* = handle[IFSelect_SelectRange]

## ! A SelectRange keeps or rejects a sub-set of the input set,
## ! that is the Entities of which rank in the iteration list
## ! is in a given range (for instance form 2nd to 6th, etc...)

type
  IFSelect_SelectRange* {.importcpp: "IFSelect_SelectRange",
                         header: "IFSelect_SelectRange.hxx", bycopy.} = object of IFSelect_SelectExtract ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## SelectRange.
                                                                                                  ## Default
                                                                                                  ## is
                                                                                                  ## Take
                                                                                                  ## all
                                                                                                  ## the
                                                                                                  ## input
                                                                                                  ## list


proc constructIFSelect_SelectRange*(): IFSelect_SelectRange {.constructor,
    importcpp: "IFSelect_SelectRange(@)", header: "IFSelect_SelectRange.hxx".}
proc SetRange*(this: var IFSelect_SelectRange; rankfrom: handle[IFSelect_IntParam];
              rankto: handle[IFSelect_IntParam]) {.importcpp: "SetRange",
    header: "IFSelect_SelectRange.hxx".}
proc SetOne*(this: var IFSelect_SelectRange; rank: handle[IFSelect_IntParam]) {.
    importcpp: "SetOne", header: "IFSelect_SelectRange.hxx".}
proc SetFrom*(this: var IFSelect_SelectRange; rankfrom: handle[IFSelect_IntParam]) {.
    importcpp: "SetFrom", header: "IFSelect_SelectRange.hxx".}
proc SetUntil*(this: var IFSelect_SelectRange; rankto: handle[IFSelect_IntParam]) {.
    importcpp: "SetUntil", header: "IFSelect_SelectRange.hxx".}
proc HasLower*(this: IFSelect_SelectRange): Standard_Boolean {.noSideEffect,
    importcpp: "HasLower", header: "IFSelect_SelectRange.hxx".}
proc Lower*(this: IFSelect_SelectRange): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Lower", header: "IFSelect_SelectRange.hxx".}
proc LowerValue*(this: IFSelect_SelectRange): Standard_Integer {.noSideEffect,
    importcpp: "LowerValue", header: "IFSelect_SelectRange.hxx".}
proc HasUpper*(this: IFSelect_SelectRange): Standard_Boolean {.noSideEffect,
    importcpp: "HasUpper", header: "IFSelect_SelectRange.hxx".}
proc Upper*(this: IFSelect_SelectRange): handle[IFSelect_IntParam] {.noSideEffect,
    importcpp: "Upper", header: "IFSelect_SelectRange.hxx".}
proc UpperValue*(this: IFSelect_SelectRange): Standard_Integer {.noSideEffect,
    importcpp: "UpperValue", header: "IFSelect_SelectRange.hxx".}
proc Sort*(this: IFSelect_SelectRange; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectRange.hxx".}
proc ExtractLabel*(this: IFSelect_SelectRange): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectRange.hxx".}
type
  IFSelect_SelectRangebase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectRange::get_type_name(@)",
                              header: "IFSelect_SelectRange.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectRange::get_type_descriptor(@)",
    header: "IFSelect_SelectRange.hxx".}
proc DynamicType*(this: IFSelect_SelectRange): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectRange.hxx".}
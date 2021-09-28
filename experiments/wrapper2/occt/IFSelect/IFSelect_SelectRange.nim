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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectRange"
discard "forward decl of IFSelect_SelectRange"
type
  HandleC1C1* = Handle[IFSelectSelectRange]

## ! A SelectRange keeps or rejects a sub-set of the input set,
## ! that is the Entities of which rank in the iteration list
## ! is in a given range (for instance form 2nd to 6th, etc...)

type
  IFSelectSelectRange* {.importcpp: "IFSelect_SelectRange",
                        header: "IFSelect_SelectRange.hxx", bycopy.} = object of IFSelectSelectExtract ##
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


proc constructIFSelectSelectRange*(): IFSelectSelectRange {.constructor,
    importcpp: "IFSelect_SelectRange(@)", header: "IFSelect_SelectRange.hxx".}
proc setRange*(this: var IFSelectSelectRange; rankfrom: Handle[IFSelectIntParam];
              rankto: Handle[IFSelectIntParam]) {.importcpp: "SetRange",
    header: "IFSelect_SelectRange.hxx".}
proc setOne*(this: var IFSelectSelectRange; rank: Handle[IFSelectIntParam]) {.
    importcpp: "SetOne", header: "IFSelect_SelectRange.hxx".}
proc setFrom*(this: var IFSelectSelectRange; rankfrom: Handle[IFSelectIntParam]) {.
    importcpp: "SetFrom", header: "IFSelect_SelectRange.hxx".}
proc setUntil*(this: var IFSelectSelectRange; rankto: Handle[IFSelectIntParam]) {.
    importcpp: "SetUntil", header: "IFSelect_SelectRange.hxx".}
proc hasLower*(this: IFSelectSelectRange): bool {.noSideEffect,
    importcpp: "HasLower", header: "IFSelect_SelectRange.hxx".}
proc lower*(this: IFSelectSelectRange): Handle[IFSelectIntParam] {.noSideEffect,
    importcpp: "Lower", header: "IFSelect_SelectRange.hxx".}
proc lowerValue*(this: IFSelectSelectRange): cint {.noSideEffect,
    importcpp: "LowerValue", header: "IFSelect_SelectRange.hxx".}
proc hasUpper*(this: IFSelectSelectRange): bool {.noSideEffect,
    importcpp: "HasUpper", header: "IFSelect_SelectRange.hxx".}
proc upper*(this: IFSelectSelectRange): Handle[IFSelectIntParam] {.noSideEffect,
    importcpp: "Upper", header: "IFSelect_SelectRange.hxx".}
proc upperValue*(this: IFSelectSelectRange): cint {.noSideEffect,
    importcpp: "UpperValue", header: "IFSelect_SelectRange.hxx".}
proc sort*(this: IFSelectSelectRange; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    importcpp: "Sort", header: "IFSelect_SelectRange.hxx".}
proc extractLabel*(this: IFSelectSelectRange): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectRange.hxx".}
type
  IFSelectSelectRangebaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectRange::get_type_name(@)",
                            header: "IFSelect_SelectRange.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectRange::get_type_descriptor(@)",
    header: "IFSelect_SelectRange.hxx".}
proc dynamicType*(this: IFSelectSelectRange): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectRange.hxx".}


























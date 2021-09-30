##  Created on: 1993-01-11
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectUnion"
discard "forward decl of IFSelect_SelectUnion"
type
  HandleC1C1* = Handle[IFSelectSelectUnion]

## ! A SelectUnion cumulates the Entities issued from several other
## ! Selections (union of results : "OR" operator)

type
  IFSelectSelectUnion* {.importcpp: "IFSelect_SelectUnion",
                        header: "IFSelect_SelectUnion.hxx", bycopy.} = object of IFSelectSelectCombine ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SelectUnion


proc constructIFSelectSelectUnion*(): IFSelectSelectUnion {.constructor,
    importcpp: "IFSelect_SelectUnion(@)", header: "IFSelect_SelectUnion.hxx".}
proc rootResult*(this: IFSelectSelectUnion; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectUnion.hxx".}
proc label*(this: IFSelectSelectUnion): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectUnion.hxx".}
type
  IFSelectSelectUnionbaseType* = IFSelectSelectCombine

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectUnion::get_type_name(@)",
                            header: "IFSelect_SelectUnion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectUnion::get_type_descriptor(@)",
    header: "IFSelect_SelectUnion.hxx".}
proc dynamicType*(this: IFSelectSelectUnion): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectUnion.hxx".}


























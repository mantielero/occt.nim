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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectModelEntities"
discard "forward decl of IFSelect_SelectModelEntities"
type
  HandleC1C1* = Handle[IFSelectSelectModelEntities]

## ! A SelectModelEntities gets all the Entities of an
## ! InterfaceModel.

type
  IFSelectSelectModelEntities* {.importcpp: "IFSelect_SelectModelEntities",
                                header: "IFSelect_SelectModelEntities.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## SelectModelRoot


proc constructIFSelectSelectModelEntities*(): IFSelectSelectModelEntities {.
    constructor, importcpp: "IFSelect_SelectModelEntities(@)",
    header: "IFSelect_SelectModelEntities.hxx".}
proc rootResult*(this: IFSelectSelectModelEntities; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IFSelect_SelectModelEntities.hxx".}
proc completeResult*(this: IFSelectSelectModelEntities; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "CompleteResult",
    header: "IFSelect_SelectModelEntities.hxx".}
proc label*(this: IFSelectSelectModelEntities): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IFSelect_SelectModelEntities.hxx".}
type
  IFSelectSelectModelEntitiesbaseType* = IFSelectSelectBase

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectModelEntities::get_type_name(@)",
                            header: "IFSelect_SelectModelEntities.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectModelEntities::get_type_descriptor(@)",
    header: "IFSelect_SelectModelEntities.hxx".}
proc dynamicType*(this: IFSelectSelectModelEntities): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectModelEntities.hxx".}


























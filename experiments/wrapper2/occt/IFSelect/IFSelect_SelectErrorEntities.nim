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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectErrorEntities"
discard "forward decl of IFSelect_SelectErrorEntities"
type
  HandleIFSelectSelectErrorEntities* = Handle[IFSelectSelectErrorEntities]

## ! A SelectErrorEntities sorts the Entities which are qualified
## ! as "Error" (their Type has not been recognized) during reading
## ! a File. This does not concern Entities which are syntactically
## ! correct, but with incorrect data (for integrity constraints).

type
  IFSelectSelectErrorEntities* {.importcpp: "IFSelect_SelectErrorEntities",
                                header: "IFSelect_SelectErrorEntities.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectErrorEntities


proc constructIFSelectSelectErrorEntities*(): IFSelectSelectErrorEntities {.
    constructor, importcpp: "IFSelect_SelectErrorEntities(@)",
    header: "IFSelect_SelectErrorEntities.hxx".}
proc sort*(this: IFSelectSelectErrorEntities; rank: int;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectErrorEntities.hxx".}
proc extractLabel*(this: IFSelectSelectErrorEntities): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExtractLabel",
    header: "IFSelect_SelectErrorEntities.hxx".}
type
  IFSelectSelectErrorEntitiesbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectErrorEntities::get_type_name(@)",
                            header: "IFSelect_SelectErrorEntities.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectErrorEntities::get_type_descriptor(@)",
    header: "IFSelect_SelectErrorEntities.hxx".}
proc dynamicType*(this: IFSelectSelectErrorEntities): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IFSelect_SelectErrorEntities.hxx".}

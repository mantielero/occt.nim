##  Created on: 1995-10-25
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSent"
discard "forward decl of IFSelect_SelectSent"
type
  HandleC1C1* = Handle[IFSelectSelectSent]

## ! This class returns entities according sending to a file
## ! Once a model has been loaded, further sendings are recorded
## ! as status in the graph (for each value, a count of sendings)
## !
## ! Hence, it is possible to query entities : sent ones (at least
## ! once), non-sent (i.e. remaining) ones, duplicated ones, etc...
## !
## ! This selection performs this query

type
  IFSelectSelectSent* {.importcpp: "IFSelect_SelectSent",
                       header: "IFSelect_SelectSent.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## SelectSent
                                                                                              ## :
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 0
                                                                                              ## ->
                                                                                              ## remaining
                                                                                              ## (non-sent)
                                                                                              ## entities
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 1,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## True
                                                                                              ## (D)
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## (at
                                                                                              ## least
                                                                                              ## once)
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 2,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## True
                                                                                              ## ->
                                                                                              ## duplicated
                                                                                              ## (sent
                                                                                              ## least
                                                                                              ## twice)
                                                                                              ##
                                                                                              ## !
                                                                                              ## etc...
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 1,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## False
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## just
                                                                                              ## once
                                                                                              ## (non-dupl.d)
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 2,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## False
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## just
                                                                                              ## twice
                                                                                              ##
                                                                                              ## !
                                                                                              ## etc...


proc constructIFSelectSelectSent*(sentcount: cint = 1; atleast: bool = true): IFSelectSelectSent {.
    constructor, importcpp: "IFSelect_SelectSent(@)",
    header: "IFSelect_SelectSent.hxx".}
proc sentCount*(this: IFSelectSelectSent): cint {.noSideEffect,
    importcpp: "SentCount", header: "IFSelect_SelectSent.hxx".}
proc atLeast*(this: IFSelectSelectSent): bool {.noSideEffect, importcpp: "AtLeast",
    header: "IFSelect_SelectSent.hxx".}
proc rootResult*(this: IFSelectSelectSent; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectSent.hxx".}
proc sort*(this: IFSelectSelectSent; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect,
    importcpp: "Sort", header: "IFSelect_SelectSent.hxx".}
proc extractLabel*(this: IFSelectSelectSent): TCollectionAsciiString {.noSideEffect,
    importcpp: "ExtractLabel", header: "IFSelect_SelectSent.hxx".}
type
  IFSelectSelectSentbaseType* = IFSelectSelectExtract

proc getTypeName*(): cstring {.importcpp: "IFSelect_SelectSent::get_type_name(@)",
                            header: "IFSelect_SelectSent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_SelectSent::get_type_descriptor(@)",
    header: "IFSelect_SelectSent.hxx".}
proc dynamicType*(this: IFSelectSelectSent): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectSent.hxx".}


























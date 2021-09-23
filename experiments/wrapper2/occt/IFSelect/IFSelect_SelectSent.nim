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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, IFSelect_SelectExtract

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectSent"
discard "forward decl of IFSelect_SelectSent"
type
  Handle_IFSelect_SelectSent* = handle[IFSelect_SelectSent]

## ! This class returns entities according sending to a file
## ! Once a model has been loaded, further sendings are recorded
## ! as status in the graph (for each value, a count of sendings)
## !
## ! Hence, it is possible to query entities : sent ones (at least
## ! once), non-sent (i.e. remaining) ones, duplicated ones, etc...
## !
## ! This selection performs this query

type
  IFSelect_SelectSent* {.importcpp: "IFSelect_SelectSent",
                        header: "IFSelect_SelectSent.hxx", bycopy.} = object of IFSelect_SelectExtract ##
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


proc constructIFSelect_SelectSent*(sentcount: Standard_Integer = 1;
                                  atleast: Standard_Boolean = Standard_True): IFSelect_SelectSent {.
    constructor, importcpp: "IFSelect_SelectSent(@)",
    header: "IFSelect_SelectSent.hxx".}
proc SentCount*(this: IFSelect_SelectSent): Standard_Integer {.noSideEffect,
    importcpp: "SentCount", header: "IFSelect_SelectSent.hxx".}
proc AtLeast*(this: IFSelect_SelectSent): Standard_Boolean {.noSideEffect,
    importcpp: "AtLeast", header: "IFSelect_SelectSent.hxx".}
proc RootResult*(this: IFSelect_SelectSent; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectSent.hxx".}
proc Sort*(this: IFSelect_SelectSent; rank: Standard_Integer;
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Sort", header: "IFSelect_SelectSent.hxx".}
proc ExtractLabel*(this: IFSelect_SelectSent): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExtractLabel", header: "IFSelect_SelectSent.hxx".}
type
  IFSelect_SelectSentbase_type* = IFSelect_SelectExtract

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectSent::get_type_name(@)",
                              header: "IFSelect_SelectSent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectSent::get_type_descriptor(@)",
    header: "IFSelect_SelectSent.hxx".}
proc DynamicType*(this: IFSelect_SelectSent): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectSent.hxx".}
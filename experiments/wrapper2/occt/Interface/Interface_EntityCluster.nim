##  Created on: 1992-11-02
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of Interface_EntityList"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_EntityCluster"
discard "forward decl of Interface_EntityCluster"
type
  Handle_Interface_EntityCluster* = handle[Interface_EntityCluster]

## ! Auxiliary class for EntityList. An EntityList designates an
## ! EntityCluster, which brings itself an fixed maximum count of
## ! Entities. If it is full, it gives access to another cluster
## ! ("Next"). This class is intended to give a good compromise
## ! between access time (faster than a Sequence, good for little
## ! count) and memory use (better than a Sequence in any case,
## ! overall for little count, better than an Array for a very
## ! little count. It is designed for a light management.
## ! Remark that a new Item may not be Null, because this is the
## ! criterium used for "End of List"

type
  Interface_EntityCluster* {.importcpp: "Interface_EntityCluster",
                            header: "Interface_EntityCluster.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty,
                                                                                                    ## non-chained,
                                                                                                    ## EntityCluster
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## True
                                                                                                    ## if
                                                                                                    ## all
                                                                                                    ## the
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## entities
                                                                                                    ## local
                                                                                                    ## to
                                                                                                    ## a
                                                                                                    ## Cluster
                                                                                                    ## is
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## full.
                                                                                                    ## Used
                                                                                                    ## by
                                                                                                    ## EntityList.


proc constructInterface_EntityCluster*(): Interface_EntityCluster {.constructor,
    importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc constructInterface_EntityCluster*(ent: handle[Standard_Transient]): Interface_EntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc constructInterface_EntityCluster*(ec: handle[Interface_EntityCluster]): Interface_EntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc constructInterface_EntityCluster*(ant: handle[Standard_Transient];
                                      ec: handle[Interface_EntityCluster]): Interface_EntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc Append*(this: var Interface_EntityCluster; ent: handle[Standard_Transient]) {.
    importcpp: "Append", header: "Interface_EntityCluster.hxx".}
proc Remove*(this: var Interface_EntityCluster; ent: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc Remove*(this: var Interface_EntityCluster; num: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc NbEntities*(this: Interface_EntityCluster): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityCluster.hxx".}
proc Value*(this: Interface_EntityCluster; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Value",
                         header: "Interface_EntityCluster.hxx".}
proc SetValue*(this: var Interface_EntityCluster; num: Standard_Integer;
              ent: handle[Standard_Transient]) {.importcpp: "SetValue",
    header: "Interface_EntityCluster.hxx".}
proc FillIterator*(this: Interface_EntityCluster;
                  iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillIterator", header: "Interface_EntityCluster.hxx".}
proc destroyInterface_EntityCluster*(this: var Interface_EntityCluster) {.
    importcpp: "#.~Interface_EntityCluster()",
    header: "Interface_EntityCluster.hxx".}
type
  Interface_EntityClusterbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_EntityCluster::get_type_name(@)",
                              header: "Interface_EntityCluster.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_EntityCluster::get_type_descriptor(@)",
    header: "Interface_EntityCluster.hxx".}
proc DynamicType*(this: Interface_EntityCluster): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_EntityCluster.hxx".}
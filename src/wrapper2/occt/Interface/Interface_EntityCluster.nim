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

discard "forward decl of Standard_Transient"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of Interface_EntityList"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_EntityCluster"
discard "forward decl of Interface_EntityCluster"
type
  HandleInterfaceEntityCluster* = Handle[InterfaceEntityCluster]

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
  InterfaceEntityCluster* {.importcpp: "Interface_EntityCluster",
                           header: "Interface_EntityCluster.hxx", bycopy.} = object of StandardTransient ##
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


proc constructInterfaceEntityCluster*(): InterfaceEntityCluster {.constructor,
    importcpp: "Interface_EntityCluster(@)", header: "Interface_EntityCluster.hxx".}
proc constructInterfaceEntityCluster*(ent: Handle[StandardTransient]): InterfaceEntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc constructInterfaceEntityCluster*(ec: Handle[InterfaceEntityCluster]): InterfaceEntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc constructInterfaceEntityCluster*(ant: Handle[StandardTransient];
                                     ec: Handle[InterfaceEntityCluster]): InterfaceEntityCluster {.
    constructor, importcpp: "Interface_EntityCluster(@)",
    header: "Interface_EntityCluster.hxx".}
proc append*(this: var InterfaceEntityCluster; ent: Handle[StandardTransient]) {.
    importcpp: "Append", header: "Interface_EntityCluster.hxx".}
proc remove*(this: var InterfaceEntityCluster; ent: Handle[StandardTransient]): StandardBoolean {.
    importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc remove*(this: var InterfaceEntityCluster; num: StandardInteger): StandardBoolean {.
    importcpp: "Remove", header: "Interface_EntityCluster.hxx".}
proc nbEntities*(this: InterfaceEntityCluster): StandardInteger {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityCluster.hxx".}
proc value*(this: InterfaceEntityCluster; num: StandardInteger): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Value",
                        header: "Interface_EntityCluster.hxx".}
proc setValue*(this: var InterfaceEntityCluster; num: StandardInteger;
              ent: Handle[StandardTransient]) {.importcpp: "SetValue",
    header: "Interface_EntityCluster.hxx".}
proc fillIterator*(this: InterfaceEntityCluster; iter: var InterfaceEntityIterator) {.
    noSideEffect, importcpp: "FillIterator", header: "Interface_EntityCluster.hxx".}
proc destroyInterfaceEntityCluster*(this: var InterfaceEntityCluster) {.
    importcpp: "#.~Interface_EntityCluster()",
    header: "Interface_EntityCluster.hxx".}
type
  InterfaceEntityClusterbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_EntityCluster::get_type_name(@)",
                            header: "Interface_EntityCluster.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_EntityCluster::get_type_descriptor(@)",
    header: "Interface_EntityCluster.hxx".}
proc dynamicType*(this: InterfaceEntityCluster): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Interface_EntityCluster.hxx".}


##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of IGESGraph_Pick"
discard "forward decl of IGESGraph_Pick"
type
  HandleIGESGraphPick* = Handle[IGESGraphPick]

## ! defines IGESPick, Type <406> Form <21>
## ! in package IGESGraph
## !
## ! Attaches information that an entity may be picked
## ! by whatever pick device is used in the receiving
## ! system

type
  IGESGraphPick* {.importcpp: "IGESGraph_Pick", header: "IGESGraph_Pick.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphPick*(): IGESGraphPick {.constructor,
    importcpp: "IGESGraph_Pick(@)", header: "IGESGraph_Pick.hxx".}
proc init*(this: var IGESGraphPick; nbProps: StandardInteger;
          aPickStatus: StandardInteger) {.importcpp: "Init",
                                        header: "IGESGraph_Pick.hxx".}
proc nbPropertyValues*(this: IGESGraphPick): StandardInteger {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESGraph_Pick.hxx".}
proc pickFlag*(this: IGESGraphPick): StandardInteger {.noSideEffect,
    importcpp: "PickFlag", header: "IGESGraph_Pick.hxx".}
proc isPickable*(this: IGESGraphPick): StandardBoolean {.noSideEffect,
    importcpp: "IsPickable", header: "IGESGraph_Pick.hxx".}
type
  IGESGraphPickbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_Pick::get_type_name(@)",
                            header: "IGESGraph_Pick.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_Pick::get_type_descriptor(@)",
    header: "IGESGraph_Pick.hxx".}
proc dynamicType*(this: IGESGraphPick): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_Pick.hxx".}


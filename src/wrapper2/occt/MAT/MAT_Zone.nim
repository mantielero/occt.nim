##  Created on: 1993-05-27
##  Created by: Yves FRICAUD
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

discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_Arc"
discard "forward decl of MAT_Node"
discard "forward decl of MAT_Zone"
discard "forward decl of MAT_Zone"
type
  HandleMAT_Zone* = Handle[MAT_Zone]

## ! Definition of Zone of Proximity of a BasicElt :
## ! ----------------------------------------------
## ! A Zone of proximity is the set of the points which are
## ! more near from the BasicElt than any other.

type
  MAT_Zone* {.importcpp: "MAT_Zone", header: "MAT_Zone.hxx", bycopy.} = object of StandardTransient


proc constructMAT_Zone*(): MAT_Zone {.constructor, importcpp: "MAT_Zone(@)",
                                   header: "MAT_Zone.hxx".}
proc constructMAT_Zone*(aBasicElt: Handle[MAT_BasicElt]): MAT_Zone {.constructor,
    importcpp: "MAT_Zone(@)", header: "MAT_Zone.hxx".}
proc perform*(this: var MAT_Zone; aBasicElt: Handle[MAT_BasicElt]) {.
    importcpp: "Perform", header: "MAT_Zone.hxx".}
proc numberOfArcs*(this: MAT_Zone): StandardInteger {.noSideEffect,
    importcpp: "NumberOfArcs", header: "MAT_Zone.hxx".}
proc arcOnFrontier*(this: MAT_Zone; index: StandardInteger): Handle[MAT_Arc] {.
    noSideEffect, importcpp: "ArcOnFrontier", header: "MAT_Zone.hxx".}
proc noEmptyZone*(this: MAT_Zone): StandardBoolean {.noSideEffect,
    importcpp: "NoEmptyZone", header: "MAT_Zone.hxx".}
proc limited*(this: MAT_Zone): StandardBoolean {.noSideEffect, importcpp: "Limited",
    header: "MAT_Zone.hxx".}
type
  MAT_ZonebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Zone::get_type_name(@)",
                            header: "MAT_Zone.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Zone::get_type_descriptor(@)", header: "MAT_Zone.hxx".}
proc dynamicType*(this: MAT_Zone): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Zone.hxx".}


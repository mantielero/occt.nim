##  Created on: 1993-04-30
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Address,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient

discard "forward decl of MAT_Arc"
discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_BasicElt"
type
  Handle_MAT_BasicElt* = handle[MAT_BasicElt]

## ! A    BasicELt  is  associated   to  each  elemtary
## ! constituant of  the figure.

type
  MAT_BasicElt* {.importcpp: "MAT_BasicElt", header: "MAT_BasicElt.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Constructor,
                                                                                                       ## <anInteger>
                                                                                                       ## is
                                                                                                       ## the
                                                                                                       ## <index>
                                                                                                       ## of
                                                                                                       ## <me>.


proc constructMAT_BasicElt*(anInteger: Standard_Integer): MAT_BasicElt {.
    constructor, importcpp: "MAT_BasicElt(@)", header: "MAT_BasicElt.hxx".}
proc StartArc*(this: MAT_BasicElt): handle[MAT_Arc] {.noSideEffect,
    importcpp: "StartArc", header: "MAT_BasicElt.hxx".}
proc EndArc*(this: MAT_BasicElt): handle[MAT_Arc] {.noSideEffect,
    importcpp: "EndArc", header: "MAT_BasicElt.hxx".}
proc Index*(this: MAT_BasicElt): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "MAT_BasicElt.hxx".}
proc GeomIndex*(this: MAT_BasicElt): Standard_Integer {.noSideEffect,
    importcpp: "GeomIndex", header: "MAT_BasicElt.hxx".}
proc SetStartArc*(this: var MAT_BasicElt; anArc: handle[MAT_Arc]) {.
    importcpp: "SetStartArc", header: "MAT_BasicElt.hxx".}
proc SetEndArc*(this: var MAT_BasicElt; anArc: handle[MAT_Arc]) {.
    importcpp: "SetEndArc", header: "MAT_BasicElt.hxx".}
proc SetIndex*(this: var MAT_BasicElt; anInteger: Standard_Integer) {.
    importcpp: "SetIndex", header: "MAT_BasicElt.hxx".}
proc SetGeomIndex*(this: var MAT_BasicElt; anInteger: Standard_Integer) {.
    importcpp: "SetGeomIndex", header: "MAT_BasicElt.hxx".}
type
  MAT_BasicEltbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_BasicElt::get_type_name(@)",
                              header: "MAT_BasicElt.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_BasicElt::get_type_descriptor(@)", header: "MAT_BasicElt.hxx".}
proc DynamicType*(this: MAT_BasicElt): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_BasicElt.hxx".}
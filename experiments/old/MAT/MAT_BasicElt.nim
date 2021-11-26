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

discard "forward decl of MAT_Arc"
discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_BasicElt"
type
  HandleC1C1* = Handle[MAT_BasicElt]

## ! A    BasicELt  is  associated   to  each  elemtary
## ! constituant of  the figure.

type
  MAT_BasicElt* {.importcpp: "MAT_BasicElt", header: "MAT_BasicElt.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Constructor,
                                                                                                      ## <anInteger>
                                                                                                      ## is
                                                                                                      ## the
                                                                                                      ## <index>
                                                                                                      ## of
                                                                                                      ## <me>.


proc constructMAT_BasicElt*(anInteger: cint): MAT_BasicElt {.constructor,
    importcpp: "MAT_BasicElt(@)", header: "MAT_BasicElt.hxx".}
proc startArc*(this: MAT_BasicElt): Handle[MAT_Arc] {.noSideEffect,
    importcpp: "StartArc", header: "MAT_BasicElt.hxx".}
proc endArc*(this: MAT_BasicElt): Handle[MAT_Arc] {.noSideEffect,
    importcpp: "EndArc", header: "MAT_BasicElt.hxx".}
proc index*(this: MAT_BasicElt): cint {.noSideEffect, importcpp: "Index",
                                    header: "MAT_BasicElt.hxx".}
proc geomIndex*(this: MAT_BasicElt): cint {.noSideEffect, importcpp: "GeomIndex",
                                        header: "MAT_BasicElt.hxx".}
proc setStartArc*(this: var MAT_BasicElt; anArc: Handle[MAT_Arc]) {.
    importcpp: "SetStartArc", header: "MAT_BasicElt.hxx".}
proc setEndArc*(this: var MAT_BasicElt; anArc: Handle[MAT_Arc]) {.
    importcpp: "SetEndArc", header: "MAT_BasicElt.hxx".}
proc setIndex*(this: var MAT_BasicElt; anInteger: cint) {.importcpp: "SetIndex",
    header: "MAT_BasicElt.hxx".}
proc setGeomIndex*(this: var MAT_BasicElt; anInteger: cint) {.
    importcpp: "SetGeomIndex", header: "MAT_BasicElt.hxx".}
type
  MAT_BasicEltbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_BasicElt::get_type_name(@)",
                            header: "MAT_BasicElt.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_BasicElt::get_type_descriptor(@)", header: "MAT_BasicElt.hxx".}
proc dynamicType*(this: MAT_BasicElt): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_BasicElt.hxx".}


























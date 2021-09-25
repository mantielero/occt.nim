##  Created on: 1990-12-19
##  Created by: Christophe MARION
##  Copyright (c) 1990-1999 Matra Datavision
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Trsf"
discard "forward decl of TopLoc_Datum3D"
type
  TopLocLocation* {.importcpp: "TopLoc_Location", header: "TopLoc_Location.hxx",
                   bycopy.} = object ## ! Constructs an empty local coordinate system object.
                                  ## ! Note: A Location constructed from a default datum is said to be "empty".


proc constructTopLocLocation*(): TopLocLocation {.constructor,
    importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc constructTopLocLocation*(t: Trsf): TopLocLocation {.constructor,
    importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc constructTopLocLocation*(d: Handle[TopLocDatum3D]): TopLocLocation {.
    constructor, importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc isIdentity*(this: TopLocLocation): bool {.noSideEffect, importcpp: "IsIdentity",
    header: "TopLoc_Location.hxx".}
proc identity*(this: var TopLocLocation) {.importcpp: "Identity",
                                       header: "TopLoc_Location.hxx".}
proc firstDatum*(this: TopLocLocation): Handle[TopLocDatum3D] {.noSideEffect,
    importcpp: "FirstDatum", header: "TopLoc_Location.hxx".}
proc firstPower*(this: TopLocLocation): int {.noSideEffect, importcpp: "FirstPower",
    header: "TopLoc_Location.hxx".}
proc nextLocation*(this: TopLocLocation): TopLocLocation {.noSideEffect,
    importcpp: "NextLocation", header: "TopLoc_Location.hxx".}
proc transformation*(this: TopLocLocation): Trsf {.noSideEffect,
    importcpp: "Transformation", header: "TopLoc_Location.hxx".}
converter `trsf`*(this: TopLocLocation): Trsf {.noSideEffect,
    importcpp: "TopLoc_Location::operator gp_Trsf", header: "TopLoc_Location.hxx".}
proc inverted*(this: TopLocLocation): TopLocLocation {.noSideEffect,
    importcpp: "Inverted", header: "TopLoc_Location.hxx".}
proc multiplied*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, importcpp: "Multiplied", header: "TopLoc_Location.hxx".}
proc `*`*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.noSideEffect,
    importcpp: "(# * #)", header: "TopLoc_Location.hxx".}
proc divided*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, importcpp: "Divided", header: "TopLoc_Location.hxx".}
proc `/`*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.noSideEffect,
    importcpp: "(# / #)", header: "TopLoc_Location.hxx".}
proc predivided*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, importcpp: "Predivided", header: "TopLoc_Location.hxx".}
proc powered*(this: TopLocLocation; pwr: int): TopLocLocation {.noSideEffect,
    importcpp: "Powered", header: "TopLoc_Location.hxx".}
proc hashCode*(this: TopLocLocation; theUpperBound: int): int {.noSideEffect,
    importcpp: "HashCode", header: "TopLoc_Location.hxx".}
proc isEqual*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsEqual", header: "TopLoc_Location.hxx".}
proc `==`*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect,
    importcpp: "(# == #)", header: "TopLoc_Location.hxx".}
proc isDifferent*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect,
    importcpp: "IsDifferent", header: "TopLoc_Location.hxx".}
proc dumpJson*(this: TopLocLocation; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopLoc_Location.hxx".}
proc shallowDump*(this: TopLocLocation; s: var StandardOStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "TopLoc_Location.hxx".}
## ! Computes a hash code for the given location, in the range [1, theUpperBound]
## ! @param theLocation the location which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theLocation: TopLocLocation; theUpperBound: int): int =
  discard

proc shallowDump*(me: TopLocLocation; s: var StandardOStream) =
  discard


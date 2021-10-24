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


proc newTopLocLocation*(): TopLocLocation {.cdecl, constructor,
    importcpp: "TopLoc_Location(@)", dynlib: tkmath.}
proc newTopLocLocation*(t: Trsf): TopLocLocation {.cdecl, constructor,
    importcpp: "TopLoc_Location(@)", dynlib: tkmath.}
proc newTopLocLocation*(d: Handle[TopLocDatum3D]): TopLocLocation {.cdecl,
    constructor, importcpp: "TopLoc_Location(@)", dynlib: tkmath.}
proc isIdentity*(this: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsIdentity", dynlib: tkmath.}
proc identity*(this: var TopLocLocation) {.cdecl, importcpp: "Identity", dynlib: tkmath.}
proc firstDatum*(this: TopLocLocation): Handle[TopLocDatum3D] {.noSideEffect, cdecl,
    importcpp: "FirstDatum", dynlib: tkmath.}
proc firstPower*(this: TopLocLocation): cint {.noSideEffect, cdecl,
    importcpp: "FirstPower", dynlib: tkmath.}
proc nextLocation*(this: TopLocLocation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "NextLocation", dynlib: tkmath.}
proc transformation*(this: TopLocLocation): Trsf {.noSideEffect, cdecl,
    importcpp: "Transformation", dynlib: tkmath.}
converter `trsf`*(this: TopLocLocation): Trsf {.noSideEffect, cdecl,
    importcpp: "TopLoc_Location::operator gp_Trsf", dynlib: tkmath.}
proc inverted*(this: TopLocLocation): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Inverted", dynlib: tkmath.}
proc multiplied*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, cdecl, importcpp: "Multiplied", dynlib: tkmath.}
proc `*`*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.noSideEffect,
    cdecl, importcpp: "(# * #)", dynlib: tkmath.}
proc divided*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, cdecl, importcpp: "Divided", dynlib: tkmath.}
proc `/`*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.noSideEffect,
    cdecl, importcpp: "(# / #)", dynlib: tkmath.}
proc predivided*(this: TopLocLocation; other: TopLocLocation): TopLocLocation {.
    noSideEffect, cdecl, importcpp: "Predivided", dynlib: tkmath.}
proc powered*(this: TopLocLocation; pwr: cint): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Powered", dynlib: tkmath.}
proc hashCode*(this: TopLocLocation; theUpperBound: cint): cint {.noSideEffect, cdecl,
    importcpp: "HashCode", dynlib: tkmath.}
proc isEqual*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkmath.}
proc `==`*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkmath.}
proc isDifferent*(this: TopLocLocation; other: TopLocLocation): bool {.noSideEffect,
    cdecl, importcpp: "IsDifferent", dynlib: tkmath.}
proc dumpJson*(this: TopLocLocation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}
proc shallowDump*(this: TopLocLocation; s: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "ShallowDump", dynlib: tkmath.}
## ! Computes a hash code for the given location, in the range [1, theUpperBound]
## ! @param theLocation the location which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theLocation: TopLocLocation; theUpperBound: cint): cint {.cdecl.} =
  discard

proc shallowDump*(me: TopLocLocation; s: var StandardOStream) {.cdecl.} =
  discard

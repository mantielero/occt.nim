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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopLoc_SListOfItemLocation,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_OStream

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Trsf"
discard "forward decl of TopLoc_Datum3D"
type
  TopLoc_Location* {.importcpp: "TopLoc_Location", header: "TopLoc_Location.hxx",
                    bycopy.} = object ## ! Constructs an empty local coordinate system object.
                                   ## ! Note: A Location constructed from a default datum is said to be "empty".
    TopLoc_Location* {.importc: "TopLoc_Location".}: Standard_NODISCARD
    TopLoc_Location* {.importc: "TopLoc_Location".}: Standard_NODISCARD
    TopLoc_Location* {.importc: "TopLoc_Location".}: Standard_NODISCARD
    TopLoc_Location* {.importc: "TopLoc_Location".}: Standard_NODISCARD
    TopLoc_Location* {.importc: "TopLoc_Location".}: Standard_NODISCARD


proc constructTopLoc_Location*(): TopLoc_Location {.constructor,
    importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc constructTopLoc_Location*(T: gp_Trsf): TopLoc_Location {.constructor,
    importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc constructTopLoc_Location*(D: handle[TopLoc_Datum3D]): TopLoc_Location {.
    constructor, importcpp: "TopLoc_Location(@)", header: "TopLoc_Location.hxx".}
proc IsIdentity*(this: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsIdentity", header: "TopLoc_Location.hxx".}
proc Identity*(this: var TopLoc_Location) {.importcpp: "Identity",
                                        header: "TopLoc_Location.hxx".}
proc FirstDatum*(this: TopLoc_Location): handle[TopLoc_Datum3D] {.noSideEffect,
    importcpp: "FirstDatum", header: "TopLoc_Location.hxx".}
proc FirstPower*(this: TopLoc_Location): Standard_Integer {.noSideEffect,
    importcpp: "FirstPower", header: "TopLoc_Location.hxx".}
proc NextLocation*(this: TopLoc_Location): TopLoc_Location {.noSideEffect,
    importcpp: "NextLocation", header: "TopLoc_Location.hxx".}
proc Transformation*(this: TopLoc_Location): gp_Trsf {.noSideEffect,
    importcpp: "Transformation", header: "TopLoc_Location.hxx".}
converter `gp_Trsf`*(this: TopLoc_Location): gp_Trsf {.noSideEffect,
    importcpp: "TopLoc_Location::operator gp_Trsf", header: "TopLoc_Location.hxx".}
## !!!Ignored construct:  Inverted ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  Multiplied ( const TopLoc_Location & Other ) const ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  operator * ( const TopLoc_Location & Other ) const { return Multiplied ( Other ) ; } ! Returns  <me> / <Other>. Standard_NODISCARD TopLoc_Location Divided ( const TopLoc_Location & Other ) const ;
## Error: identifier expected, but got: *!!!

## !!!Ignored construct:  operator / ( const TopLoc_Location & Other ) const { return Divided ( Other ) ; } ! Returns <Other>.Inverted() * <me>. Standard_NODISCARD TopLoc_Location Predivided ( const TopLoc_Location & Other ) const ;
## Error: identifier expected, but got: /!!!

## !!!Ignored construct:  Powered ( const Standard_Integer pwr ) const ;
## Error: token expected: ) but got: [identifier]!!!

proc HashCode*(this: TopLoc_Location; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "TopLoc_Location.hxx".}
proc IsEqual*(this: TopLoc_Location; Other: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TopLoc_Location.hxx".}
proc `==`*(this: TopLoc_Location; Other: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TopLoc_Location.hxx".}
proc IsDifferent*(this: TopLoc_Location; Other: TopLoc_Location): Standard_Boolean {.
    noSideEffect, importcpp: "IsDifferent", header: "TopLoc_Location.hxx".}
proc DumpJson*(this: TopLoc_Location; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopLoc_Location.hxx".}
proc ShallowDump*(this: TopLoc_Location; S: var Standard_OStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "TopLoc_Location.hxx".}
## ! Computes a hash code for the given location, in the range [1, theUpperBound]
## ! @param theLocation the location which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theLocation: TopLoc_Location; theUpperBound: Standard_Integer): Standard_Integer =
  discard

proc ShallowDump*(me: TopLoc_Location; S: var Standard_OStream) =
  discard

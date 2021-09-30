##  Created on: 1992-01-24
##  Created by: Remi LEQUETTE
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

## ! This package gives resources for Topology oriented
## ! applications such as : Topological Data Structure,
## ! Topological Algorithms.
## !
## ! It contains :
## !
## ! * The ShapeEnum   enumeration  to  describe  the
## ! differents topological shapes.
## !
## ! * The  Orientation  enumeration to  describe the
## ! orientation of a topological shape.
## !
## ! * The  State    enumeration  to  describes  the
## ! position of a point relative to a Shape.
## !
## ! * Methods to manage the enumerations.

type
  TopAbs* {.importcpp: "TopAbs", header: "TopAbs.hxx", bycopy.} = object


proc `new`*(this: var TopAbs; theSize: csize_t): pointer {.
    importcpp: "TopAbs::operator new", header: "TopAbs.hxx".}
proc `delete`*(this: var TopAbs; theAddress: pointer) {.
    importcpp: "TopAbs::operator delete", header: "TopAbs.hxx".}
proc `new[]`*(this: var TopAbs; theSize: csize_t): pointer {.
    importcpp: "TopAbs::operator new[]", header: "TopAbs.hxx".}
proc `delete[]`*(this: var TopAbs; theAddress: pointer) {.
    importcpp: "TopAbs::operator delete[]", header: "TopAbs.hxx".}
proc `new`*(this: var TopAbs; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopAbs::operator new", header: "TopAbs.hxx".}
proc `delete`*(this: var TopAbs; a2: pointer; a3: pointer) {.
    importcpp: "TopAbs::operator delete", header: "TopAbs.hxx".}
proc compose*(or1: TopAbsOrientation; or2: TopAbsOrientation): TopAbsOrientation {.
    importcpp: "TopAbs::Compose(@)", header: "TopAbs.hxx".}
proc reverse*(`or`: TopAbsOrientation): TopAbsOrientation {.
    importcpp: "TopAbs::Reverse(@)", header: "TopAbs.hxx".}
proc complement*(`or`: TopAbsOrientation): TopAbsOrientation {.
    importcpp: "TopAbs::Complement(@)", header: "TopAbs.hxx".}
proc print*(theShapeType: TopAbsShapeEnum; theStream: var StandardOStream): var StandardOStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc print*(theOrientation: TopAbsOrientation; theStream: var StandardOStream): var StandardOStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc print*(st: TopAbsState; s: var StandardOStream): var StandardOStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc shapeTypeToString*(theType: TopAbsShapeEnum): StandardCString {.
    importcpp: "TopAbs::ShapeTypeToString(@)", header: "TopAbs.hxx".}
proc shapeTypeFromString*(theTypeString: StandardCString): TopAbsShapeEnum {.
    importcpp: "TopAbs::ShapeTypeFromString(@)", header: "TopAbs.hxx".}
proc shapeTypeFromString*(theTypeString: StandardCString;
                         theType: var TopAbsShapeEnum): StandardBoolean {.
    importcpp: "TopAbs::ShapeTypeFromString(@)", header: "TopAbs.hxx".}
proc shapeOrientationToString*(theOrientation: TopAbsOrientation): StandardCString {.
    importcpp: "TopAbs::ShapeOrientationToString(@)", header: "TopAbs.hxx".}
proc shapeOrientationFromString*(theOrientationString: StandardCString): TopAbsOrientation {.
    importcpp: "TopAbs::ShapeOrientationFromString(@)", header: "TopAbs.hxx".}
proc shapeOrientationFromString*(theOrientationString: StandardCString;
                                theOrientation: var TopAbsOrientation): StandardBoolean {.
    importcpp: "TopAbs::ShapeOrientationFromString(@)", header: "TopAbs.hxx".}
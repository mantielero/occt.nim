##  Created on: 1990-12-11
##  Created by: Remi Lequette
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

##  resolve name collisions with X11 headers

when defined(Convex):
  discard
## ! Describes a shape which
## ! - references an underlying shape with the potential
## ! to be given a location and an orientation
## ! - has a location for the underlying shape, giving its
## ! placement in the local coordinate system
## ! - has an orientation for the underlying shape, in
## ! terms of its geometry (as opposed to orientation in
## ! relation to other shapes).
## ! Note: A Shape is empty if it references an underlying
## ! shape which has an empty list of shapes.

type
  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: "TopoDS_Shape.hxx", bycopy.} = object of RootObj


proc `new`*(this: var TopoDS_Shape; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shape::operator new", header: "TopoDS_Shape.hxx".}
proc `delete`*(this: var TopoDS_Shape; theAddress: pointer) {.
    importcpp: "TopoDS_Shape::operator delete", header: "TopoDS_Shape.hxx".}
proc `new[]`*(this: var TopoDS_Shape; theSize: csize_t): pointer {.
    importcpp: "TopoDS_Shape::operator new[]", header: "TopoDS_Shape.hxx".}
proc `delete[]`*(this: var TopoDS_Shape; theAddress: pointer) {.
    importcpp: "TopoDS_Shape::operator delete[]", header: "TopoDS_Shape.hxx".}
proc `new`*(this: var TopoDS_Shape; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopoDS_Shape::operator new", header: "TopoDS_Shape.hxx".}
proc `delete`*(this: var TopoDS_Shape; a2: pointer; a3: pointer) {.
    importcpp: "TopoDS_Shape::operator delete", header: "TopoDS_Shape.hxx".}
proc constructTopoDS_Shape*(): TopoDS_Shape {.constructor,
    importcpp: "TopoDS_Shape(@)", header: "TopoDS_Shape.hxx".}
proc isNull*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "IsNull", header: "TopoDS_Shape.hxx".}
proc nullify*(this: var TopoDS_Shape) {.importcpp: "Nullify",
                                    header: "TopoDS_Shape.hxx".}
#[ proc location*(this: TopoDS_Shape): TopLocLocation {.noSideEffect,
    importcpp: "Location", header: "TopoDS_Shape.hxx".} ]#
#[ proc location*(this: var TopoDS_Shape; theLoc: TopLocLocation) {.
    importcpp: "Location", header: "TopoDS_Shape.hxx".} ]#
#[ proc located*(this: TopoDS_Shape; theLoc: TopLocLocation): TopoDS_Shape {.
    noSideEffect, importcpp: "Located", header: "TopoDS_Shape.hxx".} ]#
#[ proc orientation*(this: TopoDS_Shape): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "TopoDS_Shape.hxx".} ]#
#[ proc orientation*(this: var TopoDS_Shape; theOrient: TopAbsOrientation) {.
    importcpp: "Orientation", header: "TopoDS_Shape.hxx".}
proc oriented*(this: TopoDS_Shape; theOrient: TopAbsOrientation): TopoDS_Shape {.
    noSideEffect, importcpp: "Oriented", header: "TopoDS_Shape.hxx".}
proc tShape*(this: TopoDS_Shape): Handle[TopoDS_TShape] {.noSideEffect,
    importcpp: "TShape", header: "TopoDS_Shape.hxx".}
proc shapeType*(this: TopoDS_Shape): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TopoDS_Shape.hxx".}
proc free*(this: TopoDS_Shape): StandardBoolean {.noSideEffect, importcpp: "Free",
    header: "TopoDS_Shape.hxx".}
proc free*(this: var TopoDS_Shape; theIsFree: StandardBoolean) {.importcpp: "Free",
    header: "TopoDS_Shape.hxx".}
proc locked*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Locked", header: "TopoDS_Shape.hxx".}
proc locked*(this: var TopoDS_Shape; theIsLocked: StandardBoolean) {.
    importcpp: "Locked", header: "TopoDS_Shape.hxx".}
proc modified*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Modified", header: "TopoDS_Shape.hxx".}
proc modified*(this: var TopoDS_Shape; theIsModified: StandardBoolean) {.
    importcpp: "Modified", header: "TopoDS_Shape.hxx".}
proc checked*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Checked", header: "TopoDS_Shape.hxx".}
proc checked*(this: var TopoDS_Shape; theIsChecked: StandardBoolean) {.
    importcpp: "Checked", header: "TopoDS_Shape.hxx".}
proc orientable*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Orientable", header: "TopoDS_Shape.hxx".}
proc orientable*(this: var TopoDS_Shape; theIsOrientable: StandardBoolean) {.
    importcpp: "Orientable", header: "TopoDS_Shape.hxx".}
proc closed*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: "TopoDS_Shape.hxx".}
proc closed*(this: var TopoDS_Shape; theIsClosed: StandardBoolean) {.
    importcpp: "Closed", header: "TopoDS_Shape.hxx".}
proc infinite*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Infinite", header: "TopoDS_Shape.hxx".}
proc infinite*(this: var TopoDS_Shape; theIsInfinite: StandardBoolean) {.
    importcpp: "Infinite", header: "TopoDS_Shape.hxx".}
proc convex*(this: TopoDS_Shape): StandardBoolean {.noSideEffect,
    importcpp: "Convex", header: "TopoDS_Shape.hxx".}
proc convex*(this: var TopoDS_Shape; theIsConvex: StandardBoolean) {.
    importcpp: "Convex", header: "TopoDS_Shape.hxx".}
proc move*(this: var TopoDS_Shape; thePosition: TopLocLocation) {.importcpp: "Move",
    header: "TopoDS_Shape.hxx".}
proc moved*(this: TopoDS_Shape; thePosition: TopLocLocation): TopoDS_Shape {.
    noSideEffect, importcpp: "Moved", header: "TopoDS_Shape.hxx".}
proc reverse*(this: var TopoDS_Shape) {.importcpp: "Reverse",
                                    header: "TopoDS_Shape.hxx".}
proc reversed*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Reversed", header: "TopoDS_Shape.hxx".}
proc complement*(this: var TopoDS_Shape) {.importcpp: "Complement",
                                       header: "TopoDS_Shape.hxx".}
proc complemented*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "Complemented", header: "TopoDS_Shape.hxx".}
proc compose*(this: var TopoDS_Shape; theOrient: TopAbsOrientation) {.
    importcpp: "Compose", header: "TopoDS_Shape.hxx".}
proc composed*(this: TopoDS_Shape; theOrient: TopAbsOrientation): TopoDS_Shape {.
    noSideEffect, importcpp: "Composed", header: "TopoDS_Shape.hxx".}
proc nbChildren*(this: TopoDS_Shape): int {.noSideEffect, importcpp: "NbChildren",
                                        header: "TopoDS_Shape.hxx".}
proc isPartner*(this: TopoDS_Shape; theOther: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsPartner", header: "TopoDS_Shape.hxx".}
proc isSame*(this: TopoDS_Shape; theOther: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsSame", header: "TopoDS_Shape.hxx".}
proc isEqual*(this: TopoDS_Shape; theOther: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "TopoDS_Shape.hxx".}
proc `==`*(this: TopoDS_Shape; theOther: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "TopoDS_Shape.hxx".}
proc isNotEqual*(this: TopoDS_Shape; theOther: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsNotEqual", header: "TopoDS_Shape.hxx".}
proc hashCode*(this: TopoDS_Shape; theUpperBound: int): int {.noSideEffect,
    importcpp: "HashCode", header: "TopoDS_Shape.hxx".}
proc emptyCopy*(this: var TopoDS_Shape) {.importcpp: "EmptyCopy",
                                      header: "TopoDS_Shape.hxx".}
proc emptyCopied*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect,
    importcpp: "EmptyCopied", header: "TopoDS_Shape.hxx".}
proc tShape*(this: var TopoDS_Shape; theTShape: Handle[TopoDS_TShape]) {.
    importcpp: "TShape", header: "TopoDS_Shape.hxx".}
proc dumpJson*(this: TopoDS_Shape; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopoDS_Shape.hxx".}
## ! Computes a hash code for the given shape, in the range [1, theUpperBound]
## ! @param theShape the shape which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theShape: TopoDS_Shape; theUpperBound: int): int =
  discard
 ]#
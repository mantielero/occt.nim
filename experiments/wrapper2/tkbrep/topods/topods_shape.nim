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
  TopoDS_Shape* {.importcpp: "TopoDS_Shape", header: "TopoDS_Shape.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## a
                                                                                   ## NULL
                                                                                   ## Shape
                                                                                   ## referring
                                                                                   ## to
                                                                                   ## nothing.


proc newTopoDS_Shape*(): TopoDS_Shape {.cdecl, constructor,
                                     importcpp: "TopoDS_Shape(@)", dynlib: tkernel.}
proc isNull*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "IsNull",
                                     dynlib: tkernel.}
proc nullify*(this: var TopoDS_Shape) {.cdecl, importcpp: "Nullify", dynlib: tkernel.}
proc location*(this: TopoDS_Shape): TopLocLocation {.noSideEffect, cdecl,
    importcpp: "Location", dynlib: tkernel.}
proc location*(this: var TopoDS_Shape; theLoc: TopLocLocation) {.cdecl,
    importcpp: "Location", dynlib: tkernel.}
proc located*(this: TopoDS_Shape; theLoc: TopLocLocation): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Located", dynlib: tkernel.}
proc orientation*(this: TopoDS_Shape): TopAbsOrientation {.noSideEffect, cdecl,
    importcpp: "Orientation", dynlib: tkernel.}
proc orientation*(this: var TopoDS_Shape; theOrient: TopAbsOrientation) {.cdecl,
    importcpp: "Orientation", dynlib: tkernel.}
proc oriented*(this: TopoDS_Shape; theOrient: TopAbsOrientation): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Oriented", dynlib: tkernel.}
proc tShape*(this: TopoDS_Shape): Handle[TopoDS_TShape] {.noSideEffect, cdecl,
    importcpp: "TShape", dynlib: tkernel.}
proc shapeType*(this: TopoDS_Shape): TopAbsShapeEnum {.noSideEffect, cdecl,
    importcpp: "ShapeType", dynlib: tkernel.}
proc free*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Free",
                                   dynlib: tkernel.}
proc free*(this: var TopoDS_Shape; theIsFree: bool) {.cdecl, importcpp: "Free",
    dynlib: tkernel.}
proc locked*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Locked",
                                     dynlib: tkernel.}
proc locked*(this: var TopoDS_Shape; theIsLocked: bool) {.cdecl, importcpp: "Locked",
    dynlib: tkernel.}
proc modified*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Modified",
                                       dynlib: tkernel.}
proc modified*(this: var TopoDS_Shape; theIsModified: bool) {.cdecl,
    importcpp: "Modified", dynlib: tkernel.}
proc checked*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Checked",
                                      dynlib: tkernel.}
proc checked*(this: var TopoDS_Shape; theIsChecked: bool) {.cdecl,
    importcpp: "Checked", dynlib: tkernel.}
proc orientable*(this: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "Orientable", dynlib: tkernel.}
proc orientable*(this: var TopoDS_Shape; theIsOrientable: bool) {.cdecl,
    importcpp: "Orientable", dynlib: tkernel.}
proc closed*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Closed",
                                     dynlib: tkernel.}
proc closed*(this: var TopoDS_Shape; theIsClosed: bool) {.cdecl, importcpp: "Closed",
    dynlib: tkernel.}
proc infinite*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Infinite",
                                       dynlib: tkernel.}
proc infinite*(this: var TopoDS_Shape; theIsInfinite: bool) {.cdecl,
    importcpp: "Infinite", dynlib: tkernel.}
proc convex*(this: TopoDS_Shape): bool {.noSideEffect, cdecl, importcpp: "Convex",
                                     dynlib: tkernel.}
proc convex*(this: var TopoDS_Shape; theIsConvex: bool) {.cdecl, importcpp: "Convex",
    dynlib: tkernel.}
proc move*(this: var TopoDS_Shape; thePosition: TopLocLocation) {.cdecl,
    importcpp: "Move", dynlib: tkernel.}
proc moved*(this: TopoDS_Shape; thePosition: TopLocLocation): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Moved", dynlib: tkernel.}
proc reverse*(this: var TopoDS_Shape) {.cdecl, importcpp: "Reverse", dynlib: tkernel.}
proc reversed*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Reversed", dynlib: tkernel.}
proc complement*(this: var TopoDS_Shape) {.cdecl, importcpp: "Complement",
                                       dynlib: tkernel.}
proc complemented*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Complemented", dynlib: tkernel.}
proc compose*(this: var TopoDS_Shape; theOrient: TopAbsOrientation) {.cdecl,
    importcpp: "Compose", dynlib: tkernel.}
proc composed*(this: TopoDS_Shape; theOrient: TopAbsOrientation): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Composed", dynlib: tkernel.}
proc nbChildren*(this: TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "NbChildren", dynlib: tkernel.}
proc isPartner*(this: TopoDS_Shape; theOther: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "IsPartner", dynlib: tkernel.}
proc isSame*(this: TopoDS_Shape; theOther: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "IsSame", dynlib: tkernel.}
proc isEqual*(this: TopoDS_Shape; theOther: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*(this: TopoDS_Shape; theOther: TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "(# == #)", dynlib: tkernel.}
proc isNotEqual*(this: TopoDS_Shape; theOther: TopoDS_Shape): bool {.noSideEffect,
    cdecl, importcpp: "IsNotEqual", dynlib: tkernel.}
proc hashCode*(this: TopoDS_Shape; theUpperBound: cint): cint {.noSideEffect, cdecl,
    importcpp: "HashCode", dynlib: tkernel.}
proc emptyCopy*(this: var TopoDS_Shape) {.cdecl, importcpp: "EmptyCopy",
                                      dynlib: tkernel.}
proc emptyCopied*(this: TopoDS_Shape): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "EmptyCopied", dynlib: tkernel.}
proc tShape*(this: var TopoDS_Shape; theTShape: Handle[TopoDS_TShape]) {.cdecl,
    importcpp: "TShape", dynlib: tkernel.}
proc dumpJson*(this: TopoDS_Shape; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
## ! Computes a hash code for the given shape, in the range [1, theUpperBound]
## ! @param theShape the shape which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theShape: TopoDS_Shape; theUpperBound: cint): cint {.cdecl.} =
  discard

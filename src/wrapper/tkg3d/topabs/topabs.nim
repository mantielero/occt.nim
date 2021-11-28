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
  TopAbs* {.importcpp: "TopAbs", header: "TopAbs.hxx", bycopy.} = object ## ! Compose  the Orientation    <Or1>  and  <Or2>.    This
                                                                 ## ! composition is not symmetric (if  you switch <Or1> and
                                                                 ## ! <Or2> the result  is different). It assumes that <Or1>
                                                                 ## ! is the Orientation of a Shape S1 containing a Shape S2
                                                                 ## ! of Orientation   Or2.  The result    is the  cumulated
                                                                 ## ! orientation of S2 in S1.  The composition law is :
                                                                 ## !
                                                                 ## ! \ Or2     FORWARD  REVERSED INTERNAL EXTERNAL
                                                                 ## ! Or1
                                                                 ## -------------------------------------
                                                                 ## ! FORWARD   | FORWARD  REVERSED INTERNAL EXTERNAL
                                                                 ## ! |
                                                                 ## ! REVERSED  | REVERSED FORWARD  INTERNAL EXTERNAL
                                                                 ## ! |
                                                                 ## ! INTERNAL  | INTERNAL INTERNAL INTERNAL INTERNAL
                                                                 ## ! |
                                                                 ## ! EXTERNAL  | EXTERNAL EXTERNAL EXTERNAL EXTERNAL
                                                                 ## ! Note: The top corner in the table is the most important
                                                                 ## ! for the purposes of Open CASCADE topology and shape sharing.


proc compose*(or1: TopAbsOrientation; or2: TopAbsOrientation): TopAbsOrientation {.
    cdecl, importcpp: "TopAbs::Compose(@)", dynlib: tkg3d.}
proc reverse*(`or`: TopAbsOrientation): TopAbsOrientation {.cdecl,
    importcpp: "TopAbs::Reverse(@)", dynlib: tkg3d.}
proc complement*(`or`: TopAbsOrientation): TopAbsOrientation {.cdecl,
    importcpp: "TopAbs::Complement(@)", dynlib: tkg3d.}
proc print*(theShapeType: TopAbsShapeEnum; theStream: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopAbs::Print(@)", dynlib: tkg3d.}
proc print*(theOrientation: TopAbsOrientation; theStream: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopAbs::Print(@)", dynlib: tkg3d.}
proc print*(st: TopAbsState; s: var StandardOStream): var StandardOStream {.cdecl,
    importcpp: "TopAbs::Print(@)", dynlib: tkg3d.}
proc shapeTypeToString*(theType: TopAbsShapeEnum): cstring {.cdecl,
    importcpp: "TopAbs::ShapeTypeToString(@)", dynlib: tkg3d.}
proc shapeTypeFromString*(theTypeString: cstring): TopAbsShapeEnum {.cdecl,
    importcpp: "TopAbs::ShapeTypeFromString(@)", dynlib: tkg3d.}
proc shapeTypeFromString*(theTypeString: cstring; theType: var TopAbsShapeEnum): bool {.
    cdecl, importcpp: "TopAbs::ShapeTypeFromString(@)", dynlib: tkg3d.}
proc shapeOrientationToString*(theOrientation: TopAbsOrientation): cstring {.cdecl,
    importcpp: "TopAbs::ShapeOrientationToString(@)", dynlib: tkg3d.}
proc shapeOrientationFromString*(theOrientationString: cstring): TopAbsOrientation {.
    cdecl, importcpp: "TopAbs::ShapeOrientationFromString(@)", dynlib: tkg3d.}
proc shapeOrientationFromString*(theOrientationString: cstring;
                                theOrientation: var TopAbsOrientation): bool {.
    cdecl, importcpp: "TopAbs::ShapeOrientationFromString(@)", dynlib: tkg3d.}
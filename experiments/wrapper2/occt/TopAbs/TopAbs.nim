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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, TopAbs_Orientation, ../Standard/Standard_OStream,
  TopAbs_ShapeEnum, TopAbs_State

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


proc Compose*(Or1: TopAbs_Orientation; Or2: TopAbs_Orientation): TopAbs_Orientation {.
    importcpp: "TopAbs::Compose(@)", header: "TopAbs.hxx".}
proc Reverse*(Or: TopAbs_Orientation): TopAbs_Orientation {.
    importcpp: "TopAbs::Reverse(@)", header: "TopAbs.hxx".}
proc Complement*(Or: TopAbs_Orientation): TopAbs_Orientation {.
    importcpp: "TopAbs::Complement(@)", header: "TopAbs.hxx".}
proc Print*(theShapeType: TopAbs_ShapeEnum; theStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc Print*(theOrientation: TopAbs_Orientation; theStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc Print*(St: TopAbs_State; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopAbs::Print(@)", header: "TopAbs.hxx".}
proc ShapeTypeToString*(theType: TopAbs_ShapeEnum): Standard_CString {.
    importcpp: "TopAbs::ShapeTypeToString(@)", header: "TopAbs.hxx".}
proc ShapeTypeFromString*(theTypeString: Standard_CString): TopAbs_ShapeEnum {.
    importcpp: "TopAbs::ShapeTypeFromString(@)", header: "TopAbs.hxx".}
proc ShapeTypeFromString*(theTypeString: Standard_CString;
                         theType: var TopAbs_ShapeEnum): Standard_Boolean {.
    importcpp: "TopAbs::ShapeTypeFromString(@)", header: "TopAbs.hxx".}
proc ShapeOrientationToString*(theOrientation: TopAbs_Orientation): Standard_CString {.
    importcpp: "TopAbs::ShapeOrientationToString(@)", header: "TopAbs.hxx".}
proc ShapeOrientationFromString*(theOrientationString: Standard_CString): TopAbs_Orientation {.
    importcpp: "TopAbs::ShapeOrientationFromString(@)", header: "TopAbs.hxx".}
proc ShapeOrientationFromString*(theOrientationString: Standard_CString;
                                theOrientation: var TopAbs_Orientation): Standard_Boolean {.
    importcpp: "TopAbs::ShapeOrientationFromString(@)", header: "TopAbs.hxx".}
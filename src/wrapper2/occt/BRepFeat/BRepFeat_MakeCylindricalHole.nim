##  Created on: 1995-06-13
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Ax1, BRepFeat_Status,
  ../TopoDS/TopoDS_Face, BRepFeat_Builder

##  resolve name collisions with X11 headers

when defined(Status):
  discard
## ! Provides a tool to make cylindrical holes on a shape.

type
  BRepFeat_MakeCylindricalHole* {.importcpp: "BRepFeat_MakeCylindricalHole",
                                 header: "BRepFeat_MakeCylindricalHole.hxx",
                                 bycopy.} = object of BRepFeat_Builder ## ! Empty constructor.
                                                                  ## ! Unhide the base class member to avoid Clang warnings


proc constructBRepFeat_MakeCylindricalHole*(): BRepFeat_MakeCylindricalHole {.
    constructor, importcpp: "BRepFeat_MakeCylindricalHole(@)",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Init*(this: var BRepFeat_MakeCylindricalHole; Axis: gp_Ax1) {.importcpp: "Init",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Init*(this: var BRepFeat_MakeCylindricalHole; S: TopoDS_Shape; Axis: gp_Ax1) {.
    importcpp: "Init", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Perform*(this: var BRepFeat_MakeCylindricalHole; Radius: Standard_Real) {.
    importcpp: "Perform", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Perform*(this: var BRepFeat_MakeCylindricalHole; Radius: Standard_Real;
             PFrom: Standard_Real; PTo: Standard_Real;
             WithControl: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
proc PerformThruNext*(this: var BRepFeat_MakeCylindricalHole; Radius: Standard_Real;
                     WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "PerformThruNext", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc PerformUntilEnd*(this: var BRepFeat_MakeCylindricalHole; Radius: Standard_Real;
                     WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "PerformUntilEnd", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc PerformBlind*(this: var BRepFeat_MakeCylindricalHole; Radius: Standard_Real;
                  Length: Standard_Real;
                  WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "PerformBlind", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Status*(this: BRepFeat_MakeCylindricalHole): BRepFeat_Status {.noSideEffect,
    importcpp: "Status", header: "BRepFeat_MakeCylindricalHole.hxx".}
proc Build*(this: var BRepFeat_MakeCylindricalHole) {.importcpp: "Build",
    header: "BRepFeat_MakeCylindricalHole.hxx".}
## using statement

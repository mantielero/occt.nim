##  Created on: 1993-10-12
##  Created by: Remi LEQUETTE
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepSweep/BRepSweep_Revol,
  ../TopTools/TopTools_ListOfShape, BRepPrimAPI_MakeSweep,
  ../BRepTools/BRepTools_History, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Ax1"
discard "forward decl of BRepSweep_Revol"
type
  BRepPrimAPI_MakeRevol* {.importcpp: "BRepPrimAPI_MakeRevol",
                          header: "BRepPrimAPI_MakeRevol.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                   ## !
                                                                                                   ## Builds
                                                                                                   ## the
                                                                                                   ## Revol
                                                                                                   ## of
                                                                                                   ## base
                                                                                                   ## S,
                                                                                                   ## axis
                                                                                                   ## A
                                                                                                   ## and
                                                                                                   ## angle
                                                                                                   ## D.
                                                                                                   ## If
                                                                                                   ## C
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## is
                                                                                                   ## true,
                                                                                                   ## S
                                                                                                   ## is
                                                                                                   ## copied.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Checks
                                                                                                   ## possibilities
                                                                                                   ## of
                                                                                                   ## producing
                                                                                                   ## self-intersection
                                                                                                   ## surface
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## returns
                                                                                                   ## true
                                                                                                   ## if
                                                                                                   ## all
                                                                                                   ## surfaces
                                                                                                   ## are
                                                                                                   ## valid


proc constructBRepPrimAPI_MakeRevol*(S: TopoDS_Shape; A: gp_Ax1; D: Standard_Real;
                                    Copy: Standard_Boolean = Standard_False): BRepPrimAPI_MakeRevol {.
    constructor, importcpp: "BRepPrimAPI_MakeRevol(@)",
    header: "BRepPrimAPI_MakeRevol.hxx".}
proc constructBRepPrimAPI_MakeRevol*(S: TopoDS_Shape; A: gp_Ax1;
                                    Copy: Standard_Boolean = Standard_False): BRepPrimAPI_MakeRevol {.
    constructor, importcpp: "BRepPrimAPI_MakeRevol(@)",
    header: "BRepPrimAPI_MakeRevol.hxx".}
proc Revol*(this: BRepPrimAPI_MakeRevol): BRepSweep_Revol {.noSideEffect,
    importcpp: "Revol", header: "BRepPrimAPI_MakeRevol.hxx".}
proc Build*(this: var BRepPrimAPI_MakeRevol) {.importcpp: "Build",
    header: "BRepPrimAPI_MakeRevol.hxx".}
proc FirstShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc LastShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc Generated*(this: var BRepPrimAPI_MakeRevol; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepPrimAPI_MakeRevol.hxx".}
proc IsDeleted*(this: var BRepPrimAPI_MakeRevol; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepPrimAPI_MakeRevol.hxx".}
proc FirstShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc LastShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc HasDegenerated*(this: BRepPrimAPI_MakeRevol): Standard_Boolean {.noSideEffect,
    importcpp: "HasDegenerated", header: "BRepPrimAPI_MakeRevol.hxx".}
proc Degenerated*(this: BRepPrimAPI_MakeRevol): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Degenerated", header: "BRepPrimAPI_MakeRevol.hxx".}
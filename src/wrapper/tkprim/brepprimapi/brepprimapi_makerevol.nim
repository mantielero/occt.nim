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


proc revol*(s: TopoDS_Shape; a: Ax1Obj; d: cfloat; copy: bool = false): BRepPrimAPI_MakeRevol {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevol(@)", header: "BRepPrimAPI_MakeRevol.hxx".}
proc revol*(s: TopoDS_Shape; a: Ax1Obj; copy: bool = false): BRepPrimAPI_MakeRevol {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevol(@)", header: "BRepPrimAPI_MakeRevol.hxx".}
proc revol*(this: BRepPrimAPI_MakeRevol): BRepSweepRevol {.noSideEffect, cdecl,
    importcpp: "Revol", header: "BRepPrimAPI_MakeRevol.hxx".}
proc build*(this: var BRepPrimAPI_MakeRevol) {.cdecl, importcpp: "Build",
    header: "BRepPrimAPI_MakeRevol.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.cdecl,
    importcpp: "FirstShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakeRevol): TopoDS_Shape {.cdecl,
    importcpp: "LastShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc generated*(this: var BRepPrimAPI_MakeRevol; s: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", header: "BRepPrimAPI_MakeRevol.hxx".}
proc isDeleted*(this: var BRepPrimAPI_MakeRevol; s: TopoDS_Shape): bool {.cdecl,
    importcpp: "IsDeleted", header: "BRepPrimAPI_MakeRevol.hxx".}
proc firstShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    cdecl, importcpp: "FirstShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc lastShape*(this: var BRepPrimAPI_MakeRevol; theShape: TopoDS_Shape): TopoDS_Shape {.
    cdecl, importcpp: "LastShape", header: "BRepPrimAPI_MakeRevol.hxx".}
proc hasDegenerated*(this: BRepPrimAPI_MakeRevol): bool {.noSideEffect, cdecl,
    importcpp: "HasDegenerated", header: "BRepPrimAPI_MakeRevol.hxx".}
proc degenerated*(this: BRepPrimAPI_MakeRevol): TopToolsListOfShape {.noSideEffect,
    cdecl, importcpp: "Degenerated", header: "BRepPrimAPI_MakeRevol.hxx".}
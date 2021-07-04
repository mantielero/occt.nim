##  Created on: 1993-06-16
##  Created by: Isabelle GRIGNON
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
  ../Standard/Standard_Handle, GProp_EquaType, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../TColgp/TColgp_Array1OfPnt, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GProp_PEquation* {.importcpp: "GProp_PEquation", header: "GProp_PEquation.hxx",
                    bycopy.} = object ## ! Constructs a framework to analyze the
                                   ## ! collection of points Pnts and computes:
                                   ## ! -   the mean point if the points in question are
                                   ## ! considered to be coincident within the precision Tol, or
                                   ## ! -   the mean line if they are considered to be
                                   ## ! collinear within the precision Tol, or
                                   ## ! -   the mean plane if they are considered to be
                                   ## ! coplanar within the precision Tol, or
                                   ## ! -   the minimal box which contains all the points. Use :
                                   ## ! -   the functions IsPoint, IsLinear, IsPlanar
                                   ## ! and IsSpace to find the result of the analysis, and
                                   ## ! -   the function Point, Line, Plane or Box to
                                   ## ! access the computed result.


proc constructGProp_PEquation*(Pnts: TColgp_Array1OfPnt; Tol: Standard_Real): GProp_PEquation {.
    constructor, importcpp: "GProp_PEquation(@)", header: "GProp_PEquation.hxx".}
proc IsPlanar*(this: GProp_PEquation): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanar", header: "GProp_PEquation.hxx".}
proc IsLinear*(this: GProp_PEquation): Standard_Boolean {.noSideEffect,
    importcpp: "IsLinear", header: "GProp_PEquation.hxx".}
proc IsPoint*(this: GProp_PEquation): Standard_Boolean {.noSideEffect,
    importcpp: "IsPoint", header: "GProp_PEquation.hxx".}
proc IsSpace*(this: GProp_PEquation): Standard_Boolean {.noSideEffect,
    importcpp: "IsSpace", header: "GProp_PEquation.hxx".}
proc Plane*(this: GProp_PEquation): gp_Pln {.noSideEffect, importcpp: "Plane",
    header: "GProp_PEquation.hxx".}
proc Line*(this: GProp_PEquation): gp_Lin {.noSideEffect, importcpp: "Line",
                                        header: "GProp_PEquation.hxx".}
proc Point*(this: GProp_PEquation): gp_Pnt {.noSideEffect, importcpp: "Point",
    header: "GProp_PEquation.hxx".}
proc Box*(this: GProp_PEquation; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
         V3: var gp_Vec) {.noSideEffect, importcpp: "Box",
                        header: "GProp_PEquation.hxx".}
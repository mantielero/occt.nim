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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GPropPEquation* {.importcpp: "GProp_PEquation", header: "GProp_PEquation.hxx",
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


proc constructGPropPEquation*(pnts: TColgpArray1OfPnt; tol: float): GPropPEquation {.
    constructor, importcpp: "GProp_PEquation(@)", header: "GProp_PEquation.hxx".}
proc isPlanar*(this: GPropPEquation): bool {.noSideEffect, importcpp: "IsPlanar",
    header: "GProp_PEquation.hxx".}
proc isLinear*(this: GPropPEquation): bool {.noSideEffect, importcpp: "IsLinear",
    header: "GProp_PEquation.hxx".}
proc isPoint*(this: GPropPEquation): bool {.noSideEffect, importcpp: "IsPoint",
                                        header: "GProp_PEquation.hxx".}
proc isSpace*(this: GPropPEquation): bool {.noSideEffect, importcpp: "IsSpace",
                                        header: "GProp_PEquation.hxx".}
proc plane*(this: GPropPEquation): Pln {.noSideEffect, importcpp: "Plane",
                                     header: "GProp_PEquation.hxx".}
proc line*(this: GPropPEquation): Lin {.noSideEffect, importcpp: "Line",
                                    header: "GProp_PEquation.hxx".}
proc point*(this: GPropPEquation): Pnt {.noSideEffect, importcpp: "Point",
                                     header: "GProp_PEquation.hxx".}
proc box*(this: GPropPEquation; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    noSideEffect, importcpp: "Box", header: "GProp_PEquation.hxx".}

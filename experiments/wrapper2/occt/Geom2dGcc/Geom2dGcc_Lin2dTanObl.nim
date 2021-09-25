##  Created on: 1992-10-20
##  Created by: Remi GILET
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

discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_IsParallel"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2dGcc_Lin2dTanOblIter"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccLin2dTanObl* {.importcpp: "Geom2dGcc_Lin2dTanObl",
                         header: "Geom2dGcc_Lin2dTanObl.hxx", bycopy.} = object ## ! This class
                                                                           ## implements the
                                                                           ## algorithm used to
                                                                           ## !
                                                                           ## create 2d line
                                                                           ## tangent to a curve and doing an
                                                                           ## ! angle Angle with the line
                                                                           ## TheLin.
                                                                           ## ! Angle must be in
                                                                           ## Radian.
                                                                           ## !
                                                                           ## Tolang is the
                                                                           ## angular
                                                                           ## tolerance.


proc constructGeom2dGccLin2dTanObl*(qualified1: Geom2dGccQualifiedCurve;
                                   theLin: Lin2d; tolAng: float; angle: float): Geom2dGccLin2dTanObl {.
    constructor, importcpp: "Geom2dGcc_Lin2dTanObl(@)",
    header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc constructGeom2dGccLin2dTanObl*(qualified1: Geom2dGccQualifiedCurve;
                                   theLin: Lin2d; tolAng: float; param1: float;
                                   angle: float): Geom2dGccLin2dTanObl {.
    constructor, importcpp: "Geom2dGcc_Lin2dTanObl(@)",
    header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc isDone*(this: Geom2dGccLin2dTanObl): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc nbSolutions*(this: Geom2dGccLin2dTanObl): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc thisSolution*(this: Geom2dGccLin2dTanObl; index: int): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc whichQualifier*(this: Geom2dGccLin2dTanObl; index: int;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc tangency1*(this: Geom2dGccLin2dTanObl; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc intersection2*(this: Geom2dGccLin2dTanObl; index: int; parSol: var float;
                   parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Intersection2", header: "Geom2dGcc_Lin2dTanObl.hxx".}
proc isParallel2*(this: Geom2dGccLin2dTanObl): bool {.noSideEffect,
    importcpp: "IsParallel2", header: "Geom2dGcc_Lin2dTanObl.hxx".}

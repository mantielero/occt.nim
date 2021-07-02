##  Created on: 1991-04-24
##  Created by: Remi GILET
##  Copyright (c) 1991-1999 Matra Datavision
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
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccLin2dTanOblIter* {.importcpp: "Geom2dGcc_Lin2dTanOblIter",
                             header: "Geom2dGcc_Lin2dTanOblIter.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## This
                                                                                   ## class
                                                                                   ## implements
                                                                                   ## the
                                                                                   ## algorithm
                                                                                   ## used
                                                                                   ## to
                                                                                   ##
                                                                                   ## !
                                                                                   ## create
                                                                                   ## 2d
                                                                                   ## line
                                                                                   ## tangent
                                                                                   ## to
                                                                                   ## a
                                                                                   ## curve
                                                                                   ## and
                                                                                   ## doing
                                                                                   ## an
                                                                                   ##
                                                                                   ## !
                                                                                   ## angle
                                                                                   ## Angle
                                                                                   ## with
                                                                                   ## the
                                                                                   ## line
                                                                                   ## TheLin.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Angle
                                                                                   ## must
                                                                                   ## be
                                                                                   ## in
                                                                                   ## Radian.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Param2
                                                                                   ## is
                                                                                   ## the
                                                                                   ## initial
                                                                                   ## guess
                                                                                   ## on
                                                                                   ## the
                                                                                   ## curve
                                                                                   ## QualifiedCurv.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Tolang
                                                                                   ## is
                                                                                   ## the
                                                                                   ## angular
                                                                                   ## tolerance.


proc constructGeom2dGccLin2dTanOblIter*(qualified1: Geom2dGccQCurve;
                                       theLin: GpLin2d; param1: StandardReal;
                                       tolAng: StandardReal;
                                       angle: StandardReal = 0): Geom2dGccLin2dTanOblIter {.
    constructor, importcpp: "Geom2dGcc_Lin2dTanOblIter(@)",
    header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc isDone*(this: Geom2dGccLin2dTanOblIter): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc thisSolution*(this: Geom2dGccLin2dTanOblIter): GpLin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc whichQualifier*(this: Geom2dGccLin2dTanOblIter; qualif1: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc tangency1*(this: Geom2dGccLin2dTanOblIter; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var GpPnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc intersection2*(this: Geom2dGccLin2dTanOblIter; parSol: var StandardReal;
                   parArg: var StandardReal; pntSol: var GpPnt2d) {.noSideEffect,
    importcpp: "Intersection2", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc isParallel2*(this: Geom2dGccLin2dTanOblIter): StandardBoolean {.noSideEffect,
    importcpp: "IsParallel2", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}


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
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Lin2d"
type
  Geom2dGccLin2d2TanIter* {.importcpp: "Geom2dGcc_Lin2d2TanIter",
                           header: "Geom2dGcc_Lin2d2TanIter.hxx", bycopy.} = object ## !
                                                                               ## This
                                                                               ## class
                                                                               ## implements
                                                                               ## the
                                                                               ## algorithms
                                                                               ## used
                                                                               ## to
                                                                               ## create
                                                                               ## 2d
                                                                               ## !
                                                                               ## lines
                                                                               ## passing
                                                                               ## thrue a
                                                                               ## point
                                                                               ## and
                                                                               ## tangent
                                                                               ## to a
                                                                               ## curve.
                                                                               ## !
                                                                               ## Tolang
                                                                               ## is
                                                                               ## used
                                                                               ## to
                                                                               ## determine
                                                                               ## the
                                                                               ## tolerance
                                                                               ## for
                                                                               ## the
                                                                               ## !
                                                                               ## tangency
                                                                               ## points.
                                                                               ## !
                                                                               ## Param2
                                                                               ## is
                                                                               ## used
                                                                               ## for
                                                                               ## the
                                                                               ## initial
                                                                               ## guess
                                                                               ## on
                                                                               ## the
                                                                               ## curve.


proc constructGeom2dGccLin2d2TanIter*(qualified1: Geom2dGccQCurve; thePoint: Pnt2d;
                                     param1: float; tolang: float): Geom2dGccLin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc constructGeom2dGccLin2d2TanIter*(qualified1: GccEntQualifiedCirc;
                                     qualified2: Geom2dGccQCurve; param2: float;
                                     tolang: float): Geom2dGccLin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc constructGeom2dGccLin2d2TanIter*(qualified1: Geom2dGccQCurve;
                                     qualified2: Geom2dGccQCurve; param1: float;
                                     param2: float; tolang: float): Geom2dGccLin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc isDone*(this: Geom2dGccLin2d2TanIter): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc thisSolution*(this: Geom2dGccLin2d2TanIter): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc whichQualifier*(this: Geom2dGccLin2d2TanIter; qualif1: var GccEntPosition;
                    qualif2: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc tangency1*(this: Geom2dGccLin2d2TanIter; parSol: var float; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                 header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc tangency2*(this: Geom2dGccLin2d2TanIter; parSol: var float; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "Tangency2",
                                 header: "Geom2dGcc_Lin2d2TanIter.hxx".}

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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Lin2d,
  ../GccEnt/GccEnt_Position, ../gp/gp_Pnt2d, ../Standard/Standard_Real

discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Lin2d"
type
  Geom2dGcc_Lin2d2TanIter* {.importcpp: "Geom2dGcc_Lin2d2TanIter",
                            header: "Geom2dGcc_Lin2d2TanIter.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## This
                                                                                ## class
                                                                                ## implements
                                                                                ## the
                                                                                ## algorithms
                                                                                ## used
                                                                                ## to
                                                                                ## create
                                                                                ## 2d
                                                                                ##
                                                                                ## !
                                                                                ## lines
                                                                                ## passing
                                                                                ## thrue
                                                                                ## a
                                                                                ## point
                                                                                ## and
                                                                                ## tangent
                                                                                ## to
                                                                                ## a
                                                                                ## curve.
                                                                                ##
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
                                                                                ##
                                                                                ## !
                                                                                ## tangency
                                                                                ## points.
                                                                                ##
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


proc constructGeom2dGcc_Lin2d2TanIter*(Qualified1: Geom2dGcc_QCurve;
                                      ThePoint: gp_Pnt2d; Param1: Standard_Real;
                                      Tolang: Standard_Real): Geom2dGcc_Lin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc constructGeom2dGcc_Lin2d2TanIter*(Qualified1: GccEnt_QualifiedCirc;
                                      Qualified2: Geom2dGcc_QCurve;
                                      Param2: Standard_Real; Tolang: Standard_Real): Geom2dGcc_Lin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc constructGeom2dGcc_Lin2d2TanIter*(Qualified1: Geom2dGcc_QCurve;
                                      Qualified2: Geom2dGcc_QCurve;
                                      Param1: Standard_Real;
                                      Param2: Standard_Real; Tolang: Standard_Real): Geom2dGcc_Lin2d2TanIter {.
    constructor, importcpp: "Geom2dGcc_Lin2d2TanIter(@)",
    header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc IsDone*(this: Geom2dGcc_Lin2d2TanIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc ThisSolution*(this: Geom2dGcc_Lin2d2TanIter): gp_Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Lin2d2TanIter; Qualif1: var GccEnt_Position;
                    Qualif2: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc Tangency1*(this: Geom2dGcc_Lin2d2TanIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
proc Tangency2*(this: Geom2dGcc_Lin2d2TanIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Lin2d2TanIter.hxx".}
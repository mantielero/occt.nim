##  Created on: 1991-03-29
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Circ2d,
  ../GccEnt/GccEnt_Position, ../gp/gp_Pnt2d, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGcc_Circ2d2TanOnIter* {.importcpp: "Geom2dGcc_Circ2d2TanOnIter",
                               header: "Geom2dGcc_Circ2d2TanOnIter.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## This
                                                                                      ## method
                                                                                      ## implements
                                                                                      ## the
                                                                                      ## algorithms
                                                                                      ## used
                                                                                      ## to
                                                                                      ##
                                                                                      ## !
                                                                                      ## create
                                                                                      ## 2d
                                                                                      ## circles
                                                                                      ## TANgent
                                                                                      ## to
                                                                                      ## a
                                                                                      ## 2d
                                                                                      ## circle
                                                                                      ## and
                                                                                      ## a
                                                                                      ## curve
                                                                                      ## and
                                                                                      ##
                                                                                      ## !
                                                                                      ## having
                                                                                      ## the
                                                                                      ## center
                                                                                      ## ON
                                                                                      ## a
                                                                                      ## 2d
                                                                                      ## line.
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
                                                                                      ## Tolerance
                                                                                      ## is
                                                                                      ## used
                                                                                      ## for
                                                                                      ## the
                                                                                      ## limit
                                                                                      ## cases.


proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedCirc;
    Qualified2: Geom2dGcc_QCurve; OnLine: gp_Lin2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedLin;
    Qualified2: Geom2dGcc_QCurve; OnLine: gp_Lin2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Qualified2: Geom2dGcc_QCurve; OnLine: gp_Lin2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Point2: gp_Pnt2d; OnLine: gp_Lin2d; Param1: Standard_Real; Param2: Standard_Real;
    Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.constructor,
    importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedCirc;
    Qualified2: Geom2dGcc_QCurve; OnCirc: gp_Circ2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedLin;
    Qualified2: Geom2dGcc_QCurve; OnCirc: gp_Circ2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Qualified2: Geom2dGcc_QCurve; OnCirc: gp_Circ2d; Param1: Standard_Real;
    Param2: Standard_Real; Param3: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Point2: gp_Pnt2d; OnCirc: gp_Circ2d; Param1: Standard_Real; Param2: Standard_Real;
    Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.constructor,
    importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedCirc;
    Qualified2: Geom2dGcc_QCurve; OnCurv: Geom2dAdaptor_Curve;
    Param1: Standard_Real; Param2: Standard_Real; ParamOn: Standard_Real;
    Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.constructor,
    importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: GccEnt_QualifiedLin;
    Qualified2: Geom2dGcc_QCurve; OnCurve: Geom2dAdaptor_Curve;
    Param1: Standard_Real; Param2: Standard_Real; ParamOn: Standard_Real;
    Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.constructor,
    importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Point2: gp_Pnt2d; OnCurve: Geom2dAdaptor_Curve; Param1: Standard_Real;
    ParamOn: Standard_Real; Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc constructGeom2dGcc_Circ2d2TanOnIter*(Qualified1: Geom2dGcc_QCurve;
    Qualified2: Geom2dGcc_QCurve; OnCurve: Geom2dAdaptor_Curve;
    Param1: Standard_Real; Param2: Standard_Real; ParamOn: Standard_Real;
    Tolerance: Standard_Real): Geom2dGcc_Circ2d2TanOnIter {.constructor,
    importcpp: "Geom2dGcc_Circ2d2TanOnIter(@)",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2d2TanOnIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2d2TanOnIter): gp_Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2d2TanOnIter;
                    Qualif1: var GccEnt_Position; Qualif2: var GccEnt_Position) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2d2TanOnIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc Tangency2*(this: Geom2dGcc_Circ2d2TanOnIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc CenterOn3*(this: Geom2dGcc_Circ2d2TanOnIter; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                    header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2d2TanOnIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
proc IsTheSame2*(this: Geom2dGcc_Circ2d2TanOnIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanOnIter.hxx".}
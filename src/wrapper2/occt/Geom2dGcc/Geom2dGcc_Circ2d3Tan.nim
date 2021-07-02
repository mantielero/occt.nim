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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2d3Tan"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2d3Tan* {.importcpp: "Geom2dGcc_Circ2d3Tan",
                        header: "Geom2dGcc_Circ2d3Tan.hxx", bycopy.} = object ## !
                                                                         ## Constructs one or more 2D circles
                                                                         ## !
                                                                         ## tangential to three curves
                                                                         ## Qualified1,
                                                                         ## Qualified2 and
                                                                         ## !
                                                                         ## Qualified3, where Param1, Param2 and Param3 are
                                                                         ## ! used,
                                                                         ## respectively, as the initial values of the
                                                                         ## !
                                                                         ## parameters on
                                                                         ## Qualified1,
                                                                         ## Qualified2 and
                                                                         ## Qualified3
                                                                         ## ! of the
                                                                         ## tangency point between these
                                                                         ## arguments and
                                                                         ## ! the
                                                                         ## solution sought, if the
                                                                         ## algorithm chooses an
                                                                         ## !
                                                                         ## iterative method to find the
                                                                         ## solution (i.e. if either
                                                                         ## !
                                                                         ## Qualified1,
                                                                         ## Qualified2 or
                                                                         ## Qualified3 is more complex
                                                                         ## ! than a line or a
                                                                         ## circle).


proc constructGeom2dGccCirc2d3Tan*(qualified1: Geom2dGccQualifiedCurve;
                                  qualified2: Geom2dGccQualifiedCurve;
                                  qualified3: Geom2dGccQualifiedCurve;
                                  tolerance: StandardReal; param1: StandardReal;
                                  param2: StandardReal; param3: StandardReal): Geom2dGccCirc2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGccCirc2d3Tan*(qualified1: Geom2dGccQualifiedCurve;
                                  qualified2: Geom2dGccQualifiedCurve;
                                  point: Handle[Geom2dPoint];
                                  tolerance: StandardReal; param1: StandardReal;
                                  param2: StandardReal): Geom2dGccCirc2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGccCirc2d3Tan*(qualified1: Geom2dGccQualifiedCurve;
                                  point1: Handle[Geom2dPoint];
                                  point2: Handle[Geom2dPoint];
                                  tolerance: StandardReal; param1: StandardReal): Geom2dGccCirc2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGccCirc2d3Tan*(point1: Handle[Geom2dPoint];
                                  point2: Handle[Geom2dPoint];
                                  point3: Handle[Geom2dPoint];
                                  tolerance: StandardReal): Geom2dGccCirc2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc results*(this: var Geom2dGccCirc2d3Tan; circ: GccAnaCirc2d3Tan;
             rank1: StandardInteger; rank2: StandardInteger; rank3: StandardInteger) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc isDone*(this: Geom2dGccCirc2d3Tan): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2d3Tan): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d3Tan; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d3Tan; index: StandardInteger;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition;
                    qualif3: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc tangency1*(this: Geom2dGccCirc2d3Tan; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc tangency2*(this: Geom2dGccCirc2d3Tan; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency2", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc tangency3*(this: Geom2dGccCirc2d3Tan; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency3", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d3Tan; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d3Tan; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc isTheSame3*(this: Geom2dGccCirc2d3Tan; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame3", header: "Geom2dGcc_Circ2d3Tan.hxx".}


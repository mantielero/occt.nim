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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2d2TanRad"
discard "forward decl of Geom2dGcc_Circ2d2TanRadGeo"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2d2TanRad* {.importcpp: "Geom2dGcc_Circ2d2TanRad",
                           header: "Geom2dGcc_Circ2d2TanRad.hxx", bycopy.} = object


proc constructGeom2dGccCirc2d2TanRad*(qualified1: Geom2dGccQualifiedCurve;
                                     qualified2: Geom2dGccQualifiedCurve;
                                     radius: StandardReal; tolerance: StandardReal): Geom2dGccCirc2d2TanRad {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRad(@)",
    header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc constructGeom2dGccCirc2d2TanRad*(qualified1: Geom2dGccQualifiedCurve;
                                     point: Handle[Geom2dPoint];
                                     radius: StandardReal; tolerance: StandardReal): Geom2dGccCirc2d2TanRad {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRad(@)",
    header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc constructGeom2dGccCirc2d2TanRad*(point1: Handle[Geom2dPoint];
                                     point2: Handle[Geom2dPoint];
                                     radius: StandardReal; tolerance: StandardReal): Geom2dGccCirc2d2TanRad {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRad(@)",
    header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc results*(this: var Geom2dGccCirc2d2TanRad; circ: GccAnaCirc2d2TanRad) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc results*(this: var Geom2dGccCirc2d2TanRad; circ: Geom2dGccCirc2d2TanRadGeo) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc isDone*(this: Geom2dGccCirc2d2TanRad): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2d2TanRad): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc tangency1*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc tangency2*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency2", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanRad.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d2TanRad; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanRad.hxx".}


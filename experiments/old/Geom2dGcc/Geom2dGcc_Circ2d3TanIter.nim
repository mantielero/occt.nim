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

discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  Geom2dGccCirc2d3TanIter* {.importcpp: "Geom2dGcc_Circ2d3TanIter",
                            header: "Geom2dGcc_Circ2d3TanIter.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccCirc2d3TanIter; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator new",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc `delete`*(this: var Geom2dGccCirc2d3TanIter; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator delete",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc `new[]`*(this: var Geom2dGccCirc2d3TanIter; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator new[]",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc `delete[]`*(this: var Geom2dGccCirc2d3TanIter; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator delete[]",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc `new`*(this: var Geom2dGccCirc2d3TanIter; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator new",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc `delete`*(this: var Geom2dGccCirc2d3TanIter; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_Circ2d3TanIter::operator delete",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedCirc;
                                      qualified2: GccEntQualifiedCirc;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedCirc;
                                      qualified2: Geom2dGccQCurve;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedCirc;
                                      qualified2: GccEntQualifiedLin;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedCirc;
                                      qualified2: Geom2dGccQCurve; point3: Pnt2d;
                                      param1: StandardReal; param2: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedLin;
                                      qualified2: GccEntQualifiedLin;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedLin;
                                      qualified2: Geom2dGccQCurve;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: GccEntQualifiedLin;
                                      qualified2: Geom2dGccQCurve; point3: Pnt2d;
                                      param1: StandardReal; param2: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: Geom2dGccQCurve; point1: Pnt2d;
                                      point2: Pnt2d; param1: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: Geom2dGccQCurve;
                                      qualified2: Geom2dGccQCurve; point2: Pnt2d;
                                      param1: StandardReal; param2: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGccCirc2d3TanIter*(qualified1: Geom2dGccQCurve;
                                      qualified2: Geom2dGccQCurve;
                                      qualified3: Geom2dGccQCurve;
                                      param1: StandardReal; param2: StandardReal;
                                      param3: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc isDone*(this: Geom2dGccCirc2d3TanIter): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d3TanIter): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d3TanIter; qualif1: var GccEntPosition;
                    qualif2: var GccEntPosition; qualif3: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc tangency1*(this: Geom2dGccCirc2d3TanIter; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc tangency2*(this: Geom2dGccCirc2d3TanIter; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc tangency3*(this: Geom2dGccCirc2d3TanIter; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency3", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d3TanIter): StandardBoolean {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d3TanIter): StandardBoolean {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc isTheSame3*(this: Geom2dGccCirc2d3TanIter): StandardBoolean {.noSideEffect,
    importcpp: "IsTheSame3", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
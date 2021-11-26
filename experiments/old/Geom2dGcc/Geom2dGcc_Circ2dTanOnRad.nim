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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2dTanOnRad"
discard "forward decl of Geom2dGcc_Circ2dTanOnRadGeo"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2dTanOnRad* {.importcpp: "Geom2dGcc_Circ2dTanOnRad",
                            header: "Geom2dGcc_Circ2dTanOnRad.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccCirc2dTanOnRad; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator new",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc `delete`*(this: var Geom2dGccCirc2dTanOnRad; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator delete",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc `new[]`*(this: var Geom2dGccCirc2dTanOnRad; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator new[]",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc `delete[]`*(this: var Geom2dGccCirc2dTanOnRad; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator delete[]",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc `new`*(this: var Geom2dGccCirc2dTanOnRad; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator new",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc `delete`*(this: var Geom2dGccCirc2dTanOnRad; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_Circ2dTanOnRad::operator delete",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc constructGeom2dGccCirc2dTanOnRad*(qualified1: Geom2dGccQualifiedCurve;
                                      onCurv: Geom2dAdaptorCurve;
                                      radius: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2dTanOnRad {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRad(@)",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc constructGeom2dGccCirc2dTanOnRad*(point1: Handle[Geom2dPoint];
                                      onCurv: Geom2dAdaptorCurve;
                                      radius: StandardReal;
                                      tolerance: StandardReal): Geom2dGccCirc2dTanOnRad {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRad(@)",
    header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc results*(this: var Geom2dGccCirc2dTanOnRad; circ: GccAnaCirc2dTanOnRad) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc results*(this: var Geom2dGccCirc2dTanOnRad; circ: Geom2dGccCirc2dTanOnRadGeo) {.
    importcpp: "Results", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc isDone*(this: Geom2dGccCirc2dTanOnRad): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2dTanOnRad): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc thisSolution*(this: Geom2dGccCirc2dTanOnRad; index: int): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2dTanOnRad; index: int;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc tangency1*(this: Geom2dGccCirc2dTanOnRad; index: int; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc centerOn3*(this: Geom2dGccCirc2dTanOnRad; index: int; parArg: var StandardReal;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                 header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2dTanOnRad; index: int): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2dTanOnRad.hxx".}
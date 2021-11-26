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
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of Geom2dGcc_Lin2d2TanIter"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccLin2d2Tan* {.importcpp: "Geom2dGcc_Lin2d2Tan",
                       header: "Geom2dGcc_Lin2d2Tan.hxx", bycopy.} = object


proc `new`*(this: var Geom2dGccLin2d2Tan; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator new",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc `delete`*(this: var Geom2dGccLin2d2Tan; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator delete",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc `new[]`*(this: var Geom2dGccLin2d2Tan; theSize: csize_t): pointer {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator new[]",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc `delete[]`*(this: var Geom2dGccLin2d2Tan; theAddress: pointer) {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator delete[]",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc `new`*(this: var Geom2dGccLin2d2Tan; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator new",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc `delete`*(this: var Geom2dGccLin2d2Tan; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dGcc_Lin2d2Tan::operator delete",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGccLin2d2Tan*(qualified1: Geom2dGccQualifiedCurve;
                                 qualified2: Geom2dGccQualifiedCurve;
                                 tolang: StandardReal): Geom2dGccLin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGccLin2d2Tan*(qualified1: Geom2dGccQualifiedCurve;
                                 thePoint: Pnt2d; tolang: StandardReal): Geom2dGccLin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGccLin2d2Tan*(qualified1: Geom2dGccQualifiedCurve;
                                 qualified2: Geom2dGccQualifiedCurve;
                                 tolang: StandardReal; param1: StandardReal;
                                 param2: StandardReal): Geom2dGccLin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGccLin2d2Tan*(qualified1: Geom2dGccQualifiedCurve;
                                 thePoint: Pnt2d; tolang: StandardReal;
                                 param1: StandardReal): Geom2dGccLin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc isDone*(this: Geom2dGccLin2d2Tan): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc nbSolutions*(this: Geom2dGccLin2d2Tan): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc thisSolution*(this: Geom2dGccLin2d2Tan; index: int): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc whichQualifier*(this: Geom2dGccLin2d2Tan; index: int;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc tangency1*(this: Geom2dGccLin2d2Tan; index: int; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc tangency2*(this: Geom2dGccLin2d2Tan; index: int; parSol: var StandardReal;
               parArg: var StandardReal; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Lin2d2Tan.hxx".}
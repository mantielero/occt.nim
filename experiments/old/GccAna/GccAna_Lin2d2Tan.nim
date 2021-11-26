##  Created on: 1991-04-03
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Lin2d"
type
  GccAnaLin2d2Tan* {.importcpp: "GccAna_Lin2d2Tan", header: "GccAna_Lin2d2Tan.hxx",
                    bycopy.} = object ## ! This methods implements the algorithms used to
                                   ## ! create 2d lines passing thrue 2 points.
                                   ## ! Tolerance is used because we can't create a line
                                   ## ! when the distance between the two points is too small.


proc constructGccAnaLin2d2Tan*(thePoint1: Pnt2d; thePoint2: Pnt2d; tolerance: cfloat): GccAnaLin2d2Tan {.
    constructor, importcpp: "GccAna_Lin2d2Tan(@)", header: "GccAna_Lin2d2Tan.hxx".}
proc constructGccAnaLin2d2Tan*(qualified1: GccEntQualifiedCirc; thePoint: Pnt2d;
                              tolerance: cfloat): GccAnaLin2d2Tan {.constructor,
    importcpp: "GccAna_Lin2d2Tan(@)", header: "GccAna_Lin2d2Tan.hxx".}
proc constructGccAnaLin2d2Tan*(qualified1: GccEntQualifiedCirc;
                              qualified2: GccEntQualifiedCirc; tolerance: cfloat): GccAnaLin2d2Tan {.
    constructor, importcpp: "GccAna_Lin2d2Tan(@)", header: "GccAna_Lin2d2Tan.hxx".}
proc isDone*(this: GccAnaLin2d2Tan): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "GccAna_Lin2d2Tan.hxx".}
proc nbSolutions*(this: GccAnaLin2d2Tan): cint {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2d2Tan.hxx".}
proc thisSolution*(this: GccAnaLin2d2Tan; index: cint): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Lin2d2Tan.hxx".}
proc whichQualifier*(this: GccAnaLin2d2Tan; index: cint; qualif1: var GccEntPosition;
                    qualif2: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Lin2d2Tan.hxx".}
proc tangency1*(this: GccAnaLin2d2Tan; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "GccAna_Lin2d2Tan.hxx".}
proc tangency2*(this: GccAnaLin2d2Tan; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "GccAna_Lin2d2Tan.hxx".}


























##  Created on: 1991-03-22
##  Created by: Remy GILET
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
discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  GccAnaCirc2d2TanOn* {.importcpp: "GccAna_Circ2d2TanOn",
                       header: "GccAna_Circ2d2TanOn.hxx", bycopy.} = object ## ! This method
                                                                       ## implements the
                                                                       ## algorithms used to
                                                                       ## ! create 2d circles TANgent to two 2d circles and
                                                                       ## ! having the center ON a 2d line.


proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc;
                                 qualified2: GccEntQualifiedCirc; onLine: GpLin2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc;
                                 qualified2: GccEntQualifiedLin; onLine: GpLin2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedLin;
                                 qualified2: GccEntQualifiedLin; onLine: GpLin2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc; point2: GpPnt2d;
                                 onLine: GpLin2d; tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedLin; point2: GpPnt2d;
                                 onLine: GpLin2d; tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(point1: GpPnt2d; point2: GpPnt2d; onLine: GpLin2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc;
                                 qualified2: GccEntQualifiedCirc;
                                 onCirc: GpCirc2d; tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc;
                                 qualified2: GccEntQualifiedLin; onCirc: GpCirc2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedCirc; point2: GpPnt2d;
                                 onCirc: GpCirc2d; tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedLin;
                                 qualified2: GccEntQualifiedLin; onCirc: GpCirc2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(qualified1: GccEntQualifiedLin; point2: GpPnt2d;
                                 onCirc: GpCirc2d; tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc constructGccAnaCirc2d2TanOn*(point1: GpPnt2d; point2: GpPnt2d; onCirc: GpCirc2d;
                                 tolerance: StandardReal): GccAnaCirc2d2TanOn {.
    constructor, importcpp: "GccAna_Circ2d2TanOn(@)",
    header: "GccAna_Circ2d2TanOn.hxx".}
proc isDone*(this: GccAnaCirc2d2TanOn): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2d2TanOn.hxx".}
proc nbSolutions*(this: GccAnaCirc2d2TanOn): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2d2TanOn.hxx".}
proc thisSolution*(this: GccAnaCirc2d2TanOn; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Circ2d2TanOn.hxx".}
proc whichQualifier*(this: GccAnaCirc2d2TanOn; index: StandardInteger;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier", header: "GccAna_Circ2d2TanOn.hxx".}
proc tangency1*(this: GccAnaCirc2d2TanOn; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "GccAna_Circ2d2TanOn.hxx".}
proc tangency2*(this: GccAnaCirc2d2TanOn; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency2", header: "GccAna_Circ2d2TanOn.hxx".}
proc centerOn3*(this: GccAnaCirc2d2TanOn; index: StandardInteger;
               parArg: var StandardReal; pntArg: var GpPnt2d) {.noSideEffect,
    importcpp: "CenterOn3", header: "GccAna_Circ2d2TanOn.hxx".}
proc isTheSame1*(this: GccAnaCirc2d2TanOn; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "GccAna_Circ2d2TanOn.hxx".}
proc isTheSame2*(this: GccAnaCirc2d2TanOn; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "GccAna_Circ2d2TanOn.hxx".}


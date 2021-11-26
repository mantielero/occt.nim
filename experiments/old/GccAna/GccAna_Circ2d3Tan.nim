##  Created on: 1991-03-18
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
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  GccAnaCirc2d3Tan* {.importcpp: "GccAna_Circ2d3Tan",
                     header: "GccAna_Circ2d3Tan.hxx", bycopy.} = object ## ! This method implements the algorithms used to
                                                                   ## ! create 2d circles tangent to 3 circles.
                                                                   ## !
                                                                   ## ConstructionError is raised if there is a problem during
                                                                   ## ! the computation.


proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc;
                               qualified2: GccEntQualifiedCirc;
                               qualified3: GccEntQualifiedCirc; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc;
                               qualified2: GccEntQualifiedCirc;
                               qualified3: GccEntQualifiedLin; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc;
                               qualified2: GccEntQualifiedLin;
                               qualified3: GccEntQualifiedLin; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedLin;
                               qualified2: GccEntQualifiedLin;
                               qualified3: GccEntQualifiedLin; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc;
                               qualified2: GccEntQualifiedCirc; point3: Pnt2d;
                               tolerance: cfloat): GccAnaCirc2d3Tan {.constructor,
    importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc;
                               qualified2: GccEntQualifiedLin; point3: Pnt2d;
                               tolerance: cfloat): GccAnaCirc2d3Tan {.constructor,
    importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedLin;
                               qualified2: GccEntQualifiedLin; point3: Pnt2d;
                               tolerance: cfloat): GccAnaCirc2d3Tan {.constructor,
    importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedCirc; point2: Pnt2d;
                               point3: Pnt2d; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(qualified1: GccEntQualifiedLin; point2: Pnt2d;
                               point3: Pnt2d; tolerance: cfloat): GccAnaCirc2d3Tan {.
    constructor, importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc constructGccAnaCirc2d3Tan*(point1: Pnt2d; point2: Pnt2d; point3: Pnt2d;
                               tolerance: cfloat): GccAnaCirc2d3Tan {.constructor,
    importcpp: "GccAna_Circ2d3Tan(@)", header: "GccAna_Circ2d3Tan.hxx".}
proc isDone*(this: GccAnaCirc2d3Tan): bool {.noSideEffect, importcpp: "IsDone",
    header: "GccAna_Circ2d3Tan.hxx".}
proc nbSolutions*(this: GccAnaCirc2d3Tan): cint {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2d3Tan.hxx".}
proc thisSolution*(this: GccAnaCirc2d3Tan; index: cint): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Circ2d3Tan.hxx".}
proc whichQualifier*(this: GccAnaCirc2d3Tan; index: cint;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition;
                    qualif3: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Circ2d3Tan.hxx".}
proc tangency1*(this: GccAnaCirc2d3Tan; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "GccAna_Circ2d3Tan.hxx".}
proc tangency2*(this: GccAnaCirc2d3Tan; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "GccAna_Circ2d3Tan.hxx".}
proc tangency3*(this: GccAnaCirc2d3Tan; index: cint; parSol: var cfloat;
               parArg: var cfloat; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency3", header: "GccAna_Circ2d3Tan.hxx".}
proc isTheSame1*(this: GccAnaCirc2d3Tan; index: cint): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "GccAna_Circ2d3Tan.hxx".}
proc isTheSame2*(this: GccAnaCirc2d3Tan; index: cint): bool {.noSideEffect,
    importcpp: "IsTheSame2", header: "GccAna_Circ2d3Tan.hxx".}
proc isTheSame3*(this: GccAnaCirc2d3Tan; index: cint): bool {.noSideEffect,
    importcpp: "IsTheSame3", header: "GccAna_Circ2d3Tan.hxx".}


























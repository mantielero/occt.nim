##  Created on: 1991-03-21
##  Created by: Philippe DAUTRY
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  GccAnaCirc2d2TanRad* {.importcpp: "GccAna_Circ2d2TanRad",
                        header: "GccAna_Circ2d2TanRad.hxx", bycopy.} = object ## ! This method
                                                                         ## implements the
                                                                         ## algorithms used to
                                                                         ## ! create 2d circles TANgent to two 2d circle with a
                                                                         ## ! radius of Radius.
                                                                         ## ! It raises
                                                                         ## NegativeValue if Radius is lower than zero.


proc constructGccAnaCirc2d2TanRad*(qualified1: GccEntQualifiedCirc;
                                  qualified2: GccEntQualifiedCirc;
                                  radius: StandardReal; tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc constructGccAnaCirc2d2TanRad*(qualified1: GccEntQualifiedCirc;
                                  qualified2: GccEntQualifiedLin;
                                  radius: StandardReal; tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc constructGccAnaCirc2d2TanRad*(qualified1: GccEntQualifiedCirc;
                                  point2: GpPnt2d; radius: StandardReal;
                                  tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc constructGccAnaCirc2d2TanRad*(qualified1: GccEntQualifiedLin; point2: GpPnt2d;
                                  radius: StandardReal; tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc constructGccAnaCirc2d2TanRad*(qualified1: GccEntQualifiedLin;
                                  qualified2: GccEntQualifiedLin;
                                  radius: StandardReal; tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc constructGccAnaCirc2d2TanRad*(point1: GpPnt2d; point2: GpPnt2d;
                                  radius: StandardReal; tolerance: StandardReal): GccAnaCirc2d2TanRad {.
    constructor, importcpp: "GccAna_Circ2d2TanRad(@)",
    header: "GccAna_Circ2d2TanRad.hxx".}
proc isDone*(this: GccAnaCirc2d2TanRad): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2d2TanRad.hxx".}
proc nbSolutions*(this: GccAnaCirc2d2TanRad): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2d2TanRad.hxx".}
proc thisSolution*(this: GccAnaCirc2d2TanRad; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Circ2d2TanRad.hxx".}
proc whichQualifier*(this: GccAnaCirc2d2TanRad; index: StandardInteger;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier", header: "GccAna_Circ2d2TanRad.hxx".}
proc tangency1*(this: GccAnaCirc2d2TanRad; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "GccAna_Circ2d2TanRad.hxx".}
proc tangency2*(this: GccAnaCirc2d2TanRad; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency2", header: "GccAna_Circ2d2TanRad.hxx".}
proc isTheSame1*(this: GccAnaCirc2d2TanRad; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "GccAna_Circ2d2TanRad.hxx".}
proc isTheSame2*(this: GccAnaCirc2d2TanRad; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "GccAna_Circ2d2TanRad.hxx".}


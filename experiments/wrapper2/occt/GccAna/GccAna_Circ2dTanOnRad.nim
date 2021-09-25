##  Created on: 1991-03-22
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
discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  GccAnaCirc2dTanOnRad* {.importcpp: "GccAna_Circ2dTanOnRad",
                         header: "GccAna_Circ2dTanOnRad.hxx", bycopy.} = object ## ! This
                                                                           ## methods
                                                                           ## implements the
                                                                           ## algorithms used to
                                                                           ## create
                                                                           ## ! 2d
                                                                           ## Circles
                                                                           ## tangent to a
                                                                           ## circle and
                                                                           ## centered on a 2d Line
                                                                           ## ! with a given
                                                                           ## radius.
                                                                           ## !
                                                                           ## Tolerance is used to find
                                                                           ## solution in every limit
                                                                           ## cases.
                                                                           ## ! For
                                                                           ## example
                                                                           ## Tolerance is used in the case of
                                                                           ## EnclosedCirc when
                                                                           ## !
                                                                           ## Radius-R1+dist is
                                                                           ## greater
                                                                           ## Tolerance (dist is the
                                                                           ## distance
                                                                           ## !
                                                                           ## between the line and the
                                                                           ## location of the circ, R1 is the
                                                                           ## !
                                                                           ## radius of the circ)
                                                                           ## because there is no
                                                                           ## solution.
                                                                           ## !
                                                                           ## raises
                                                                           ## NegativeValue in case of
                                                                           ## NegativeRadius.


proc constructGccAnaCirc2dTanOnRad*(qualified1: GccEntQualifiedCirc; onLine: Lin2d;
                                   radius: float; tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAnaCirc2dTanOnRad*(qualified1: GccEntQualifiedLin; onLine: Lin2d;
                                   radius: float; tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAnaCirc2dTanOnRad*(point1: Pnt2d; onLine: Lin2d; radius: float;
                                   tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAnaCirc2dTanOnRad*(qualified1: GccEntQualifiedCirc;
                                   onCirc: Circ2d; radius: float; tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAnaCirc2dTanOnRad*(qualified1: GccEntQualifiedLin; onCirc: Circ2d;
                                   radius: float; tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAnaCirc2dTanOnRad*(point1: Pnt2d; onCirc: Circ2d; radius: float;
                                   tolerance: float): GccAnaCirc2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc isDone*(this: GccAnaCirc2dTanOnRad): bool {.noSideEffect, importcpp: "IsDone",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc nbSolutions*(this: GccAnaCirc2dTanOnRad): int {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2dTanOnRad.hxx".}
proc thisSolution*(this: GccAnaCirc2dTanOnRad; index: int): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Circ2dTanOnRad.hxx".}
proc whichQualifier*(this: GccAnaCirc2dTanOnRad; index: int;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Circ2dTanOnRad.hxx".}
proc tangency1*(this: GccAnaCirc2dTanOnRad; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "GccAna_Circ2dTanOnRad.hxx".}
proc centerOn3*(this: GccAnaCirc2dTanOnRad; index: int; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                 header: "GccAna_Circ2dTanOnRad.hxx".}
proc isTheSame1*(this: GccAnaCirc2dTanOnRad; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "GccAna_Circ2dTanOnRad.hxx".}

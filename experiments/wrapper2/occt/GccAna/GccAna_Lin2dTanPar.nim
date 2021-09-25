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
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedCirc"
type
  GccAnaLin2dTanPar* {.importcpp: "GccAna_Lin2dTanPar",
                      header: "GccAna_Lin2dTanPar.hxx", bycopy.} = object ## ! This method implements the algorithms used to create a 2d
                                                                     ## ! line passing through a point and parallel to
                                                                     ## ! another line.


proc constructGccAnaLin2dTanPar*(thePoint: Pnt2d; lin1: Lin2d): GccAnaLin2dTanPar {.
    constructor, importcpp: "GccAna_Lin2dTanPar(@)",
    header: "GccAna_Lin2dTanPar.hxx".}
proc constructGccAnaLin2dTanPar*(qualified1: GccEntQualifiedCirc; lin1: Lin2d): GccAnaLin2dTanPar {.
    constructor, importcpp: "GccAna_Lin2dTanPar(@)",
    header: "GccAna_Lin2dTanPar.hxx".}
proc isDone*(this: GccAnaLin2dTanPar): bool {.noSideEffect, importcpp: "IsDone",
    header: "GccAna_Lin2dTanPar.hxx".}
proc nbSolutions*(this: GccAnaLin2dTanPar): int {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2dTanPar.hxx".}
proc thisSolution*(this: GccAnaLin2dTanPar; index: int): Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "GccAna_Lin2dTanPar.hxx".}
proc whichQualifier*(this: GccAnaLin2dTanPar; index: int; qualif1: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier", header: "GccAna_Lin2dTanPar.hxx".}
proc tangency1*(this: GccAnaLin2dTanPar; index: int; parSol: var float;
               parArg: var float; pnt: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "GccAna_Lin2dTanPar.hxx".}

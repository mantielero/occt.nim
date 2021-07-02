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
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
type
  GccAnaLin2dBisec* {.importcpp: "GccAna_Lin2dBisec",
                     header: "GccAna_Lin2dBisec.hxx", bycopy.} = object ## ! Constructs bisecting lines between the two lines Lin1 and Lin2.


proc constructGccAnaLin2dBisec*(lin1: GpLin2d; lin2: GpLin2d): GccAnaLin2dBisec {.
    constructor, importcpp: "GccAna_Lin2dBisec(@)", header: "GccAna_Lin2dBisec.hxx".}
proc isDone*(this: GccAnaLin2dBisec): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Lin2dBisec.hxx".}
proc nbSolutions*(this: GccAnaLin2dBisec): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2dBisec.hxx".}
proc thisSolution*(this: GccAnaLin2dBisec; index: StandardInteger): GpLin2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Lin2dBisec.hxx".}
proc intersection1*(this: GccAnaLin2dBisec; index: StandardInteger;
                   parSol: var StandardReal; parArg: var StandardReal;
                   pntSol: var GpPnt2d) {.noSideEffect, importcpp: "Intersection1",
                                       header: "GccAna_Lin2dBisec.hxx".}
proc intersection2*(this: GccAnaLin2dBisec; index: StandardInteger;
                   parSol: var StandardReal; parArg: var StandardReal;
                   pntSol: var GpPnt2d) {.noSideEffect, importcpp: "Intersection2",
                                       header: "GccAna_Lin2dBisec.hxx".}


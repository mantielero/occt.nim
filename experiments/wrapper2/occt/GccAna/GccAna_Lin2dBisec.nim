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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfLin2d,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
type
  GccAna_Lin2dBisec* {.importcpp: "GccAna_Lin2dBisec",
                      header: "GccAna_Lin2dBisec.hxx", bycopy.} = object ## ! Constructs bisecting lines between the two lines Lin1 and Lin2.


proc constructGccAna_Lin2dBisec*(Lin1: gp_Lin2d; Lin2: gp_Lin2d): GccAna_Lin2dBisec {.
    constructor, importcpp: "GccAna_Lin2dBisec(@)", header: "GccAna_Lin2dBisec.hxx".}
proc IsDone*(this: GccAna_Lin2dBisec): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Lin2dBisec.hxx".}
proc NbSolutions*(this: GccAna_Lin2dBisec): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2dBisec.hxx".}
proc ThisSolution*(this: GccAna_Lin2dBisec; Index: Standard_Integer): gp_Lin2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Lin2dBisec.hxx".}
proc Intersection1*(this: GccAna_Lin2dBisec; Index: Standard_Integer;
                   ParSol: var Standard_Real; ParArg: var Standard_Real;
                   PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Intersection1",
                                        header: "GccAna_Lin2dBisec.hxx".}
proc Intersection2*(this: GccAna_Lin2dBisec; Index: Standard_Integer;
                   ParSol: var Standard_Real; ParArg: var Standard_Real;
                   PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Intersection2",
                                        header: "GccAna_Lin2dBisec.hxx".}
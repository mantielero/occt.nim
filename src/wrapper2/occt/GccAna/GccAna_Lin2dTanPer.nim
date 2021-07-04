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
  ../GccEnt/GccEnt_Array1OfPosition, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_Array1OfReal, ../GccEnt/GccEnt_Position,
  ../Standard/Standard_Real

discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccEnt_QualifiedCirc"
type
  GccAna_Lin2dTanPer* {.importcpp: "GccAna_Lin2dTanPer",
                       header: "GccAna_Lin2dTanPer.hxx", bycopy.} = object ## ! This method implements the algorithms used to
                                                                      ## ! create 2d lines passing through a point and
                                                                      ## !
                                                                      ## perpendicular to a line.


proc constructGccAna_Lin2dTanPer*(ThePnt: gp_Pnt2d; TheLin: gp_Lin2d): GccAna_Lin2dTanPer {.
    constructor, importcpp: "GccAna_Lin2dTanPer(@)",
    header: "GccAna_Lin2dTanPer.hxx".}
proc constructGccAna_Lin2dTanPer*(ThePnt: gp_Pnt2d; TheCircle: gp_Circ2d): GccAna_Lin2dTanPer {.
    constructor, importcpp: "GccAna_Lin2dTanPer(@)",
    header: "GccAna_Lin2dTanPer.hxx".}
proc constructGccAna_Lin2dTanPer*(Qualified1: GccEnt_QualifiedCirc;
                                 TheLin: gp_Lin2d): GccAna_Lin2dTanPer {.
    constructor, importcpp: "GccAna_Lin2dTanPer(@)",
    header: "GccAna_Lin2dTanPer.hxx".}
proc constructGccAna_Lin2dTanPer*(Qualified1: GccEnt_QualifiedCirc;
                                 TheCircle: gp_Circ2d): GccAna_Lin2dTanPer {.
    constructor, importcpp: "GccAna_Lin2dTanPer(@)",
    header: "GccAna_Lin2dTanPer.hxx".}
proc IsDone*(this: GccAna_Lin2dTanPer): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Lin2dTanPer.hxx".}
proc NbSolutions*(this: GccAna_Lin2dTanPer): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Lin2dTanPer.hxx".}
proc WhichQualifier*(this: GccAna_Lin2dTanPer; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Lin2dTanPer.hxx".}
proc ThisSolution*(this: GccAna_Lin2dTanPer; Index: Standard_Integer): gp_Lin2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Lin2dTanPer.hxx".}
proc Tangency1*(this: GccAna_Lin2dTanPer; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real; Pnt: var gp_Pnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "GccAna_Lin2dTanPer.hxx".}
proc Intersection2*(this: GccAna_Lin2dTanPer; Index: Standard_Integer;
                   ParSol: var Standard_Real; ParArg: var Standard_Real;
                   PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Intersection2",
                                        header: "GccAna_Lin2dTanPer.hxx".}
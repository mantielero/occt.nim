##  Created on: 1991-03-18
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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
type
  GccAnaCirc2dTanCen* {.importcpp: "GccAna_Circ2dTanCen",
                       header: "GccAna_Circ2dTanCen.hxx", bycopy.} = object ## ! This method
                                                                       ## implements the
                                                                       ## algorithms used to
                                                                       ## ! create 2d circles tangent to a circle and
                                                                       ## ! centered on a point.


proc constructGccAnaCirc2dTanCen*(qualified1: GccEntQualifiedCirc;
                                 pcenter: GpPnt2d; tolerance: StandardReal): GccAnaCirc2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc constructGccAnaCirc2dTanCen*(linetan: GpLin2d; pcenter: GpPnt2d): GccAnaCirc2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc constructGccAnaCirc2dTanCen*(point1: GpPnt2d; pcenter: GpPnt2d): GccAnaCirc2dTanCen {.
    constructor, importcpp: "GccAna_Circ2dTanCen(@)",
    header: "GccAna_Circ2dTanCen.hxx".}
proc isDone*(this: GccAnaCirc2dTanCen): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2dTanCen.hxx".}
proc nbSolutions*(this: GccAnaCirc2dTanCen): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2dTanCen.hxx".}
proc thisSolution*(this: GccAnaCirc2dTanCen; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Circ2dTanCen.hxx".}
proc whichQualifier*(this: GccAnaCirc2dTanCen; index: StandardInteger;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Circ2dTanCen.hxx".}
proc tangency1*(this: GccAnaCirc2dTanCen; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "GccAna_Circ2dTanCen.hxx".}
proc isTheSame1*(this: GccAnaCirc2dTanCen; index: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "GccAna_Circ2dTanCen.hxx".}


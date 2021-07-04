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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfCirc2d,
  ../GccEnt/GccEnt_Array1OfPosition, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real, ../GccEnt/GccEnt_Position

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
  GccAna_Circ2dTanOnRad* {.importcpp: "GccAna_Circ2dTanOnRad",
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
                                                                            ## ! with a
                                                                            ## given
                                                                            ## radius.
                                                                            ## !
                                                                            ## Tolerance is used to find
                                                                            ## solution in
                                                                            ## every
                                                                            ## limit
                                                                            ## cases.
                                                                            ## ! For
                                                                            ## example
                                                                            ## Tolerance is used in the case of
                                                                            ## EnclosedCirc when
                                                                            ## !
                                                                            ## Radius-R1+dist is
                                                                            ## greater
                                                                            ## Tolerance
                                                                            ## (dist is the
                                                                            ## distance
                                                                            ## !
                                                                            ## between the line and the
                                                                            ## location of the
                                                                            ## circ, R1 is the
                                                                            ## !
                                                                            ## radius of the
                                                                            ## circ)
                                                                            ## because
                                                                            ## there is no
                                                                            ## solution.
                                                                            ## !
                                                                            ## raises
                                                                            ## NegativeValue in case of
                                                                            ## NegativeRadius.


proc constructGccAna_Circ2dTanOnRad*(Qualified1: GccEnt_QualifiedCirc;
                                    OnLine: gp_Lin2d; Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAna_Circ2dTanOnRad*(Qualified1: GccEnt_QualifiedLin;
                                    OnLine: gp_Lin2d; Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAna_Circ2dTanOnRad*(Point1: gp_Pnt2d; OnLine: gp_Lin2d;
                                    Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAna_Circ2dTanOnRad*(Qualified1: GccEnt_QualifiedCirc;
                                    OnCirc: gp_Circ2d; Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAna_Circ2dTanOnRad*(Qualified1: GccEnt_QualifiedLin;
                                    OnCirc: gp_Circ2d; Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc constructGccAna_Circ2dTanOnRad*(Point1: gp_Pnt2d; OnCirc: gp_Circ2d;
                                    Radius: Standard_Real;
                                    Tolerance: Standard_Real): GccAna_Circ2dTanOnRad {.
    constructor, importcpp: "GccAna_Circ2dTanOnRad(@)",
    header: "GccAna_Circ2dTanOnRad.hxx".}
proc IsDone*(this: GccAna_Circ2dTanOnRad): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GccAna_Circ2dTanOnRad.hxx".}
proc NbSolutions*(this: GccAna_Circ2dTanOnRad): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "GccAna_Circ2dTanOnRad.hxx".}
proc ThisSolution*(this: GccAna_Circ2dTanOnRad; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution", header: "GccAna_Circ2dTanOnRad.hxx".}
proc WhichQualifier*(this: GccAna_Circ2dTanOnRad; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "GccAna_Circ2dTanOnRad.hxx".}
proc Tangency1*(this: GccAna_Circ2dTanOnRad; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "GccAna_Circ2dTanOnRad.hxx".}
proc CenterOn3*(this: GccAna_Circ2dTanOnRad; Index: Standard_Integer;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "CenterOn3", header: "GccAna_Circ2dTanOnRad.hxx".}
proc IsTheSame1*(this: GccAna_Circ2dTanOnRad; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "GccAna_Circ2dTanOnRad.hxx".}
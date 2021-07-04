##  Created on: 1992-10-20
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColgp/TColgp_Array1OfCirc2d,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../GccEnt/GccEnt_Array1OfPosition, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Integer, ../GccEnt/GccEnt_Position

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2d_Point"
discard "forward decl of GccAna_Circ2d3Tan"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_Circ2d3Tan* {.importcpp: "Geom2dGcc_Circ2d3Tan",
                         header: "Geom2dGcc_Circ2d3Tan.hxx", bycopy.} = object ## !
                                                                          ## Constructs one or more 2D
                                                                          ## circles
                                                                          ## !
                                                                          ## tangential to three curves
                                                                          ## Qualified1,
                                                                          ## Qualified2 and
                                                                          ## !
                                                                          ## Qualified3, where
                                                                          ## Param1, Param2 and Param3 are
                                                                          ## ! used,
                                                                          ## respectively, as the
                                                                          ## initial values of the
                                                                          ## !
                                                                          ## parameters on
                                                                          ## Qualified1,
                                                                          ## Qualified2 and
                                                                          ## Qualified3
                                                                          ## ! of the
                                                                          ## tangency point
                                                                          ## between these
                                                                          ## arguments and
                                                                          ## ! the
                                                                          ## solution
                                                                          ## sought, if the
                                                                          ## algorithm
                                                                          ## chooses an
                                                                          ## !
                                                                          ## iterative method to find the
                                                                          ## solution (i.e. if either
                                                                          ## !
                                                                          ## Qualified1,
                                                                          ## Qualified2 or
                                                                          ## Qualified3 is more
                                                                          ## complex
                                                                          ## ! than a line or a
                                                                          ## circle).


proc constructGeom2dGcc_Circ2d3Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                   Qualified2: Geom2dGcc_QualifiedCurve;
                                   Qualified3: Geom2dGcc_QualifiedCurve;
                                   Tolerance: Standard_Real;
                                   Param1: Standard_Real; Param2: Standard_Real;
                                   Param3: Standard_Real): Geom2dGcc_Circ2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGcc_Circ2d3Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                   Qualified2: Geom2dGcc_QualifiedCurve;
                                   Point: handle[Geom2d_Point];
                                   Tolerance: Standard_Real;
                                   Param1: Standard_Real; Param2: Standard_Real): Geom2dGcc_Circ2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGcc_Circ2d3Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                   Point1: handle[Geom2d_Point];
                                   Point2: handle[Geom2d_Point];
                                   Tolerance: Standard_Real; Param1: Standard_Real): Geom2dGcc_Circ2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc constructGeom2dGcc_Circ2d3Tan*(Point1: handle[Geom2d_Point];
                                   Point2: handle[Geom2d_Point];
                                   Point3: handle[Geom2d_Point];
                                   Tolerance: Standard_Real): Geom2dGcc_Circ2d3Tan {.
    constructor, importcpp: "Geom2dGcc_Circ2d3Tan(@)",
    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc Results*(this: var Geom2dGcc_Circ2d3Tan; Circ: GccAna_Circ2d3Tan;
             Rank1: Standard_Integer; Rank2: Standard_Integer;
             Rank3: Standard_Integer) {.importcpp: "Results",
                                      header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2d3Tan): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc NbSolutions*(this: Geom2dGcc_Circ2d3Tan): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer): gp_Circ2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position; Qualif2: var GccEnt_Position;
                    Qualif3: var GccEnt_Position) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc Tangency2*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency2",
                                    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc Tangency3*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency3",
                                    header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc IsTheSame2*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d3Tan.hxx".}
proc IsTheSame3*(this: Geom2dGcc_Circ2d3Tan; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsTheSame3", header: "Geom2dGcc_Circ2d3Tan.hxx".}
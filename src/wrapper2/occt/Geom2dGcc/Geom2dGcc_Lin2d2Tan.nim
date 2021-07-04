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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColgp/TColgp_Array1OfLin2d,
  ../GccEnt/GccEnt_Array1OfPosition, ../TColgp/TColgp_Array1OfPnt2d,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Real,
  ../GccEnt/GccEnt_Position

discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of Geom2dGcc_Lin2d2TanIter"
discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGcc_Lin2d2Tan* {.importcpp: "Geom2dGcc_Lin2d2Tan",
                        header: "Geom2dGcc_Lin2d2Tan.hxx", bycopy.} = object ## ! This class
                                                                        ## implements the
                                                                        ## algorithms used to create 2d
                                                                        ## ! line tangent to two curves.
                                                                        ## ! Tolang is used to
                                                                        ## determine the
                                                                        ## tolerance for the tangency points.


proc constructGeom2dGcc_Lin2d2Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                  Qualified2: Geom2dGcc_QualifiedCurve;
                                  Tolang: Standard_Real): Geom2dGcc_Lin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGcc_Lin2d2Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                  ThePoint: gp_Pnt2d; Tolang: Standard_Real): Geom2dGcc_Lin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGcc_Lin2d2Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                  Qualified2: Geom2dGcc_QualifiedCurve;
                                  Tolang: Standard_Real; Param1: Standard_Real;
                                  Param2: Standard_Real): Geom2dGcc_Lin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc constructGeom2dGcc_Lin2d2Tan*(Qualified1: Geom2dGcc_QualifiedCurve;
                                  ThePoint: gp_Pnt2d; Tolang: Standard_Real;
                                  Param1: Standard_Real): Geom2dGcc_Lin2d2Tan {.
    constructor, importcpp: "Geom2dGcc_Lin2d2Tan(@)",
    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc IsDone*(this: Geom2dGcc_Lin2d2Tan): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc NbSolutions*(this: Geom2dGcc_Lin2d2Tan): Standard_Integer {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc ThisSolution*(this: Geom2dGcc_Lin2d2Tan; Index: Standard_Integer): gp_Lin2d {.
    noSideEffect, importcpp: "ThisSolution", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Lin2d2Tan; Index: Standard_Integer;
                    Qualif1: var GccEnt_Position; Qualif2: var GccEnt_Position) {.
    noSideEffect, importcpp: "WhichQualifier", header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc Tangency1*(this: Geom2dGcc_Lin2d2Tan; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency1",
                                    header: "Geom2dGcc_Lin2d2Tan.hxx".}
proc Tangency2*(this: Geom2dGcc_Lin2d2Tan; Index: Standard_Integer;
               ParSol: var Standard_Real; ParArg: var Standard_Real;
               PntSol: var gp_Pnt2d) {.noSideEffect, importcpp: "Tangency2",
                                    header: "Geom2dGcc_Lin2d2Tan.hxx".}
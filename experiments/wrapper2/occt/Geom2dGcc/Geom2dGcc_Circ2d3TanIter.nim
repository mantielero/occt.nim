##  Created on: 1991-03-29
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Circ2d,
  ../GccEnt/GccEnt_Position, ../gp/gp_Pnt2d, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  Geom2dGcc_Circ2d3TanIter* {.importcpp: "Geom2dGcc_Circ2d3TanIter",
                             header: "Geom2dGcc_Circ2d3TanIter.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## This
                                                                                  ## method
                                                                                  ## implements
                                                                                  ## the
                                                                                  ## algorithms
                                                                                  ## used
                                                                                  ## to
                                                                                  ##
                                                                                  ## !
                                                                                  ## create
                                                                                  ## 2d
                                                                                  ## circles
                                                                                  ## tangent
                                                                                  ## to
                                                                                  ## 2
                                                                                  ## circles
                                                                                  ## and
                                                                                  ## a
                                                                                  ## curve.


proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedCirc;
                                       Qualified2: GccEnt_QualifiedCirc;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedCirc;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedCirc;
                                       Qualified2: GccEnt_QualifiedLin;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedCirc;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Point3: gp_Pnt2d; Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedLin;
                                       Qualified2: GccEnt_QualifiedLin;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedLin;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: GccEnt_QualifiedLin;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Point3: gp_Pnt2d; Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: Geom2dGcc_QCurve;
                                       Point1: gp_Pnt2d; Point2: gp_Pnt2d;
                                       Param1: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: Geom2dGcc_QCurve;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Point2: gp_Pnt2d; Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc constructGeom2dGcc_Circ2d3TanIter*(Qualified1: Geom2dGcc_QCurve;
                                       Qualified2: Geom2dGcc_QCurve;
                                       Qualified3: Geom2dGcc_QCurve;
                                       Param1: Standard_Real;
                                       Param2: Standard_Real;
                                       Param3: Standard_Real;
                                       Tolerance: Standard_Real): Geom2dGcc_Circ2d3TanIter {.
    constructor, importcpp: "Geom2dGcc_Circ2d3TanIter(@)",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc IsDone*(this: Geom2dGcc_Circ2d3TanIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc ThisSolution*(this: Geom2dGcc_Circ2d3TanIter): gp_Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Circ2d3TanIter; Qualif1: var GccEnt_Position;
                    Qualif2: var GccEnt_Position; Qualif3: var GccEnt_Position) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc Tangency1*(this: Geom2dGcc_Circ2d3TanIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc Tangency2*(this: Geom2dGcc_Circ2d3TanIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc Tangency3*(this: Geom2dGcc_Circ2d3TanIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency3", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc IsTheSame1*(this: Geom2dGcc_Circ2d3TanIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc IsTheSame2*(this: Geom2dGcc_Circ2d3TanIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
proc IsTheSame3*(this: Geom2dGcc_Circ2d3TanIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsTheSame3", header: "Geom2dGcc_Circ2d3TanIter.hxx".}
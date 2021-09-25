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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QualifiedCurve"
discard "forward decl of Geom2d_Point"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2dTanCen* {.importcpp: "Geom2dGcc_Circ2dTanCen",
                          header: "Geom2dGcc_Circ2dTanCen.hxx", bycopy.} = object ## !
                                                                             ## Constructs one or
                                                                             ## more 2D
                                                                             ## circles
                                                                             ## tangential to the
                                                                             ## !
                                                                             ## curve
                                                                             ## Qualified1 and
                                                                             ## centered on the
                                                                             ## point
                                                                             ## Pcenter.
                                                                             ## !
                                                                             ## Tolerance is a
                                                                             ## tolerance
                                                                             ## criterion
                                                                             ## used by the
                                                                             ## algorithm
                                                                             ## ! to
                                                                             ## find a
                                                                             ## solution
                                                                             ## when,
                                                                             ## mathematically, the
                                                                             ## problem
                                                                             ## !
                                                                             ## posed
                                                                             ## does not
                                                                             ## have a
                                                                             ## solution, but
                                                                             ## where
                                                                             ## there is
                                                                             ## !
                                                                             ## numeric
                                                                             ## uncertainty
                                                                             ## attached to the
                                                                             ## arguments.
                                                                             ## !
                                                                             ## Tolerance is
                                                                             ## only
                                                                             ## used in
                                                                             ## these
                                                                             ## algorithms in
                                                                             ## very
                                                                             ## !
                                                                             ## specific
                                                                             ## cases
                                                                             ## where the
                                                                             ## center of the
                                                                             ## solution is
                                                                             ## very
                                                                             ## !
                                                                             ## close to the
                                                                             ## circle to
                                                                             ## which it is
                                                                             ## tangential, and
                                                                             ## where the
                                                                             ## !
                                                                             ## solution is
                                                                             ## thus a
                                                                             ## very
                                                                             ## small
                                                                             ## circle.
                                                                             ## !
                                                                             ## Exceptions
                                                                             ## !
                                                                             ## GccEnt_BadQualifier if a
                                                                             ## qualifier is
                                                                             ## inconsistent
                                                                             ## with
                                                                             ## ! the
                                                                             ## argument it
                                                                             ## qualifies
                                                                             ## (for
                                                                             ## example,
                                                                             ## enclosing for a
                                                                             ## line).


proc constructGeom2dGccCirc2dTanCen*(qualified1: Geom2dGccQualifiedCurve;
                                    pcenter: Handle[Geom2dPoint]; tolerance: float): Geom2dGccCirc2dTanCen {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanCen(@)",
    header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc isDone*(this: Geom2dGccCirc2dTanCen): bool {.noSideEffect, importcpp: "IsDone",
    header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2dTanCen): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc thisSolution*(this: Geom2dGccCirc2dTanCen; index: int): Circ2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2dTanCen; index: int;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc tangency1*(this: Geom2dGccCirc2dTanCen; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2dTanCen.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2dTanCen; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2dTanCen.hxx".}

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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NegativeValue"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  Geom2dGccCirc2d2TanRadGeo* {.importcpp: "Geom2dGcc_Circ2d2TanRadGeo",
                              header: "Geom2dGcc_Circ2d2TanRadGeo.hxx", bycopy.} = object ##
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
                                                                                     ## TANgent
                                                                                     ## to
                                                                                     ## a
                                                                                     ## 2d
                                                                                     ## circle
                                                                                     ## and
                                                                                     ## a
                                                                                     ## curve
                                                                                     ##
                                                                                     ## !
                                                                                     ## with
                                                                                     ## a
                                                                                     ## radius
                                                                                     ## of
                                                                                     ## Radius.
                                                                                     ##
                                                                                     ## !
                                                                                     ## It
                                                                                     ## raises
                                                                                     ## NegativeValue
                                                                                     ## if
                                                                                     ## Radius
                                                                                     ## is
                                                                                     ## lower
                                                                                     ## than
                                                                                     ## zero.


proc constructGeom2dGccCirc2d2TanRadGeo*(qualified1: GccEntQualifiedCirc;
                                        qualified2: Geom2dGccQCurve;
                                        radius: float; tolerance: float): Geom2dGccCirc2d2TanRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRadGeo(@)",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc constructGeom2dGccCirc2d2TanRadGeo*(qualified1: GccEntQualifiedLin;
                                        qualified2: Geom2dGccQCurve;
                                        radius: float; tolerance: float): Geom2dGccCirc2d2TanRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRadGeo(@)",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc constructGeom2dGccCirc2d2TanRadGeo*(qualified1: Geom2dGccQCurve;
                                        qualified2: Geom2dGccQCurve;
                                        radius: float; tolerance: float): Geom2dGccCirc2d2TanRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRadGeo(@)",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc constructGeom2dGccCirc2d2TanRadGeo*(qualified1: Geom2dGccQCurve;
                                        point2: Pnt2d; radius: float;
                                        tolerance: float): Geom2dGccCirc2d2TanRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2d2TanRadGeo(@)",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc isDone*(this: Geom2dGccCirc2d2TanRadGeo): bool {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2d2TanRadGeo): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc thisSolution*(this: Geom2dGccCirc2d2TanRadGeo; index: int): Circ2d {.
    noSideEffect, importcpp: "ThisSolution",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2d2TanRadGeo; index: int;
                    qualif1: var GccEntPosition; qualif2: var GccEntPosition) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc tangency1*(this: Geom2dGccCirc2d2TanRadGeo; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc tangency2*(this: Geom2dGccCirc2d2TanRadGeo; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency2", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2d2TanRadGeo; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}
proc isTheSame2*(this: Geom2dGccCirc2d2TanRadGeo; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame2", header: "Geom2dGcc_Circ2d2TanRadGeo.hxx".}

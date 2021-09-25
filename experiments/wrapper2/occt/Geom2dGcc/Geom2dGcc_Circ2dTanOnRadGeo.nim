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

discard "forward decl of Standard_NegativeValue"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGccCirc2dTanOnRadGeo* {.importcpp: "Geom2dGcc_Circ2dTanOnRadGeo",
                               header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## This
                                                                                       ## methods
                                                                                       ## implements
                                                                                       ## the
                                                                                       ## algorithms
                                                                                       ## used
                                                                                       ## to
                                                                                       ## create
                                                                                       ##
                                                                                       ## !
                                                                                       ## 2d
                                                                                       ## Circles
                                                                                       ## tangent
                                                                                       ## to
                                                                                       ## a
                                                                                       ## curve
                                                                                       ## and
                                                                                       ## centered
                                                                                       ## on
                                                                                       ## a
                                                                                       ## 2d
                                                                                       ## Line
                                                                                       ##
                                                                                       ## !
                                                                                       ## with
                                                                                       ## a
                                                                                       ## given
                                                                                       ## radius.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Tolerance
                                                                                       ## is
                                                                                       ## used
                                                                                       ## to
                                                                                       ## find
                                                                                       ## solution
                                                                                       ## in
                                                                                       ## every
                                                                                       ## limit
                                                                                       ## cases.
                                                                                       ##
                                                                                       ## !
                                                                                       ## raises
                                                                                       ## NegativeValue
                                                                                       ## in
                                                                                       ## case
                                                                                       ## of
                                                                                       ## NegativeRadius.


proc constructGeom2dGccCirc2dTanOnRadGeo*(qualified1: Geom2dGccQCurve;
    onLine: Lin2d; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGccCirc2dTanOnRadGeo*(qualified1: Geom2dGccQCurve;
    onCirc: Circ2d; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGccCirc2dTanOnRadGeo*(qualified1: GccEntQualifiedCirc;
    onCurv: Geom2dAdaptorCurve; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGccCirc2dTanOnRadGeo*(qualified1: GccEntQualifiedLin;
    onCurv: Geom2dAdaptorCurve; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGccCirc2dTanOnRadGeo*(qualified1: Geom2dGccQCurve;
    onCurv: Geom2dAdaptorCurve; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc constructGeom2dGccCirc2dTanOnRadGeo*(point1: Pnt2d;
    onCurv: Geom2dAdaptorCurve; radius: float; tolerance: float): Geom2dGccCirc2dTanOnRadGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanOnRadGeo(@)",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc isDone*(this: Geom2dGccCirc2dTanOnRadGeo): bool {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2dTanOnRadGeo): int {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc thisSolution*(this: Geom2dGccCirc2dTanOnRadGeo; index: int): Circ2d {.
    noSideEffect, importcpp: "ThisSolution",
    header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2dTanOnRadGeo; index: int;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc tangency1*(this: Geom2dGccCirc2dTanOnRadGeo; index: int; parSol: var float;
               parArg: var float; pntSol: var Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc centerOn3*(this: Geom2dGccCirc2dTanOnRadGeo; index: int; parArg: var float;
               pntSol: var Pnt2d) {.noSideEffect, importcpp: "CenterOn3",
                                 header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}
proc isTheSame1*(this: Geom2dGccCirc2dTanOnRadGeo; index: int): bool {.noSideEffect,
    importcpp: "IsTheSame1", header: "Geom2dGcc_Circ2dTanOnRadGeo.hxx".}

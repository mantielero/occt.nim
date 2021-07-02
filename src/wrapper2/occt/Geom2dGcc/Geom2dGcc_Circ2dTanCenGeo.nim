##  Created on: 1991-03-28
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
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Circ2d"
type
  Geom2dGccCirc2dTanCenGeo* {.importcpp: "Geom2dGcc_Circ2dTanCenGeo",
                             header: "Geom2dGcc_Circ2dTanCenGeo.hxx", bycopy.} = object ##
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
                                                                                   ## a
                                                                                   ## circle
                                                                                   ## and
                                                                                   ##
                                                                                   ## !
                                                                                   ## centered
                                                                                   ## on
                                                                                   ## a
                                                                                   ## point.


proc constructGeom2dGccCirc2dTanCenGeo*(qualified1: Geom2dGccQCurve;
                                       pcenter: GpPnt2d; tolerance: StandardReal): Geom2dGccCirc2dTanCenGeo {.
    constructor, importcpp: "Geom2dGcc_Circ2dTanCenGeo(@)",
    header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}
proc isDone*(this: Geom2dGccCirc2dTanCenGeo): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}
proc nbSolutions*(this: Geom2dGccCirc2dTanCenGeo): StandardInteger {.noSideEffect,
    importcpp: "NbSolutions", header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}
proc thisSolution*(this: Geom2dGccCirc2dTanCenGeo; index: StandardInteger): GpCirc2d {.
    noSideEffect, importcpp: "ThisSolution",
    header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}
proc whichQualifier*(this: Geom2dGccCirc2dTanCenGeo; index: StandardInteger;
                    qualif1: var GccEntPosition) {.noSideEffect,
    importcpp: "WhichQualifier", header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}
proc tangency1*(this: Geom2dGccCirc2dTanCenGeo; index: StandardInteger;
               parSol: var StandardReal; parArg: var StandardReal; pntSol: var GpPnt2d) {.
    noSideEffect, importcpp: "Tangency1", header: "Geom2dGcc_Circ2dTanCenGeo.hxx".}


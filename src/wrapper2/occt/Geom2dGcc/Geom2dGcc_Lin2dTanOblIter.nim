##  Created on: 1991-04-24
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, ../gp/gp_Lin2d,
  ../GccEnt/GccEnt_Position, ../gp/gp_Pnt2d, ../Standard/Standard_Real

discard "forward decl of GccEnt_BadQualifier"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2dGcc_IsParallel"
discard "forward decl of Geom2dGcc_QCurve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
type
  Geom2dGcc_Lin2dTanOblIter* {.importcpp: "Geom2dGcc_Lin2dTanOblIter",
                              header: "Geom2dGcc_Lin2dTanOblIter.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## This
                                                                                    ## class
                                                                                    ## implements
                                                                                    ## the
                                                                                    ## algorithm
                                                                                    ## used
                                                                                    ## to
                                                                                    ##
                                                                                    ## !
                                                                                    ## create
                                                                                    ## 2d
                                                                                    ## line
                                                                                    ## tangent
                                                                                    ## to
                                                                                    ## a
                                                                                    ## curve
                                                                                    ## and
                                                                                    ## doing
                                                                                    ## an
                                                                                    ##
                                                                                    ## !
                                                                                    ## angle
                                                                                    ## Angle
                                                                                    ## with
                                                                                    ## the
                                                                                    ## line
                                                                                    ## TheLin.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Angle
                                                                                    ## must
                                                                                    ## be
                                                                                    ## in
                                                                                    ## Radian.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Param2
                                                                                    ## is
                                                                                    ## the
                                                                                    ## initial
                                                                                    ## guess
                                                                                    ## on
                                                                                    ## the
                                                                                    ## curve
                                                                                    ## QualifiedCurv.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Tolang
                                                                                    ## is
                                                                                    ## the
                                                                                    ## angular
                                                                                    ## tolerance.


proc constructGeom2dGcc_Lin2dTanOblIter*(Qualified1: Geom2dGcc_QCurve;
                                        TheLin: gp_Lin2d; Param1: Standard_Real;
                                        TolAng: Standard_Real;
                                        Angle: Standard_Real = 0): Geom2dGcc_Lin2dTanOblIter {.
    constructor, importcpp: "Geom2dGcc_Lin2dTanOblIter(@)",
    header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc IsDone*(this: Geom2dGcc_Lin2dTanOblIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc ThisSolution*(this: Geom2dGcc_Lin2dTanOblIter): gp_Lin2d {.noSideEffect,
    importcpp: "ThisSolution", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc WhichQualifier*(this: Geom2dGcc_Lin2dTanOblIter; Qualif1: var GccEnt_Position) {.
    noSideEffect, importcpp: "WhichQualifier",
    header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc Tangency1*(this: Geom2dGcc_Lin2dTanOblIter; ParSol: var Standard_Real;
               ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Tangency1", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc Intersection2*(this: Geom2dGcc_Lin2dTanOblIter; ParSol: var Standard_Real;
                   ParArg: var Standard_Real; PntSol: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Intersection2", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
proc IsParallel2*(this: Geom2dGcc_Lin2dTanOblIter): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel2", header: "Geom2dGcc_Lin2dTanOblIter.hxx".}
##  Created on: 1996-04-16
##  Created by: Joelle CHAUVET
##  Copyright (c) 1996-1999 Matra Datavision
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

## ! contains  all the  parameters  for approximation
## ! ( tolerancy, computing option, ...)

type
  AdvApp2VarContext* {.importcpp: "AdvApp2Var_Context",
                      header: "AdvApp2Var_Context.hxx", bycopy.} = object


proc constructAdvApp2VarContext*(): AdvApp2VarContext {.constructor,
    importcpp: "AdvApp2Var_Context(@)", header: "AdvApp2Var_Context.hxx".}
proc constructAdvApp2VarContext*(ifav: StandardInteger; iu: StandardInteger;
                                iv: StandardInteger; nlimu: StandardInteger;
                                nlimv: StandardInteger; iprecis: StandardInteger;
                                nb1Dss: StandardInteger; nb2Dss: StandardInteger;
                                nb3Dss: StandardInteger;
                                tol1D: Handle[TColStdHArray1OfReal];
                                tol2D: Handle[TColStdHArray1OfReal];
                                tol3D: Handle[TColStdHArray1OfReal];
                                tof1D: Handle[TColStdHArray2OfReal];
                                tof2D: Handle[TColStdHArray2OfReal];
                                tof3D: Handle[TColStdHArray2OfReal]): AdvApp2VarContext {.
    constructor, importcpp: "AdvApp2Var_Context(@)",
    header: "AdvApp2Var_Context.hxx".}
proc totalDimension*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "TotalDimension", header: "AdvApp2Var_Context.hxx".}
proc totalNumberSSP*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "TotalNumberSSP", header: "AdvApp2Var_Context.hxx".}
proc favorIso*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "FavorIso", header: "AdvApp2Var_Context.hxx".}
proc uOrder*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "UOrder", header: "AdvApp2Var_Context.hxx".}
proc vOrder*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "VOrder", header: "AdvApp2Var_Context.hxx".}
proc uLimit*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "ULimit", header: "AdvApp2Var_Context.hxx".}
proc vLimit*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "VLimit", header: "AdvApp2Var_Context.hxx".}
proc uJacDeg*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "UJacDeg", header: "AdvApp2Var_Context.hxx".}
proc vJacDeg*(this: AdvApp2VarContext): StandardInteger {.noSideEffect,
    importcpp: "VJacDeg", header: "AdvApp2Var_Context.hxx".}
proc uJacMax*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "UJacMax", header: "AdvApp2Var_Context.hxx".}
proc vJacMax*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "VJacMax", header: "AdvApp2Var_Context.hxx".}
proc uRoots*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "URoots", header: "AdvApp2Var_Context.hxx".}
proc vRoots*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "VRoots", header: "AdvApp2Var_Context.hxx".}
proc uGauss*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "UGauss", header: "AdvApp2Var_Context.hxx".}
proc vGauss*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "VGauss", header: "AdvApp2Var_Context.hxx".}
proc iToler*(this: AdvApp2VarContext): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "IToler", header: "AdvApp2Var_Context.hxx".}
proc fToler*(this: AdvApp2VarContext): Handle[TColStdHArray2OfReal] {.noSideEffect,
    importcpp: "FToler", header: "AdvApp2Var_Context.hxx".}
proc cToler*(this: AdvApp2VarContext): Handle[TColStdHArray2OfReal] {.noSideEffect,
    importcpp: "CToler", header: "AdvApp2Var_Context.hxx".}


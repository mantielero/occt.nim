##  Created on: 1996-04-10
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of AdvApp2Var_Patch"
type
  AdvApp2VarNetwork* {.importcpp: "AdvApp2Var_Network",
                      header: "AdvApp2Var_Network.hxx", bycopy.} = object


proc constructAdvApp2VarNetwork*(): AdvApp2VarNetwork {.constructor,
    importcpp: "AdvApp2Var_Network(@)", header: "AdvApp2Var_Network.hxx".}
proc constructAdvApp2VarNetwork*(net: AdvApp2VarSequenceOfPatch;
                                theU: TColStdSequenceOfReal;
                                theV: TColStdSequenceOfReal): AdvApp2VarNetwork {.
    constructor, importcpp: "AdvApp2Var_Network(@)",
    header: "AdvApp2Var_Network.hxx".}
proc firstNotApprox*(this: AdvApp2VarNetwork; index: var cint): bool {.noSideEffect,
    importcpp: "FirstNotApprox", header: "AdvApp2Var_Network.hxx".}
proc changePatch*(this: var AdvApp2VarNetwork; index: cint): var AdvApp2VarPatch {.
    importcpp: "ChangePatch", header: "AdvApp2Var_Network.hxx".}
proc `()`*(this: var AdvApp2VarNetwork; index: cint): var AdvApp2VarPatch {.
    importcpp: "#(@)", header: "AdvApp2Var_Network.hxx".}
proc updateInU*(this: var AdvApp2VarNetwork; cuttingValue: cfloat) {.
    importcpp: "UpdateInU", header: "AdvApp2Var_Network.hxx".}
proc updateInV*(this: var AdvApp2VarNetwork; cuttingValue: cfloat) {.
    importcpp: "UpdateInV", header: "AdvApp2Var_Network.hxx".}
proc sameDegree*(this: var AdvApp2VarNetwork; iu: cint; iv: cint; ncfu: var cint;
                ncfv: var cint) {.importcpp: "SameDegree",
                               header: "AdvApp2Var_Network.hxx".}
proc nbPatch*(this: AdvApp2VarNetwork): cint {.noSideEffect, importcpp: "NbPatch",
    header: "AdvApp2Var_Network.hxx".}
proc nbPatchInU*(this: AdvApp2VarNetwork): cint {.noSideEffect,
    importcpp: "NbPatchInU", header: "AdvApp2Var_Network.hxx".}
proc nbPatchInV*(this: AdvApp2VarNetwork): cint {.noSideEffect,
    importcpp: "NbPatchInV", header: "AdvApp2Var_Network.hxx".}
proc uParameter*(this: AdvApp2VarNetwork; index: cint): cfloat {.noSideEffect,
    importcpp: "UParameter", header: "AdvApp2Var_Network.hxx".}
proc vParameter*(this: AdvApp2VarNetwork; index: cint): cfloat {.noSideEffect,
    importcpp: "VParameter", header: "AdvApp2Var_Network.hxx".}
proc patch*(this: AdvApp2VarNetwork; uIndex: cint; vIndex: cint): AdvApp2VarPatch {.
    noSideEffect, importcpp: "Patch", header: "AdvApp2Var_Network.hxx".}
proc `()`*(this: AdvApp2VarNetwork; uIndex: cint; vIndex: cint): AdvApp2VarPatch {.
    noSideEffect, importcpp: "#(@)", header: "AdvApp2Var_Network.hxx".}


























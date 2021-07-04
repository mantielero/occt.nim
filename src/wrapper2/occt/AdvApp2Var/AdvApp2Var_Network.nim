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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, AdvApp2Var_SequenceOfPatch,
  ../TColStd/TColStd_SequenceOfReal, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of AdvApp2Var_Patch"
type
  AdvApp2Var_Network* {.importcpp: "AdvApp2Var_Network",
                       header: "AdvApp2Var_Network.hxx", bycopy.} = object


proc constructAdvApp2Var_Network*(): AdvApp2Var_Network {.constructor,
    importcpp: "AdvApp2Var_Network(@)", header: "AdvApp2Var_Network.hxx".}
proc constructAdvApp2Var_Network*(Net: AdvApp2Var_SequenceOfPatch;
                                 TheU: TColStd_SequenceOfReal;
                                 TheV: TColStd_SequenceOfReal): AdvApp2Var_Network {.
    constructor, importcpp: "AdvApp2Var_Network(@)",
    header: "AdvApp2Var_Network.hxx".}
proc FirstNotApprox*(this: AdvApp2Var_Network; Index: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "FirstNotApprox", header: "AdvApp2Var_Network.hxx".}
proc ChangePatch*(this: var AdvApp2Var_Network; Index: Standard_Integer): var AdvApp2Var_Patch {.
    importcpp: "ChangePatch", header: "AdvApp2Var_Network.hxx".}
proc `()`*(this: var AdvApp2Var_Network; Index: Standard_Integer): var AdvApp2Var_Patch {.
    importcpp: "#(@)", header: "AdvApp2Var_Network.hxx".}
proc UpdateInU*(this: var AdvApp2Var_Network; CuttingValue: Standard_Real) {.
    importcpp: "UpdateInU", header: "AdvApp2Var_Network.hxx".}
proc UpdateInV*(this: var AdvApp2Var_Network; CuttingValue: Standard_Real) {.
    importcpp: "UpdateInV", header: "AdvApp2Var_Network.hxx".}
proc SameDegree*(this: var AdvApp2Var_Network; iu: Standard_Integer;
                iv: Standard_Integer; ncfu: var Standard_Integer;
                ncfv: var Standard_Integer) {.importcpp: "SameDegree",
    header: "AdvApp2Var_Network.hxx".}
proc NbPatch*(this: AdvApp2Var_Network): Standard_Integer {.noSideEffect,
    importcpp: "NbPatch", header: "AdvApp2Var_Network.hxx".}
proc NbPatchInU*(this: AdvApp2Var_Network): Standard_Integer {.noSideEffect,
    importcpp: "NbPatchInU", header: "AdvApp2Var_Network.hxx".}
proc NbPatchInV*(this: AdvApp2Var_Network): Standard_Integer {.noSideEffect,
    importcpp: "NbPatchInV", header: "AdvApp2Var_Network.hxx".}
proc UParameter*(this: AdvApp2Var_Network; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "UParameter", header: "AdvApp2Var_Network.hxx".}
proc VParameter*(this: AdvApp2Var_Network; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "VParameter", header: "AdvApp2Var_Network.hxx".}
proc Patch*(this: AdvApp2Var_Network; UIndex: Standard_Integer;
           VIndex: Standard_Integer): AdvApp2Var_Patch {.noSideEffect,
    importcpp: "Patch", header: "AdvApp2Var_Network.hxx".}
proc `()`*(this: AdvApp2Var_Network; UIndex: Standard_Integer;
          VIndex: Standard_Integer): AdvApp2Var_Patch {.noSideEffect,
    importcpp: "#(@)", header: "AdvApp2Var_Network.hxx".}
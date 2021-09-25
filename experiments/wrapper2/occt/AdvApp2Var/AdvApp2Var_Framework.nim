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
discard "forward decl of AdvApp2Var_Iso"
discard "forward decl of AdvApp2Var_Node"
type
  AdvApp2VarFramework* {.importcpp: "AdvApp2Var_Framework",
                        header: "AdvApp2Var_Framework.hxx", bycopy.} = object


proc constructAdvApp2VarFramework*(): AdvApp2VarFramework {.constructor,
    importcpp: "AdvApp2Var_Framework(@)", header: "AdvApp2Var_Framework.hxx".}
proc constructAdvApp2VarFramework*(frame: AdvApp2VarSequenceOfNode;
                                  uFrontier: AdvApp2VarSequenceOfStrip;
                                  vFrontier: AdvApp2VarSequenceOfStrip): AdvApp2VarFramework {.
    constructor, importcpp: "AdvApp2Var_Framework(@)",
    header: "AdvApp2Var_Framework.hxx".}
proc firstNotApprox*(this: AdvApp2VarFramework; indexIso: var int; indexStrip: var int): Handle[
    AdvApp2VarIso] {.noSideEffect, importcpp: "FirstNotApprox",
                    header: "AdvApp2Var_Framework.hxx".}
proc firstNode*(this: AdvApp2VarFramework; `type`: GeomAbsIsoType; indexIso: int;
               indexStrip: int): int {.noSideEffect, importcpp: "FirstNode",
                                    header: "AdvApp2Var_Framework.hxx".}
proc lastNode*(this: AdvApp2VarFramework; `type`: GeomAbsIsoType; indexIso: int;
              indexStrip: int): int {.noSideEffect, importcpp: "LastNode",
                                   header: "AdvApp2Var_Framework.hxx".}
proc changeIso*(this: var AdvApp2VarFramework; indexIso: int; indexStrip: int;
               anIso: Handle[AdvApp2VarIso]) {.importcpp: "ChangeIso",
    header: "AdvApp2Var_Framework.hxx".}
proc node*(this: AdvApp2VarFramework; indexNode: int): Handle[AdvApp2VarNode] {.
    noSideEffect, importcpp: "Node", header: "AdvApp2Var_Framework.hxx".}
proc node*(this: AdvApp2VarFramework; u: float; v: float): Handle[AdvApp2VarNode] {.
    noSideEffect, importcpp: "Node", header: "AdvApp2Var_Framework.hxx".}
proc isoU*(this: AdvApp2VarFramework; u: float; v0: float; v1: float): AdvApp2VarIso {.
    noSideEffect, importcpp: "IsoU", header: "AdvApp2Var_Framework.hxx".}
proc isoV*(this: AdvApp2VarFramework; u0: float; u1: float; v: float): AdvApp2VarIso {.
    noSideEffect, importcpp: "IsoV", header: "AdvApp2Var_Framework.hxx".}
proc updateInU*(this: var AdvApp2VarFramework; cuttingValue: float) {.
    importcpp: "UpdateInU", header: "AdvApp2Var_Framework.hxx".}
proc updateInV*(this: var AdvApp2VarFramework; cuttingValue: float) {.
    importcpp: "UpdateInV", header: "AdvApp2Var_Framework.hxx".}
proc uEquation*(this: AdvApp2VarFramework; indexIso: int; indexStrip: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "UEquation",
                           header: "AdvApp2Var_Framework.hxx".}
proc vEquation*(this: AdvApp2VarFramework; indexIso: int; indexStrip: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "VEquation",
                           header: "AdvApp2Var_Framework.hxx".}

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
  ../Standard/Standard_Handle, AdvApp2Var_SequenceOfNode,
  AdvApp2Var_SequenceOfStrip, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_IsoType,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of AdvApp2Var_Iso"
discard "forward decl of AdvApp2Var_Node"
type
  AdvApp2Var_Framework* {.importcpp: "AdvApp2Var_Framework",
                         header: "AdvApp2Var_Framework.hxx", bycopy.} = object


proc constructAdvApp2Var_Framework*(): AdvApp2Var_Framework {.constructor,
    importcpp: "AdvApp2Var_Framework(@)", header: "AdvApp2Var_Framework.hxx".}
proc constructAdvApp2Var_Framework*(Frame: AdvApp2Var_SequenceOfNode;
                                   UFrontier: AdvApp2Var_SequenceOfStrip;
                                   VFrontier: AdvApp2Var_SequenceOfStrip): AdvApp2Var_Framework {.
    constructor, importcpp: "AdvApp2Var_Framework(@)",
    header: "AdvApp2Var_Framework.hxx".}
proc FirstNotApprox*(this: AdvApp2Var_Framework; IndexIso: var Standard_Integer;
                    IndexStrip: var Standard_Integer): handle[AdvApp2Var_Iso] {.
    noSideEffect, importcpp: "FirstNotApprox", header: "AdvApp2Var_Framework.hxx".}
proc FirstNode*(this: AdvApp2Var_Framework; Type: GeomAbs_IsoType;
               IndexIso: Standard_Integer; IndexStrip: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FirstNode", header: "AdvApp2Var_Framework.hxx".}
proc LastNode*(this: AdvApp2Var_Framework; Type: GeomAbs_IsoType;
              IndexIso: Standard_Integer; IndexStrip: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LastNode", header: "AdvApp2Var_Framework.hxx".}
proc ChangeIso*(this: var AdvApp2Var_Framework; IndexIso: Standard_Integer;
               IndexStrip: Standard_Integer; anIso: handle[AdvApp2Var_Iso]) {.
    importcpp: "ChangeIso", header: "AdvApp2Var_Framework.hxx".}
proc Node*(this: AdvApp2Var_Framework; IndexNode: Standard_Integer): handle[
    AdvApp2Var_Node] {.noSideEffect, importcpp: "Node",
                      header: "AdvApp2Var_Framework.hxx".}
proc Node*(this: AdvApp2Var_Framework; U: Standard_Real; V: Standard_Real): handle[
    AdvApp2Var_Node] {.noSideEffect, importcpp: "Node",
                      header: "AdvApp2Var_Framework.hxx".}
proc IsoU*(this: AdvApp2Var_Framework; U: Standard_Real; V0: Standard_Real;
          V1: Standard_Real): AdvApp2Var_Iso {.noSideEffect, importcpp: "IsoU",
    header: "AdvApp2Var_Framework.hxx".}
proc IsoV*(this: AdvApp2Var_Framework; U0: Standard_Real; U1: Standard_Real;
          V: Standard_Real): AdvApp2Var_Iso {.noSideEffect, importcpp: "IsoV",
    header: "AdvApp2Var_Framework.hxx".}
proc UpdateInU*(this: var AdvApp2Var_Framework; CuttingValue: Standard_Real) {.
    importcpp: "UpdateInU", header: "AdvApp2Var_Framework.hxx".}
proc UpdateInV*(this: var AdvApp2Var_Framework; CuttingValue: Standard_Real) {.
    importcpp: "UpdateInV", header: "AdvApp2Var_Framework.hxx".}
proc UEquation*(this: AdvApp2Var_Framework; IndexIso: Standard_Integer;
               IndexStrip: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "UEquation", header: "AdvApp2Var_Framework.hxx".}
proc VEquation*(this: AdvApp2Var_Framework; IndexIso: Standard_Integer;
               IndexStrip: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "VEquation", header: "AdvApp2Var_Framework.hxx".}
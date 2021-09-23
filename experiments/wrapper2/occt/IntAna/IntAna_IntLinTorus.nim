##  Created on: 1991-05-16
##  Created by: Isabelle GRIGNON
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../gp/gp_Pnt, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Pnt"
type
  IntAna_IntLinTorus* {.importcpp: "IntAna_IntLinTorus",
                       header: "IntAna_IntLinTorus.hxx", bycopy.} = object


proc constructIntAna_IntLinTorus*(): IntAna_IntLinTorus {.constructor,
    importcpp: "IntAna_IntLinTorus(@)", header: "IntAna_IntLinTorus.hxx".}
proc constructIntAna_IntLinTorus*(L: gp_Lin; T: gp_Torus): IntAna_IntLinTorus {.
    constructor, importcpp: "IntAna_IntLinTorus(@)",
    header: "IntAna_IntLinTorus.hxx".}
proc Perform*(this: var IntAna_IntLinTorus; L: gp_Lin; T: gp_Torus) {.
    importcpp: "Perform", header: "IntAna_IntLinTorus.hxx".}
proc IsDone*(this: IntAna_IntLinTorus): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_IntLinTorus.hxx".}
proc NbPoints*(this: IntAna_IntLinTorus): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntAna_IntLinTorus.hxx".}
proc Value*(this: IntAna_IntLinTorus; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Value", header: "IntAna_IntLinTorus.hxx".}
proc ParamOnLine*(this: IntAna_IntLinTorus; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "ParamOnLine", header: "IntAna_IntLinTorus.hxx".}
proc ParamOnTorus*(this: IntAna_IntLinTorus; Index: Standard_Integer;
                  FI: var Standard_Real; THETA: var Standard_Real) {.noSideEffect,
    importcpp: "ParamOnTorus", header: "IntAna_IntLinTorus.hxx".}
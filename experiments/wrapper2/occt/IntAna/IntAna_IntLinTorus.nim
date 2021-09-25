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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Pnt"
type
  IntAnaIntLinTorus* {.importcpp: "IntAna_IntLinTorus",
                      header: "IntAna_IntLinTorus.hxx", bycopy.} = object


proc constructIntAnaIntLinTorus*(): IntAnaIntLinTorus {.constructor,
    importcpp: "IntAna_IntLinTorus(@)", header: "IntAna_IntLinTorus.hxx".}
proc constructIntAnaIntLinTorus*(L: Lin; t: Torus): IntAnaIntLinTorus {.constructor,
    importcpp: "IntAna_IntLinTorus(@)", header: "IntAna_IntLinTorus.hxx".}
proc perform*(this: var IntAnaIntLinTorus; L: Lin; t: Torus) {.importcpp: "Perform",
    header: "IntAna_IntLinTorus.hxx".}
proc isDone*(this: IntAnaIntLinTorus): bool {.noSideEffect, importcpp: "IsDone",
    header: "IntAna_IntLinTorus.hxx".}
proc nbPoints*(this: IntAnaIntLinTorus): int {.noSideEffect, importcpp: "NbPoints",
    header: "IntAna_IntLinTorus.hxx".}
proc value*(this: IntAnaIntLinTorus; index: int): Pnt {.noSideEffect,
    importcpp: "Value", header: "IntAna_IntLinTorus.hxx".}
proc paramOnLine*(this: IntAnaIntLinTorus; index: int): float {.noSideEffect,
    importcpp: "ParamOnLine", header: "IntAna_IntLinTorus.hxx".}
proc paramOnTorus*(this: IntAnaIntLinTorus; index: int; fi: var float; theta: var float) {.
    noSideEffect, importcpp: "ParamOnTorus", header: "IntAna_IntLinTorus.hxx".}

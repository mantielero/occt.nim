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
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
type
  IntAnaInt3Pln* {.importcpp: "IntAna_Int3Pln", header: "IntAna_Int3Pln.hxx", bycopy.} = object


proc constructIntAnaInt3Pln*(): IntAnaInt3Pln {.constructor,
    importcpp: "IntAna_Int3Pln(@)", header: "IntAna_Int3Pln.hxx".}
proc constructIntAnaInt3Pln*(p1: GpPln; p2: GpPln; p3: GpPln): IntAnaInt3Pln {.
    constructor, importcpp: "IntAna_Int3Pln(@)", header: "IntAna_Int3Pln.hxx".}
proc perform*(this: var IntAnaInt3Pln; p1: GpPln; p2: GpPln; p3: GpPln) {.
    importcpp: "Perform", header: "IntAna_Int3Pln.hxx".}
proc isDone*(this: IntAnaInt3Pln): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "IntAna_Int3Pln.hxx".}
proc isEmpty*(this: IntAnaInt3Pln): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "IntAna_Int3Pln.hxx".}
proc value*(this: IntAnaInt3Pln): GpPnt {.noSideEffect, importcpp: "Value",
                                      header: "IntAna_Int3Pln.hxx".}


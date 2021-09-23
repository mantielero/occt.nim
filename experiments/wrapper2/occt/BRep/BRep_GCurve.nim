##  Created on: 1995-03-09
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  BRep_CurveRepresentation

discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_GCurve"
discard "forward decl of BRep_GCurve"
type
  Handle_BRep_GCurve* = handle[BRep_GCurve]

## ! Root   class    for    the    geometric     curves
## ! representation. Contains a range.
## ! Contains a first and a last parameter.

type
  BRep_GCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRep_CurveRepresentation


proc SetRange*(this: var BRep_GCurve; First: Standard_Real; Last: Standard_Real) {.
    importcpp: "SetRange", header: "BRep_GCurve.hxx".}
proc Range*(this: BRep_GCurve; First: var Standard_Real; Last: var Standard_Real) {.
    noSideEffect, importcpp: "Range", header: "BRep_GCurve.hxx".}
proc First*(this: BRep_GCurve): Standard_Real {.noSideEffect, importcpp: "First",
    header: "BRep_GCurve.hxx".}
proc Last*(this: BRep_GCurve): Standard_Real {.noSideEffect, importcpp: "Last",
    header: "BRep_GCurve.hxx".}
proc First*(this: var BRep_GCurve; F: Standard_Real) {.importcpp: "First",
    header: "BRep_GCurve.hxx".}
proc Last*(this: var BRep_GCurve; L: Standard_Real) {.importcpp: "Last",
    header: "BRep_GCurve.hxx".}
proc D0*(this: BRep_GCurve; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRep_GCurve.hxx".}
proc Update*(this: var BRep_GCurve) {.importcpp: "Update", header: "BRep_GCurve.hxx".}
proc DumpJson*(this: BRep_GCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_GCurve.hxx".}
type
  BRep_GCurvebase_type* = BRep_CurveRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_GCurve::get_type_name(@)",
                              header: "BRep_GCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_GCurve::get_type_descriptor(@)", header: "BRep_GCurve.hxx".}
proc DynamicType*(this: BRep_GCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_GCurve.hxx".}
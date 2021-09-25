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

discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_GCurve"
discard "forward decl of BRep_GCurve"
type
  HandleBRepGCurve* = Handle[BRepGCurve]

## ! Root   class    for    the    geometric     curves
## ! representation. Contains a range.
## ! Contains a first and a last parameter.

type
  BRepGCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRepCurveRepresentation


proc setRange*(this: var BRepGCurve; first: float; last: float) {.importcpp: "SetRange",
    header: "BRep_GCurve.hxx".}
proc range*(this: BRepGCurve; first: var float; last: var float) {.noSideEffect,
    importcpp: "Range", header: "BRep_GCurve.hxx".}
proc first*(this: BRepGCurve): float {.noSideEffect, importcpp: "First",
                                   header: "BRep_GCurve.hxx".}
proc last*(this: BRepGCurve): float {.noSideEffect, importcpp: "Last",
                                  header: "BRep_GCurve.hxx".}
proc first*(this: var BRepGCurve; f: float) {.importcpp: "First",
                                        header: "BRep_GCurve.hxx".}
proc last*(this: var BRepGCurve; L: float) {.importcpp: "Last",
                                       header: "BRep_GCurve.hxx".}
proc d0*(this: BRepGCurve; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "BRep_GCurve.hxx".}
proc update*(this: var BRepGCurve) {.importcpp: "Update", header: "BRep_GCurve.hxx".}
proc dumpJson*(this: BRepGCurve; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "BRep_GCurve.hxx".}
type
  BRepGCurvebaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_GCurve::get_type_name(@)",
                            header: "BRep_GCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_GCurve::get_type_descriptor(@)", header: "BRep_GCurve.hxx".}
proc dynamicType*(this: BRepGCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_GCurve.hxx".}

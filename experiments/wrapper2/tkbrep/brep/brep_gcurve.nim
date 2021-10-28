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
type
  HandleBRepGCurve* = Handle[BRepGCurve]

## ! Root   class    for    the    geometric     curves
## ! representation. Contains a range.
## ! Contains a first and a last parameter.

type
  BRepGCurve* {.importcpp: "BRep_GCurve", header: "BRep_GCurve.hxx", bycopy.} = object of BRepCurveRepresentation


proc setRange*(this: var BRepGCurve; first: cfloat; last: cfloat) {.cdecl,
    importcpp: "SetRange", dynlib: tkbrep.}
proc range*(this: BRepGCurve; first: var cfloat; last: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Range", dynlib: tkbrep.}
proc first*(this: BRepGCurve): cfloat {.noSideEffect, cdecl, importcpp: "First",
                                    dynlib: tkbrep.}
proc last*(this: BRepGCurve): cfloat {.noSideEffect, cdecl, importcpp: "Last",
                                   dynlib: tkbrep.}
proc first*(this: var BRepGCurve; f: cfloat) {.cdecl, importcpp: "First", dynlib: tkbrep.}
proc last*(this: var BRepGCurve; L: cfloat) {.cdecl, importcpp: "Last", dynlib: tkbrep.}
proc d0*(this: BRepGCurve; u: cfloat; p: var Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    dynlib: tkbrep.}
proc update*(this: var BRepGCurve) {.cdecl, importcpp: "Update", dynlib: tkbrep.}
proc dumpJson*(this: BRepGCurve; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkbrep.}
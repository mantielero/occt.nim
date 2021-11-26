##  Created on: 1995-03-14
##  Created by: Jacques GOUSSARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
type
  GeomAPI_IntSS* {.importcpp: "GeomAPI_IntSS", header: "GeomAPI_IntSS.hxx", bycopy.} = object


proc `new`*(this: var GeomAPI_IntSS; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_IntSS::operator new", header: "GeomAPI_IntSS.hxx".}
proc `delete`*(this: var GeomAPI_IntSS; theAddress: pointer) {.
    importcpp: "GeomAPI_IntSS::operator delete", header: "GeomAPI_IntSS.hxx".}
proc `new[]`*(this: var GeomAPI_IntSS; theSize: csize_t): pointer {.
    importcpp: "GeomAPI_IntSS::operator new[]", header: "GeomAPI_IntSS.hxx".}
proc `delete[]`*(this: var GeomAPI_IntSS; theAddress: pointer) {.
    importcpp: "GeomAPI_IntSS::operator delete[]", header: "GeomAPI_IntSS.hxx".}
proc `new`*(this: var GeomAPI_IntSS; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomAPI_IntSS::operator new", header: "GeomAPI_IntSS.hxx".}
proc `delete`*(this: var GeomAPI_IntSS; a2: pointer; a3: pointer) {.
    importcpp: "GeomAPI_IntSS::operator delete", header: "GeomAPI_IntSS.hxx".}
proc constructGeomAPI_IntSS*(): GeomAPI_IntSS {.constructor,
    importcpp: "GeomAPI_IntSS(@)", header: "GeomAPI_IntSS.hxx".}
proc constructGeomAPI_IntSS*(s1: Handle[GeomSurface]; s2: Handle[GeomSurface];
                            tol: StandardReal): GeomAPI_IntSS {.constructor,
    importcpp: "GeomAPI_IntSS(@)", header: "GeomAPI_IntSS.hxx".}
proc perform*(this: var GeomAPI_IntSS; s1: Handle[GeomSurface];
             s2: Handle[GeomSurface]; tol: StandardReal) {.importcpp: "Perform",
    header: "GeomAPI_IntSS.hxx".}
proc isDone*(this: GeomAPI_IntSS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_IntSS.hxx".}
proc nbLines*(this: GeomAPI_IntSS): int {.noSideEffect, importcpp: "NbLines",
                                      header: "GeomAPI_IntSS.hxx".}
proc line*(this: GeomAPI_IntSS; index: int): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Line", header: "GeomAPI_IntSS.hxx".}
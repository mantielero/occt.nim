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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GeomInt/GeomInt_IntSS,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of Geom_Curve"
type
  GeomAPI_IntSS* {.importcpp: "GeomAPI_IntSS", header: "GeomAPI_IntSS.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## object.
                                                                                      ## Use
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## function
                                                                                      ## Perform
                                                                                      ## for
                                                                                      ## further
                                                                                      ## initialization
                                                                                      ## algorithm
                                                                                      ## by
                                                                                      ## two
                                                                                      ## surfaces.


proc constructGeomAPI_IntSS*(): GeomAPI_IntSS {.constructor,
    importcpp: "GeomAPI_IntSS(@)", header: "GeomAPI_IntSS.hxx".}
proc constructGeomAPI_IntSS*(S1: handle[Geom_Surface]; S2: handle[Geom_Surface];
                            Tol: Standard_Real): GeomAPI_IntSS {.constructor,
    importcpp: "GeomAPI_IntSS(@)", header: "GeomAPI_IntSS.hxx".}
proc Perform*(this: var GeomAPI_IntSS; S1: handle[Geom_Surface];
             S2: handle[Geom_Surface]; Tol: Standard_Real) {.importcpp: "Perform",
    header: "GeomAPI_IntSS.hxx".}
proc IsDone*(this: GeomAPI_IntSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_IntSS.hxx".}
proc NbLines*(this: GeomAPI_IntSS): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "GeomAPI_IntSS.hxx".}
proc Line*(this: GeomAPI_IntSS; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Line", header: "GeomAPI_IntSS.hxx".}
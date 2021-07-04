##  Created on: 1995-09-12
##  Created by: Bruno DUMORTIER
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
  ../Standard/Standard_Handle, ../IntCurveSurface/IntCurveSurface_HInter,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Geom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
type
  GeomAPI_IntCS* {.importcpp: "GeomAPI_IntCS", header: "GeomAPI_IntCS.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
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
                                                                                      ## of
                                                                                      ## the
                                                                                      ## algorithm
                                                                                      ## by
                                                                                      ##
                                                                                      ## !
                                                                                      ## the
                                                                                      ## curve
                                                                                      ## and
                                                                                      ## the
                                                                                      ## surface.


proc constructGeomAPI_IntCS*(): GeomAPI_IntCS {.constructor,
    importcpp: "GeomAPI_IntCS(@)", header: "GeomAPI_IntCS.hxx".}
proc constructGeomAPI_IntCS*(C: handle[Geom_Curve]; S: handle[Geom_Surface]): GeomAPI_IntCS {.
    constructor, importcpp: "GeomAPI_IntCS(@)", header: "GeomAPI_IntCS.hxx".}
proc Perform*(this: var GeomAPI_IntCS; C: handle[Geom_Curve]; S: handle[Geom_Surface]) {.
    importcpp: "Perform", header: "GeomAPI_IntCS.hxx".}
proc IsDone*(this: GeomAPI_IntCS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_IntCS.hxx".}
proc NbPoints*(this: GeomAPI_IntCS): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_IntCS.hxx".}
proc Point*(this: GeomAPI_IntCS; Index: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "GeomAPI_IntCS.hxx".}
proc Parameters*(this: GeomAPI_IntCS; Index: Standard_Integer; U: var Standard_Real;
                V: var Standard_Real; W: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}
proc NbSegments*(this: GeomAPI_IntCS): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "GeomAPI_IntCS.hxx".}
proc Segment*(this: GeomAPI_IntCS; Index: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Segment", header: "GeomAPI_IntCS.hxx".}
proc Parameters*(this: GeomAPI_IntCS; Index: Standard_Integer; U1: var Standard_Real;
                V1: var Standard_Real; U2: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}
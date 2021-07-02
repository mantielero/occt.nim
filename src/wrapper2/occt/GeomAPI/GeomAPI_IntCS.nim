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
proc constructGeomAPI_IntCS*(c: Handle[GeomCurve]; s: Handle[GeomSurface]): GeomAPI_IntCS {.
    constructor, importcpp: "GeomAPI_IntCS(@)", header: "GeomAPI_IntCS.hxx".}
proc perform*(this: var GeomAPI_IntCS; c: Handle[GeomCurve]; s: Handle[GeomSurface]) {.
    importcpp: "Perform", header: "GeomAPI_IntCS.hxx".}
proc isDone*(this: GeomAPI_IntCS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomAPI_IntCS.hxx".}
proc nbPoints*(this: GeomAPI_IntCS): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_IntCS.hxx".}
proc point*(this: GeomAPI_IntCS; index: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "Point", header: "GeomAPI_IntCS.hxx".}
proc parameters*(this: GeomAPI_IntCS; index: StandardInteger; u: var StandardReal;
                v: var StandardReal; w: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}
proc nbSegments*(this: GeomAPI_IntCS): StandardInteger {.noSideEffect,
    importcpp: "NbSegments", header: "GeomAPI_IntCS.hxx".}
proc segment*(this: GeomAPI_IntCS; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Segment", header: "GeomAPI_IntCS.hxx".}
proc parameters*(this: GeomAPI_IntCS; index: StandardInteger; u1: var StandardReal;
                v1: var StandardReal; u2: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Parameters", header: "GeomAPI_IntCS.hxx".}


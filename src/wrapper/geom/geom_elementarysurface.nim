import ../gp/gp_types
import ../standard/standard_types
import geom_types
import ../geomabs/geomabs_types







##  Created on: 1993-03-10
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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





proc setAxis*(this: var GeomElementarySurface; theA1: Ax1Obj) {.cdecl,
    importcpp: "SetAxis", header: "Geom_ElementarySurface.hxx".}
proc setLocation*(this: var GeomElementarySurface; theLoc: gp_Pnt) {.cdecl,
    importcpp: "SetLocation", header: "Geom_ElementarySurface.hxx".}
proc setPosition*(this: var GeomElementarySurface; theAx3: Ax3Obj) {.cdecl,
    importcpp: "SetPosition", header: "Geom_ElementarySurface.hxx".}
proc axis*(this: GeomElementarySurface): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis",
    header: "Geom_ElementarySurface.hxx".}
proc location*(this: GeomElementarySurface): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Location", header: "Geom_ElementarySurface.hxx".}
proc position*(this: GeomElementarySurface): Ax3Obj {.noSideEffect, cdecl,
    importcpp: "Position", header: "Geom_ElementarySurface.hxx".}
proc uReverse*(this: var GeomElementarySurface) {.cdecl, importcpp: "UReverse",
    header: "Geom_ElementarySurface.hxx".}
proc uReversedParameter*(this: GeomElementarySurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_ElementarySurface.hxx".}
proc vReverse*(this: var GeomElementarySurface) {.cdecl, importcpp: "VReverse",
    header: "Geom_ElementarySurface.hxx".}
proc vReversedParameter*(this: GeomElementarySurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_ElementarySurface.hxx".}
proc continuity*(this: GeomElementarySurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_ElementarySurface.hxx".}
proc isCNu*(this: GeomElementarySurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_ElementarySurface.hxx".}
proc isCNv*(this: GeomElementarySurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_ElementarySurface.hxx".}
proc dumpJson*(this: GeomElementarySurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_ElementarySurface.hxx".}




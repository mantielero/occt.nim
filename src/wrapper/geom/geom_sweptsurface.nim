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





proc continuity*(this: GeomSweptSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_SweptSurface.hxx".}
proc direction*(this: GeomSweptSurface): gp_Dir {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Geom_SweptSurface.hxx".}
proc basisCurve*(this: GeomSweptSurface): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "BasisCurve", header: "Geom_SweptSurface.hxx".}
proc dumpJson*(this: GeomSweptSurface; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_SweptSurface.hxx".}




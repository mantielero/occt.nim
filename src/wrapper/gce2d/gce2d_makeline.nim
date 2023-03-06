import ../gp/gp_types
import ../standard/standard_types
import ../geom2d/geom2d_types
import gce2d_types





##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newGCE2dMakeLine*(a: Ax2dObj): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc newGCE2dMakeLine*(L: gp_Lin2d): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc newGCE2dMakeLine*(p: gp_Pnt2d; v: Dir2dObj): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc newGCE2dMakeLine*(lin: gp_Lin2d; point: gp_Pnt2d): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc newGCE2dMakeLine*(lin: gp_Lin2d; dist: cfloat): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc newGCE2dMakeLine*(p1: gp_Pnt2d; p2: gp_Pnt2d): GCE2dMakeLine {.cdecl, constructor,
    importcpp: "GCE2d_MakeLine(@)", header: "GCE2d_MakeLine.hxx".}
proc value*(this: GCE2dMakeLine): Handle[Geom2dLine] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GCE2d_MakeLine.hxx".}
converter `constopencascade`*(this: GCE2dMakeLine): Handle[Geom2dLine] {.
    noSideEffect, cdecl, importcpp: "GCE2d_MakeLine::operator constopencascade",
    header: "GCE2d_MakeLine.hxx".}



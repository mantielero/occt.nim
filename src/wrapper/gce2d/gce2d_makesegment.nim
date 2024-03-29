import ../gp/gp_types
import ../geom2d/geom2d_types
import ../standard/standard_types
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



proc segment*(p1: gp_Pnt2d; p2: gp_Pnt2d): GCE2dMakeSegment {.cdecl,
    importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}

proc segment*(p1: gp_Pnt2d; v: gp_Dir2d; p2: gp_Pnt2d): GCE2dMakeSegment {.cdecl,
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc segment*(line: gp_Lin2d; u1: cfloat; u2: cfloat): GCE2dMakeSegment {.
    cdecl, constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc segment*(line: gp_Lin2d; point: gp_Pnt2d; ulast: cfloat): GCE2dMakeSegment {.
    cdecl, constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc segment*(line: gp_Lin2d; p1: gp_Pnt2d; p2: gp_Pnt2d): GCE2dMakeSegment {.cdecl,
    constructor, importcpp: "GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}
proc value*(this: GCE2dMakeSegment): Handle[Geom2dTrimmedCurve] {.noSideEffect,
    cdecl, importcpp: "Value", header: "GCE2d_MakeSegment.hxx".}

converter toHandleGeom2dTrimmedCurve*(this: GCE2dMakeSegment): Handle[Geom2dTrimmedCurve] {.
    noSideEffect, cdecl,
    importcpp: "(Handle_Geom2d_TrimmedCurve)(#)", header: "GCE2d_MakeSegment.hxx".}



import gc_types

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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"


proc conicalSurface*(a2: Ax2Obj; ang: cfloat; radius: cfloat): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", header: "GC_MakeConicalSurface.hxx".}
proc conicalSurface*(c: ConeObj): MakeConicalSurface {.cdecl, constructor,
    importcpp: "GC_MakeConicalSurface(@)", header: "GC_MakeConicalSurface.hxx".}
proc conicalSurface*(p1: PntObj; p2: PntObj; p3: PntObj; p4: PntObj): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", header: "GC_MakeConicalSurface.hxx".}
proc conicalSurface*(p1: PntObj; p2: PntObj; r1: cfloat; r2: cfloat): MakeConicalSurface {.
    cdecl, constructor, importcpp: "GC_MakeConicalSurface(@)", header: "GC_MakeConicalSurface.hxx".}
proc value*(this: MakeConicalSurface): Handle[GeomConicalSurface] {.noSideEffect,
    cdecl, importcpp: "Value", header: "GC_MakeConicalSurface.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeConicalSurface): Handle[GeomConicalSurface] {.
    noSideEffect, cdecl,
    importcpp: "(Handle_Geom_TrimmedCurve)(#)",
    header: "GC_MakeConicalSurface.hxx".}

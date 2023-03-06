import gce_types
import ../gp/gp_types





##  Created on: 1992-08-26
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



proc newGceMakeCirc2d*(xAxis: gp_Ax2d; radius: cfloat; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(axis: gp_Ax22d; radius: cfloat): GceMakeCirc2d {.cdecl,
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(circ: gp_Circ2d; dist: cfloat): GceMakeCirc2d {.cdecl, constructor,
    importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(circ: gp_Circ2d; point: gp_Pnt2d): GceMakeCirc2d {.cdecl, constructor,
    importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(p1: gp_Pnt2d; p2: gp_Pnt2d; p3: gp_Pnt2d): GceMakeCirc2d {.cdecl,
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(center: gp_Pnt2d; radius: cfloat; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc newGceMakeCirc2d*(center: gp_Pnt2d; point: gp_Pnt2d; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc value*(this: GceMakeCirc2d): gp_Circ2d {.noSideEffect, cdecl, importcpp: "Value",
                                       header: "gce_MakeCirc2d.hxx".}
proc operator*(this: GceMakeCirc2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeCirc2d.hxx".}
converter `circ2d`*(this: GceMakeCirc2d): gp_Circ2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeCirc2d::operator gp_Circ2d", header: "gce_MakeCirc2d.hxx".}



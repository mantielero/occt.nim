import gc_types
import ../gp/gp_types
import ../standard/standard_types
import ../geom/geom_types





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



proc translation*(vect: VecObj): MakeTranslation {.cdecl, constructor,
    importcpp: "GC_MakeTranslation(@)", header: "GC_MakeTranslation.hxx".}
proc translation*(point1: PntObj; point2: PntObj): MakeTranslation {.cdecl,
    constructor, importcpp: "GC_MakeTranslation(@)", header: "GC_MakeTranslation.hxx".}
proc value*(this: MakeTranslation): Handle[GeomTransformation] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeTranslation.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeTranslation): Handle[GeomTransformation] {.
    noSideEffect, cdecl,
    importcpp: "(Handle_Geom_TrimmedCurve)(#)", header: "GC_MakeTranslation.hxx".}



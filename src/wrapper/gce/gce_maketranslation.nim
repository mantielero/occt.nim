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



proc newGceMakeTranslation*(vect: VecObj): GceMakeTranslation {.cdecl, constructor,
    importcpp: "gce_MakeTranslation(@)", header: "gce_MakeTranslation.hxx".}
proc newGceMakeTranslation*(point1: gp_Pnt; point2: gp_Pnt): GceMakeTranslation {.cdecl,
    constructor, importcpp: "gce_MakeTranslation(@)", header: "gce_MakeTranslation.hxx".}
proc value*(this: GceMakeTranslation): TrsfObj {.noSideEffect, cdecl, importcpp: "Value",
    header: "gce_MakeTranslation.hxx".}
proc operator*(this: GceMakeTranslation): TrsfObj {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeTranslation.hxx".}
converter `trsf`*(this: GceMakeTranslation): TrsfObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeTranslation::operator gp_Trsf", header: "gce_MakeTranslation.hxx".}



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



proc newGCE2dMakeTranslation*(vect: Vec2dObj): GCE2dMakeTranslation {.cdecl,
    constructor, importcpp: "GCE2d_MakeTranslation(@)", header: "GCE2d_MakeTranslation.hxx".}
proc newGCE2dMakeTranslation*(point1: Pnt2dObj; point2: Pnt2dObj): GCE2dMakeTranslation {.
    cdecl, constructor, importcpp: "GCE2d_MakeTranslation(@)", header: "GCE2d_MakeTranslation.hxx".}
proc value*(this: GCE2dMakeTranslation): Handle[Geom2dTransformation] {.
    noSideEffect, cdecl, importcpp: "Value", header: "GCE2d_MakeTranslation.hxx".}
converter `constopencascade`*(this: GCE2dMakeTranslation): Handle[
    Geom2dTransformation] {.noSideEffect, cdecl, importcpp: "GCE2d_MakeTranslation::operator constopencascade",
                           header: "GCE2d_MakeTranslation.hxx".}



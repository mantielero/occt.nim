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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
type
  GceMakeRotation2d* {.importcpp: "gce_MakeRotation2d",
                      header: "gce_MakeRotation2d.hxx", bycopy.} = object ## ! Constructs a rotation through angle Angle about the center Point.


proc newGceMakeRotation2d*(point: Pnt2dObj; angle: cfloat): GceMakeRotation2d {.cdecl,
    constructor, importcpp: "gce_MakeRotation2d(@)", header: "gce_MakeRotation2d.hxx".}
proc value*(this: GceMakeRotation2d): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Value", header: "gce_MakeRotation2d.hxx".}
proc operator*(this: GceMakeRotation2d): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "Operator", header: "gce_MakeRotation2d.hxx".}
converter `trsf2d`*(this: GceMakeRotation2d): Trsf2dObj {.noSideEffect, cdecl,
    importcpp: "gce_MakeRotation2d::operator gp_Trsf2d", header: "gce_MakeRotation2d.hxx".}
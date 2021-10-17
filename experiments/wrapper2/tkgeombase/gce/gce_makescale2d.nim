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
  GceMakeScale2d* {.importcpp: "gce_MakeScale2d", header: "gce_MakeScale2d.hxx",
                   bycopy.} = object ## ! Constructs a scaling transformation with:
                                  ## ! -   Point as the center of the transformation, and
                                  ## ! -   Scale as the scale factor.


proc newGceMakeScale2d*(point: Pnt2d; scale: cfloat): GceMakeScale2d {.cdecl,
    constructor, importcpp: "gce_MakeScale2d(@)", dynlib: tkmath.}
proc value*(this: GceMakeScale2d): Trsf2d {.noSideEffect, cdecl, importcpp: "Value",
                                        dynlib: tkmath.}
proc operator*(this: GceMakeScale2d): Trsf2d {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkmath.}
converter `trsf2d`*(this: GceMakeScale2d): Trsf2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeScale2d::operator gp_Trsf2d", dynlib: tkmath.}
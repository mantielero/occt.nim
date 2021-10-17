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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Hypr2d"
type
  GceMakeHypr2d* {.importcpp: "gce_MakeHypr2d", header: "gce_MakeHypr2d.hxx", bycopy.} = object of GceRoot ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## a
                                                                                                 ## hyperbola
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## centered
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ## Center,
                                                                                                 ## where:
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## axis
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## hyperbola
                                                                                                 ## is
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## Center
                                                                                                 ## and
                                                                                                 ## point
                                                                                                 ## S1,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## radius
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## distance
                                                                                                 ## between
                                                                                                 ## Center
                                                                                                 ## and
                                                                                                 ## S1,
                                                                                                 ## and
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## -
                                                                                                 ## the
                                                                                                 ## minor
                                                                                                 ## radius
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## distance
                                                                                                 ## between
                                                                                                 ## point
                                                                                                 ## S2
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## major
                                                                                                 ## axis.


proc newGceMakeHypr2d*(s1: Pnt2d; s2: Pnt2d; center: Pnt2d): GceMakeHypr2d {.cdecl,
    constructor, importcpp: "gce_MakeHypr2d(@)", dynlib: tkmath.}
proc newGceMakeHypr2d*(majorAxis: Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                      sense: bool): GceMakeHypr2d {.cdecl, constructor,
    importcpp: "gce_MakeHypr2d(@)", dynlib: tkmath.}
proc newGceMakeHypr2d*(a: Ax22d; majorRadius: cfloat; minorRadius: cfloat): GceMakeHypr2d {.
    cdecl, constructor, importcpp: "gce_MakeHypr2d(@)", dynlib: tkmath.}
proc value*(this: GceMakeHypr2d): Hypr2d {.noSideEffect, cdecl, importcpp: "Value",
                                       dynlib: tkmath.}
proc operator*(this: GceMakeHypr2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkmath.}
converter `hypr2d`*(this: GceMakeHypr2d): Hypr2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeHypr2d::operator gp_Hypr2d", dynlib: tkmath.}
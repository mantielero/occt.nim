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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  GceMakeCirc2d* {.importcpp: "gce_MakeCirc2d", header: "gce_MakeCirc2d.hxx", bycopy.} = object of GceRoot ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## location
                                                                                                 ## point
                                                                                                 ## of
                                                                                                 ## XAxis
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## center
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## circle.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Warnings
                                                                                                 ## :
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## It
                                                                                                 ## is
                                                                                                 ## not
                                                                                                 ## forbidden
                                                                                                 ## to
                                                                                                 ## create
                                                                                                 ## a
                                                                                                 ## circle
                                                                                                 ## with
                                                                                                 ## Radius
                                                                                                 ## =
                                                                                                 ## 0.0
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## If
                                                                                                 ## Sense
                                                                                                 ## is
                                                                                                 ## true
                                                                                                 ## the
                                                                                                 ## local
                                                                                                 ## coordinate
                                                                                                 ## system
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## solution
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## is
                                                                                                 ## direct
                                                                                                 ## and
                                                                                                 ## non
                                                                                                 ## direct
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## other
                                                                                                 ## case.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## status
                                                                                                 ## is
                                                                                                 ## "NegativeRadius"
                                                                                                 ## if
                                                                                                 ## Radius
                                                                                                 ## <
                                                                                                 ## 0.0.


proc newGceMakeCirc2d*(xAxis: Ax2d; radius: cfloat; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(axis: Ax22d; radius: cfloat): GceMakeCirc2d {.cdecl,
    constructor, importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(circ: Circ2d; dist: cfloat): GceMakeCirc2d {.cdecl, constructor,
    importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(circ: Circ2d; point: Pnt2d): GceMakeCirc2d {.cdecl, constructor,
    importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(p1: Pnt2d; p2: Pnt2d; p3: Pnt2d): GceMakeCirc2d {.cdecl,
    constructor, importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(center: Pnt2d; radius: cfloat; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc newGceMakeCirc2d*(center: Pnt2d; point: Pnt2d; sense: bool = true): GceMakeCirc2d {.
    cdecl, constructor, importcpp: "gce_MakeCirc2d(@)", dynlib: tkmath.}
proc value*(this: GceMakeCirc2d): Circ2d {.noSideEffect, cdecl, importcpp: "Value",
                                       dynlib: tkmath.}
proc operator*(this: GceMakeCirc2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkmath.}
converter `circ2d`*(this: GceMakeCirc2d): Circ2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeCirc2d::operator gp_Circ2d", dynlib: tkmath.}
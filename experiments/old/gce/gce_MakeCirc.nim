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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax1"
type
  GceMakeCirc* {.importcpp: "gce_MakeCirc", header: "gce_MakeCirc.hxx", bycopy.} = object of GceRoot ##
                                                                                           ## !
                                                                                           ## A2
                                                                                           ## locates
                                                                                           ## the
                                                                                           ## circle
                                                                                           ## and
                                                                                           ## gives
                                                                                           ## its
                                                                                           ## orientation
                                                                                           ## in
                                                                                           ## 3D
                                                                                           ## space.
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
                                                                                           ## The
                                                                                           ## status
                                                                                           ## is
                                                                                           ## "NegativeRadius"
                                                                                           ## if
                                                                                           ## Radius
                                                                                           ## <
                                                                                           ## 0.0


proc constructGceMakeCirc*(a2: Ax2; radius: cfloat): GceMakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(circ: Circ; dist: cfloat): GceMakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(circ: Circ; point: Pnt): GceMakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(p1: Pnt; p2: Pnt; p3: Pnt): GceMakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(center: Pnt; norm: Dir; radius: cfloat): GceMakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(center: Pnt; plane: Pln; radius: cfloat): GceMakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(center: Pnt; ptaxis: Pnt; radius: cfloat): GceMakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructGceMakeCirc*(axis: Ax1; radius: cfloat): GceMakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc value*(this: GceMakeCirc): Circ {.noSideEffect, importcpp: "Value",
                                   header: "gce_MakeCirc.hxx".}
proc operator*(this: GceMakeCirc): Circ {.noSideEffect, importcpp: "Operator",
                                      header: "gce_MakeCirc.hxx".}
converter `circ`*(this: GceMakeCirc): Circ {.noSideEffect,
    importcpp: "gce_MakeCirc::operator gp_Circ", header: "gce_MakeCirc.hxx".}


























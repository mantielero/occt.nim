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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Parab2d"
type
  GceMakeParab2d* {.importcpp: "gce_MakeParab2d", header: "gce_MakeParab2d.hxx",
                   bycopy.} = object of GceRoot ## ! Creates a parabola with its axis of symmetry ("MirrorAxis")
                                           ## ! and its focal length.
                                           ## ! Warnings : It is possible to have Focal = 0.
                                           ## ! The status is "NullFocalLength" Raised if Focal < 0.0


proc newGceMakeParab2d*(mirrorAxis: Ax2d; focal: cfloat; sense: bool = true): GceMakeParab2d {.
    cdecl, constructor, importcpp: "gce_MakeParab2d(@)", dynlib: tkgeombase.}
proc newGceMakeParab2d*(a: Ax22d; focal: cfloat): GceMakeParab2d {.cdecl, constructor,
    importcpp: "gce_MakeParab2d(@)", dynlib: tkgeombase.}
proc newGceMakeParab2d*(d: Ax2d; f: Pnt2d; sense: bool = true): GceMakeParab2d {.cdecl,
    constructor, importcpp: "gce_MakeParab2d(@)", dynlib: tkgeombase.}
proc newGceMakeParab2d*(s1: Pnt2d; center: Pnt2d; sense: bool = true): GceMakeParab2d {.
    cdecl, constructor, importcpp: "gce_MakeParab2d(@)", dynlib: tkgeombase.}
proc value*(this: GceMakeParab2d): Parab2d {.noSideEffect, cdecl, importcpp: "Value",
    dynlib: tkgeombase.}
proc operator*(this: GceMakeParab2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkgeombase.}
converter `parab2d`*(this: GceMakeParab2d): Parab2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeParab2d::operator gp_Parab2d", dynlib: tkgeombase.}
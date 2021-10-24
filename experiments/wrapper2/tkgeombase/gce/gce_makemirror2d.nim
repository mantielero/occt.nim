##  Created on: 1992-09-01
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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
type
  GceMakeMirror2d* {.importcpp: "gce_MakeMirror2d", header: "gce_MakeMirror2d.hxx",
                    bycopy.} = object


proc newGceMakeMirror2d*(point: Pnt2d): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", dynlib: tkgeombase.}
proc newGceMakeMirror2d*(axis: Ax2d): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", dynlib: tkgeombase.}
proc newGceMakeMirror2d*(line: Lin2d): GceMakeMirror2d {.cdecl, constructor,
    importcpp: "gce_MakeMirror2d(@)", dynlib: tkgeombase.}
proc newGceMakeMirror2d*(point: Pnt2d; direc: Dir2d): GceMakeMirror2d {.cdecl,
    constructor, importcpp: "gce_MakeMirror2d(@)", dynlib: tkgeombase.}
proc value*(this: GceMakeMirror2d): Trsf2d {.noSideEffect, cdecl, importcpp: "Value",
    dynlib: tkgeombase.}
proc operator*(this: GceMakeMirror2d): Trsf2d {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkgeombase.}
converter `trsf2d`*(this: GceMakeMirror2d): Trsf2d {.noSideEffect, cdecl,
    importcpp: "gce_MakeMirror2d::operator gp_Trsf2d", dynlib: tkgeombase.}
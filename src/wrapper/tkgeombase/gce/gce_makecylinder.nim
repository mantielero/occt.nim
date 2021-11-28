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
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Circ"
type
  GceMakeCylinder* {.importcpp: "gce_MakeCylinder", header: "gce_MakeCylinder.hxx",
                    bycopy.} = object of GceRoot ## ! <A2> is the local cartesian coordinate system of <me>.
                                            ## ! The status is "NegativeRadius" if R < 0.0


proc newCylinder*(a2: Ax2; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc newCylinder*(cyl: Cylinder; point: Pnt): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc newCylinder*(cyl: Cylinder; dist: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc newCylinder*(p1: Pnt; p2: Pnt; p3: Pnt): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc newCylinder*(axis: Ax1; radius: cfloat): GceMakeCylinder {.cdecl,
    constructor, importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc newCylinder*(circ: Circ): GceMakeCylinder {.cdecl, constructor,
    importcpp: "gce_MakeCylinder(@)", dynlib: tkgeombase.}
proc value*(this: GceMakeCylinder): Cylinder {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
proc operator*(this: GceMakeCylinder): Cylinder {.noSideEffect, cdecl,
    importcpp: "Operator", dynlib: tkgeombase.}
converter `cylinder`*(this: GceMakeCylinder): Cylinder {.noSideEffect, cdecl,
    importcpp: "gce_MakeCylinder::operator gp_Cylinder", dynlib: tkgeombase.}
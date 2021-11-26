##  Created on: 1993-01-27
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  IntPatchPolyArc* {.importcpp: "IntPatch_PolyArc", header: "IntPatch_PolyArc.hxx",
                    bycopy.} = object of IntPatchPolygo ## ! Creates the polygon of the arc A on the surface S.
                                                   ## ! The arc is limited by the parameters Pfirst and Plast.
                                                   ## ! None of these parameters can be infinite.


proc constructIntPatchPolyArc*(a: Handle[Adaptor2dHCurve2d]; nbSample: cint;
                              pfirst: cfloat; plast: cfloat;
                              boxOtherPolygon: BndBox2d): IntPatchPolyArc {.
    constructor, importcpp: "IntPatch_PolyArc(@)", header: "IntPatch_PolyArc.hxx".}
proc closed*(this: IntPatchPolyArc): bool {.noSideEffect, importcpp: "Closed",
                                        header: "IntPatch_PolyArc.hxx".}
proc nbPoints*(this: IntPatchPolyArc): cint {.noSideEffect, importcpp: "NbPoints",
    header: "IntPatch_PolyArc.hxx".}
proc point*(this: IntPatchPolyArc; index: cint): Pnt2d {.noSideEffect,
    importcpp: "Point", header: "IntPatch_PolyArc.hxx".}
proc parameter*(this: IntPatchPolyArc; index: cint): cfloat {.noSideEffect,
    importcpp: "Parameter", header: "IntPatch_PolyArc.hxx".}
proc setOffset*(this: var IntPatchPolyArc; offsetX: cfloat; offsetY: cfloat) {.
    importcpp: "SetOffset", header: "IntPatch_PolyArc.hxx".}


























import brep_types
import ../../tkmath/toploc/toploc_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/geom/geom_types





##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
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





proc newBRepCurve3D*(c: Handle[GeomCurve]; L: TopLocLocation): BRepCurve3D {.cdecl,
    constructor, importcpp: "BRep_Curve3D(@)", header: "BRep_Curve3D.hxx".}
proc d0*(this: BRepCurve3D; u: cfloat; p: var PntObj) {.noSideEffect, cdecl, importcpp: "D0",
    header: "BRep_Curve3D.hxx".}
proc isCurve3D*(this: BRepCurve3D): bool {.noSideEffect, cdecl,
                                       importcpp: "IsCurve3D", header: "BRep_Curve3D.hxx".}
proc curve3D*(this: BRepCurve3D): Handle[GeomCurve] {.noSideEffect, cdecl,
    importcpp: "Curve3D", header: "BRep_Curve3D.hxx".}
proc curve3D*(this: var BRepCurve3D; c: Handle[GeomCurve]) {.cdecl,
    importcpp: "Curve3D", header: "BRep_Curve3D.hxx".}
proc copy*(this: BRepCurve3D): Handle[BRepCurveRepresentation] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "BRep_Curve3D.hxx".}
proc dumpJson*(this: BRepCurve3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_Curve3D.hxx".}



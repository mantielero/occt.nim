import brep_types
import ../../tkmath/toploc/toploc_types
import ../../tkernel/standard/standard_types
import ../../tkmath/poly/poly_types



##  Created on: 1995-03-09
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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





proc newBRepPolygon3D*(p: Handle[PolyPolygon3D]; L: TopLocLocation): BRepPolygon3D {.
    cdecl, constructor, importcpp: "BRep_Polygon3D(@)", header: "BRep_Polygon3D.hxx".}
proc isPolygon3D*(this: BRepPolygon3D): bool {.noSideEffect, cdecl,
    importcpp: "IsPolygon3D", header: "BRep_Polygon3D.hxx".}
proc polygon3D*(this: BRepPolygon3D): Handle[PolyPolygon3D] {.noSideEffect, cdecl,
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc polygon3D*(this: var BRepPolygon3D; p: Handle[PolyPolygon3D]) {.cdecl,
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc copy*(this: BRepPolygon3D): Handle[BRepCurveRepresentation] {.noSideEffect,
    cdecl, importcpp: "Copy", header: "BRep_Polygon3D.hxx".}
proc dumpJson*(this: BRepPolygon3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "BRep_Polygon3D.hxx".}


import poly_types
import ../standard/standard_types
import ../gp/gp_types
import ../ncollection/ncollection_types
import ../tcolgp/tcolgp_types
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





proc newPolyPolygon2D*(theNbNodes: cint): PolyPolygon2D {.cdecl, constructor,
    importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc newPolyPolygon2D*(nodes: TColgpArray1OfPnt2d): PolyPolygon2D {.cdecl,
    constructor, importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc deflection*(this: PolyPolygon2D): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc deflection*(this: var PolyPolygon2D; theDefl: cfloat) {.cdecl,
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc nbNodes*(this: PolyPolygon2D): cint {.noSideEffect, cdecl, importcpp: "NbNodes",
                                       header: "Poly_Polygon2D.hxx".}
proc nodes*(this: PolyPolygon2D): TColgpArray1OfPnt2d {.noSideEffect, cdecl,
    importcpp: "Nodes", header: "Poly_Polygon2D.hxx".}
proc changeNodes*(this: var PolyPolygon2D): var TColgpArray1OfPnt2d {.cdecl,
    importcpp: "ChangeNodes", header: "Poly_Polygon2D.hxx".}
proc dumpJson*(this: PolyPolygon2D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Poly_Polygon2D.hxx".}

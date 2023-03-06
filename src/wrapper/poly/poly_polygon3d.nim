import poly_types
import ../standard/standard_types
#import ../gp/gp_types
#import ../ncollection/ncollection_types
import ../tcolstd/tcolstd_types
import ../tcolgp/tcolgp_types
##  Created on: 1995-03-07
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





proc newPolyPolygon3D*(theNbNodes: cint; theHasParams: bool): PolyPolygon3D {.cdecl,
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc newPolyPolygon3D*(nodes: TColgpArray1OfPnt): PolyPolygon3D {.cdecl, constructor,
    importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc newPolyPolygon3D*(nodes: TColgpArray1OfPnt; parameters: TColStdArray1OfReal): PolyPolygon3D {.
    cdecl, constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc copy*(this: PolyPolygon3D): Handle[PolyPolygon3D] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Poly_Polygon3D.hxx".}
proc deflection*(this: PolyPolygon3D): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc deflection*(this: var PolyPolygon3D; theDefl: cfloat) {.cdecl,
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc nbNodes*(this: PolyPolygon3D): cint {.noSideEffect, cdecl, importcpp: "NbNodes",
                                       header: "Poly_Polygon3D.hxx".}
proc nodes*(this: PolyPolygon3D): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Nodes", header: "Poly_Polygon3D.hxx".}
proc changeNodes*(this: var PolyPolygon3D): var TColgpArray1OfPnt {.cdecl,
    importcpp: "ChangeNodes", header: "Poly_Polygon3D.hxx".}
proc hasParameters*(this: PolyPolygon3D): bool {.noSideEffect, cdecl,
    importcpp: "HasParameters", header: "Poly_Polygon3D.hxx".}
proc parameters*(this: PolyPolygon3D): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Parameters", header: "Poly_Polygon3D.hxx".}
proc changeParameters*(this: PolyPolygon3D): var TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "ChangeParameters", header: "Poly_Polygon3D.hxx".}
proc dumpJson*(this: PolyPolygon3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Poly_Polygon3D.hxx".}

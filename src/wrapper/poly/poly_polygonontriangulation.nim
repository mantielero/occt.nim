import poly_types
import ../standard/standard_types
#import ../gp/gp_types
#import ../ncollection/ncollection_types
import ../tcolstd/tcolstd_types
#import ../tcolgp/tcolgp_types
##  Created on: 1996-02-21
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newPolyPolygonOnTriangulation*(theNbNodes: cint; theHasParams: bool): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", header: "Poly_PolygonOnTriangulation.hxx".}
proc newPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", header: "Poly_PolygonOnTriangulation.hxx".}
proc newPolyPolygonOnTriangulation*(nodes: TColStdArray1OfInteger;
                                   parameters: TColStdArray1OfReal): PolyPolygonOnTriangulation {.
    cdecl, constructor, importcpp: "Poly_PolygonOnTriangulation(@)", header: "Poly_PolygonOnTriangulation.hxx".}
proc copy*(this: PolyPolygonOnTriangulation): Handle[PolyPolygonOnTriangulation] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "Poly_PolygonOnTriangulation.hxx".}
proc deflection*(this: PolyPolygonOnTriangulation): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc deflection*(this: var PolyPolygonOnTriangulation; theDefl: cfloat) {.cdecl,
    importcpp: "Deflection", header: "Poly_PolygonOnTriangulation.hxx".}
proc nbNodes*(this: PolyPolygonOnTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NbNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc nodes*(this: PolyPolygonOnTriangulation): TColStdArray1OfInteger {.
    noSideEffect, cdecl, importcpp: "Nodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc changeNodes*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfInteger {.
    cdecl, importcpp: "ChangeNodes", header: "Poly_PolygonOnTriangulation.hxx".}
proc hasParameters*(this: PolyPolygonOnTriangulation): bool {.noSideEffect, cdecl,
    importcpp: "HasParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc parameters*(this: PolyPolygonOnTriangulation): Handle[TColStdHArray1OfReal] {.
    noSideEffect, cdecl, importcpp: "Parameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc changeParameters*(this: var PolyPolygonOnTriangulation): var TColStdArray1OfReal {.
    cdecl, importcpp: "ChangeParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc setParameters*(this: var PolyPolygonOnTriangulation;
                   theParameters: Handle[TColStdHArray1OfReal]) {.cdecl,
    importcpp: "SetParameters", header: "Poly_PolygonOnTriangulation.hxx".}
proc dumpJson*(this: PolyPolygonOnTriangulation; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Poly_PolygonOnTriangulation.hxx".}

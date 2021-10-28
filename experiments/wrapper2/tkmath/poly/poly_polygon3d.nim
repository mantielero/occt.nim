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

type
  HandlePolyPolygon3D* = Handle[PolyPolygon3D]

## ! This class Provides a polygon in 3D space. It is generally an approximate representation of a curve.
## ! A Polygon3D is defined by a table of nodes. Each node is
## ! a 3D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.
## ! If the polygon is an approximate representation of a curve,
## ! you can associate with each of its nodes the value of the
## ! parameter of the corresponding point on the curve.

type
  PolyPolygon3D* {.importcpp: "Poly_Polygon3D", header: "Poly_Polygon3D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## 3D
                                                                                                           ## polygon
                                                                                                           ## with
                                                                                                           ## specific
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## nodes.


proc newPolyPolygon3D*(theNbNodes: cint; theHasParams: bool): PolyPolygon3D {.cdecl,
    constructor, importcpp: "Poly_Polygon3D(@)", dynlib: tkmath.}
proc newPolyPolygon3D*(nodes: TColgpArray1OfPnt): PolyPolygon3D {.cdecl, constructor,
    importcpp: "Poly_Polygon3D(@)", dynlib: tkmath.}
proc newPolyPolygon3D*(nodes: TColgpArray1OfPnt; parameters: TColStdArray1OfReal): PolyPolygon3D {.
    cdecl, constructor, importcpp: "Poly_Polygon3D(@)", dynlib: tkmath.}
proc copy*(this: PolyPolygon3D): Handle[PolyPolygon3D] {.noSideEffect, cdecl,
    importcpp: "Copy", dynlib: tkmath.}
proc deflection*(this: PolyPolygon3D): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc deflection*(this: var PolyPolygon3D; theDefl: cfloat) {.cdecl,
    importcpp: "Deflection", dynlib: tkmath.}
proc nbNodes*(this: PolyPolygon3D): cint {.noSideEffect, cdecl, importcpp: "NbNodes",
                                       dynlib: tkmath.}
proc nodes*(this: PolyPolygon3D): TColgpArray1OfPnt {.noSideEffect, cdecl,
    importcpp: "Nodes", dynlib: tkmath.}
proc changeNodes*(this: var PolyPolygon3D): var TColgpArray1OfPnt {.cdecl,
    importcpp: "ChangeNodes", dynlib: tkmath.}
proc hasParameters*(this: PolyPolygon3D): bool {.noSideEffect, cdecl,
    importcpp: "HasParameters", dynlib: tkmath.}
proc parameters*(this: PolyPolygon3D): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "Parameters", dynlib: tkmath.}
proc changeParameters*(this: PolyPolygon3D): var TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "ChangeParameters", dynlib: tkmath.}
proc dumpJson*(this: PolyPolygon3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkmath.}
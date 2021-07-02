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

discard "forward decl of Poly_Polygon3D"
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


proc constructPolyPolygon3D*(theNbNodes: StandardInteger;
                            theHasParams: StandardBoolean): PolyPolygon3D {.
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc constructPolyPolygon3D*(nodes: TColgpArray1OfPnt): PolyPolygon3D {.constructor,
    importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc constructPolyPolygon3D*(nodes: TColgpArray1OfPnt;
                            parameters: TColStdArray1OfReal): PolyPolygon3D {.
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc copy*(this: PolyPolygon3D): Handle[PolyPolygon3D] {.noSideEffect,
    importcpp: "Copy", header: "Poly_Polygon3D.hxx".}
proc deflection*(this: PolyPolygon3D): StandardReal {.noSideEffect,
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc deflection*(this: var PolyPolygon3D; theDefl: StandardReal) {.
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc nbNodes*(this: PolyPolygon3D): StandardInteger {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_Polygon3D.hxx".}
proc nodes*(this: PolyPolygon3D): TColgpArray1OfPnt {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Polygon3D.hxx".}
proc changeNodes*(this: var PolyPolygon3D): var TColgpArray1OfPnt {.
    importcpp: "ChangeNodes", header: "Poly_Polygon3D.hxx".}
proc hasParameters*(this: PolyPolygon3D): StandardBoolean {.noSideEffect,
    importcpp: "HasParameters", header: "Poly_Polygon3D.hxx".}
proc parameters*(this: PolyPolygon3D): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "Poly_Polygon3D.hxx".}
proc changeParameters*(this: PolyPolygon3D): var TColStdArray1OfReal {.noSideEffect,
    importcpp: "ChangeParameters", header: "Poly_Polygon3D.hxx".}
proc dumpJson*(this: PolyPolygon3D; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_Polygon3D.hxx".}
type
  PolyPolygon3DbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Poly_Polygon3D::get_type_name(@)",
                            header: "Poly_Polygon3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Poly_Polygon3D::get_type_descriptor(@)",
    header: "Poly_Polygon3D.hxx".}
proc dynamicType*(this: PolyPolygon3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Poly_Polygon3D.hxx".}


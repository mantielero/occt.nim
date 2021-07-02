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

discard "forward decl of Poly_Polygon2D"
type
  HandlePolyPolygon2D* = Handle[PolyPolygon2D]

## ! Provides a polygon in 2D space (for example, in the
## ! parametric space of a surface). It is generally an
## ! approximate representation of a curve.
## ! A Polygon2D is defined by a table of nodes. Each node is
## ! a 2D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.

type
  PolyPolygon2D* {.importcpp: "Poly_Polygon2D", header: "Poly_Polygon2D.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Constructs
                                                                                                           ## a
                                                                                                           ## 2D
                                                                                                           ## polygon
                                                                                                           ## with
                                                                                                           ## specified
                                                                                                           ## number
                                                                                                           ## of
                                                                                                           ## nodes.


proc constructPolyPolygon2D*(theNbNodes: StandardInteger): PolyPolygon2D {.
    constructor, importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc constructPolyPolygon2D*(nodes: TColgpArray1OfPnt2d): PolyPolygon2D {.
    constructor, importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc deflection*(this: PolyPolygon2D): StandardReal {.noSideEffect,
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc deflection*(this: var PolyPolygon2D; theDefl: StandardReal) {.
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc nbNodes*(this: PolyPolygon2D): StandardInteger {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_Polygon2D.hxx".}
proc nodes*(this: PolyPolygon2D): TColgpArray1OfPnt2d {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Polygon2D.hxx".}
proc changeNodes*(this: var PolyPolygon2D): var TColgpArray1OfPnt2d {.
    importcpp: "ChangeNodes", header: "Poly_Polygon2D.hxx".}
proc dumpJson*(this: PolyPolygon2D; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_Polygon2D.hxx".}
type
  PolyPolygon2DbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Poly_Polygon2D::get_type_name(@)",
                            header: "Poly_Polygon2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Poly_Polygon2D::get_type_descriptor(@)",
    header: "Poly_Polygon2D.hxx".}
proc dynamicType*(this: PolyPolygon2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Poly_Polygon2D.hxx".}


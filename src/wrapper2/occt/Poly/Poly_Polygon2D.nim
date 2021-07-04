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

import
  ../Standard/Standard_Type, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Transient

discard "forward decl of Poly_Polygon2D"
type
  Handle_Poly_Polygon2D* = handle[Poly_Polygon2D]

## ! Provides a polygon in 2D space (for example, in the
## ! parametric space of a surface). It is generally an
## ! approximate representation of a curve.
## ! A Polygon2D is defined by a table of nodes. Each node is
## ! a 2D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.

type
  Poly_Polygon2D* {.importcpp: "Poly_Polygon2D", header: "Poly_Polygon2D.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructPoly_Polygon2D*(theNbNodes: Standard_Integer): Poly_Polygon2D {.
    constructor, importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc constructPoly_Polygon2D*(Nodes: TColgp_Array1OfPnt2d): Poly_Polygon2D {.
    constructor, importcpp: "Poly_Polygon2D(@)", header: "Poly_Polygon2D.hxx".}
proc Deflection*(this: Poly_Polygon2D): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc Deflection*(this: var Poly_Polygon2D; theDefl: Standard_Real) {.
    importcpp: "Deflection", header: "Poly_Polygon2D.hxx".}
proc NbNodes*(this: Poly_Polygon2D): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_Polygon2D.hxx".}
proc Nodes*(this: Poly_Polygon2D): TColgp_Array1OfPnt2d {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Polygon2D.hxx".}
proc ChangeNodes*(this: var Poly_Polygon2D): var TColgp_Array1OfPnt2d {.
    importcpp: "ChangeNodes", header: "Poly_Polygon2D.hxx".}
proc DumpJson*(this: Poly_Polygon2D; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_Polygon2D.hxx".}
type
  Poly_Polygon2Dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Poly_Polygon2D::get_type_name(@)",
                              header: "Poly_Polygon2D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_Polygon2D::get_type_descriptor(@)",
    header: "Poly_Polygon2D.hxx".}
proc DynamicType*(this: Poly_Polygon2D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Poly_Polygon2D.hxx".}
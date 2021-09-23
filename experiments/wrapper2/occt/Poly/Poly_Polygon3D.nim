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

import
  ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_HArray1OfReal

discard "forward decl of Poly_Polygon3D"
type
  Handle_Poly_Polygon3D* = handle[Poly_Polygon3D]

## ! This class Provides a polygon in 3D space. It is generally an approximate representation of a curve.
## ! A Polygon3D is defined by a table of nodes. Each node is
## ! a 3D point. If the polygon is closed, the point of closure is
## ! repeated at the end of the table of nodes.
## ! If the polygon is an approximate representation of a curve,
## ! you can associate with each of its nodes the value of the
## ! parameter of the corresponding point on the curve.

type
  Poly_Polygon3D* {.importcpp: "Poly_Polygon3D", header: "Poly_Polygon3D.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructPoly_Polygon3D*(theNbNodes: Standard_Integer;
                             theHasParams: Standard_Boolean): Poly_Polygon3D {.
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc constructPoly_Polygon3D*(Nodes: TColgp_Array1OfPnt): Poly_Polygon3D {.
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc constructPoly_Polygon3D*(Nodes: TColgp_Array1OfPnt;
                             Parameters: TColStd_Array1OfReal): Poly_Polygon3D {.
    constructor, importcpp: "Poly_Polygon3D(@)", header: "Poly_Polygon3D.hxx".}
proc Copy*(this: Poly_Polygon3D): handle[Poly_Polygon3D] {.noSideEffect,
    importcpp: "Copy", header: "Poly_Polygon3D.hxx".}
proc Deflection*(this: Poly_Polygon3D): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc Deflection*(this: var Poly_Polygon3D; theDefl: Standard_Real) {.
    importcpp: "Deflection", header: "Poly_Polygon3D.hxx".}
proc NbNodes*(this: Poly_Polygon3D): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "Poly_Polygon3D.hxx".}
proc Nodes*(this: Poly_Polygon3D): TColgp_Array1OfPnt {.noSideEffect,
    importcpp: "Nodes", header: "Poly_Polygon3D.hxx".}
proc ChangeNodes*(this: var Poly_Polygon3D): var TColgp_Array1OfPnt {.
    importcpp: "ChangeNodes", header: "Poly_Polygon3D.hxx".}
proc HasParameters*(this: Poly_Polygon3D): Standard_Boolean {.noSideEffect,
    importcpp: "HasParameters", header: "Poly_Polygon3D.hxx".}
proc Parameters*(this: Poly_Polygon3D): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Parameters", header: "Poly_Polygon3D.hxx".}
proc ChangeParameters*(this: Poly_Polygon3D): var TColStd_Array1OfReal {.
    noSideEffect, importcpp: "ChangeParameters", header: "Poly_Polygon3D.hxx".}
proc DumpJson*(this: Poly_Polygon3D; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Poly_Polygon3D.hxx".}
type
  Poly_Polygon3Dbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Poly_Polygon3D::get_type_name(@)",
                              header: "Poly_Polygon3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_Polygon3D::get_type_descriptor(@)",
    header: "Poly_Polygon3D.hxx".}
proc DynamicType*(this: Poly_Polygon3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Poly_Polygon3D.hxx".}
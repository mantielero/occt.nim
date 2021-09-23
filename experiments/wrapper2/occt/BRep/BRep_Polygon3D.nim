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
  ../Standard/Standard, ../Standard/Standard_Type, BRep_CurveRepresentation,
  ../Standard/Standard_Boolean

discard "forward decl of Poly_Polygon3D"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Polygon3D"
discard "forward decl of BRep_Polygon3D"
type
  Handle_BRep_Polygon3D* = handle[BRep_Polygon3D]

## ! Representation by a 3D polygon.

type
  BRep_Polygon3D* {.importcpp: "BRep_Polygon3D", header: "BRep_Polygon3D.hxx", bycopy.} = object of BRep_CurveRepresentation


proc constructBRep_Polygon3D*(P: handle[Poly_Polygon3D]; L: TopLoc_Location): BRep_Polygon3D {.
    constructor, importcpp: "BRep_Polygon3D(@)", header: "BRep_Polygon3D.hxx".}
proc IsPolygon3D*(this: BRep_Polygon3D): Standard_Boolean {.noSideEffect,
    importcpp: "IsPolygon3D", header: "BRep_Polygon3D.hxx".}
proc Polygon3D*(this: BRep_Polygon3D): handle[Poly_Polygon3D] {.noSideEffect,
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc Polygon3D*(this: var BRep_Polygon3D; P: handle[Poly_Polygon3D]) {.
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc Copy*(this: BRep_Polygon3D): handle[BRep_CurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: "BRep_Polygon3D.hxx".}
proc DumpJson*(this: BRep_Polygon3D; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_Polygon3D.hxx".}
type
  BRep_Polygon3Dbase_type* = BRep_CurveRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_Polygon3D::get_type_name(@)",
                              header: "BRep_Polygon3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_Polygon3D::get_type_descriptor(@)",
    header: "BRep_Polygon3D.hxx".}
proc DynamicType*(this: BRep_Polygon3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_Polygon3D.hxx".}
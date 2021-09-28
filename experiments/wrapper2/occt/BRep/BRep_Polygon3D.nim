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

discard "forward decl of Poly_Polygon3D"
discard "forward decl of Standard_DomainError"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Polygon3D"
discard "forward decl of BRep_Polygon3D"
type
  HandleC1C1* = Handle[BRepPolygon3D]

## ! Representation by a 3D polygon.

type
  BRepPolygon3D* {.importcpp: "BRep_Polygon3D", header: "BRep_Polygon3D.hxx", bycopy.} = object of BRepCurveRepresentation


proc constructBRepPolygon3D*(p: Handle[PolyPolygon3D]; L: TopLocLocation): BRepPolygon3D {.
    constructor, importcpp: "BRep_Polygon3D(@)", header: "BRep_Polygon3D.hxx".}
proc isPolygon3D*(this: BRepPolygon3D): bool {.noSideEffect,
    importcpp: "IsPolygon3D", header: "BRep_Polygon3D.hxx".}
proc polygon3D*(this: BRepPolygon3D): Handle[PolyPolygon3D] {.noSideEffect,
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc polygon3D*(this: var BRepPolygon3D; p: Handle[PolyPolygon3D]) {.
    importcpp: "Polygon3D", header: "BRep_Polygon3D.hxx".}
proc copy*(this: BRepPolygon3D): Handle[BRepCurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: "BRep_Polygon3D.hxx".}
proc dumpJson*(this: BRepPolygon3D; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "BRep_Polygon3D.hxx".}
type
  BRepPolygon3DbaseType* = BRepCurveRepresentation

proc getTypeName*(): cstring {.importcpp: "BRep_Polygon3D::get_type_name(@)",
                            header: "BRep_Polygon3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_Polygon3D::get_type_descriptor(@)",
    header: "BRep_Polygon3D.hxx".}
proc dynamicType*(this: BRepPolygon3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_Polygon3D.hxx".}


























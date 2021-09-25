##  Created on: 1993-07-06
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Curve3D"
discard "forward decl of BRep_Curve3D"
type
  HandleBRepCurve3D* = Handle[BRepCurve3D]

## ! Representation of a curve by a 3D curve.

type
  BRepCurve3D* {.importcpp: "BRep_Curve3D", header: "BRep_Curve3D.hxx", bycopy.} = object of BRepGCurve


proc constructBRepCurve3D*(c: Handle[GeomCurve]; L: TopLocLocation): BRepCurve3D {.
    constructor, importcpp: "BRep_Curve3D(@)", header: "BRep_Curve3D.hxx".}
proc d0*(this: BRepCurve3D; u: float; p: var Pnt) {.noSideEffect, importcpp: "D0",
    header: "BRep_Curve3D.hxx".}
proc isCurve3D*(this: BRepCurve3D): bool {.noSideEffect, importcpp: "IsCurve3D",
                                       header: "BRep_Curve3D.hxx".}
proc curve3D*(this: BRepCurve3D): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve3D", header: "BRep_Curve3D.hxx".}
proc curve3D*(this: var BRepCurve3D; c: Handle[GeomCurve]) {.importcpp: "Curve3D",
    header: "BRep_Curve3D.hxx".}
proc copy*(this: BRepCurve3D): Handle[BRepCurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: "BRep_Curve3D.hxx".}
proc dumpJson*(this: BRepCurve3D; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "BRep_Curve3D.hxx".}
type
  BRepCurve3DbaseType* = BRepGCurve

proc getTypeName*(): cstring {.importcpp: "BRep_Curve3D::get_type_name(@)",
                            header: "BRep_Curve3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_Curve3D::get_type_descriptor(@)", header: "BRep_Curve3D.hxx".}
proc dynamicType*(this: BRepCurve3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_Curve3D.hxx".}

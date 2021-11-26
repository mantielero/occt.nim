##  Created on: 1993-08-10
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
discard "forward decl of BRep_PointOnCurve"
discard "forward decl of BRep_PointOnCurve"
type
  BRepPointOnCurve* {.importcpp: "BRep_PointOnCurve",
                     header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRepPointRepresentation


type
  HandleBRepPointOnCurve* = Handle[BRepPointOnCurve]

## ! Representation by a parameter on a 3D curve.

type
  BRepPointOnCurvebaseType* = BRepPointRepresentation

#[ proc constructBRepPointOnCurve*(p: StandardReal; c: Handle[GeomCurve];
                               L: TopLocLocation): BRepPointOnCurve {.constructor,
    importcpp: "BRep_PointOnCurve(@)", header: "BRep_PointOnCurve.hxx".}
proc isPointOnCurve*(this: BRepPointOnCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointOnCurve.hxx".}
proc isPointOnCurve*(this: BRepPointOnCurve; c: Handle[GeomCurve]; L: TopLocLocation): StandardBoolean {.
    noSideEffect, importcpp: "IsPointOnCurve", header: "BRep_PointOnCurve.hxx".}
proc curve*(this: BRepPointOnCurve): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "BRep_PointOnCurve.hxx".}
proc curve*(this: var BRepPointOnCurve; c: Handle[GeomCurve]) {.importcpp: "Curve",
    header: "BRep_PointOnCurve.hxx".}
proc dumpJson*(this: BRepPointOnCurve; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "BRep_PointOnCurve.hxx".}


proc getTypeName*(): cstring {.importcpp: "BRep_PointOnCurve::get_type_name(@)",
                            header: "BRep_PointOnCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRep_PointOnCurve::get_type_descriptor(@)",
    header: "BRep_PointOnCurve.hxx".}
proc dynamicType*(this: BRepPointOnCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_PointOnCurve.hxx".} ]#
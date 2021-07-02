##  Created on: 1995-07-20
##  Created by: Modelistation
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_ApproxLine"
type
  HandleBRepApproxApproxLine* = Handle[BRepApproxApproxLine]
  BRepApproxApproxLine* {.importcpp: "BRepApprox_ApproxLine",
                         header: "BRepApprox_ApproxLine.hxx", bycopy.} = object of StandardTransient


proc constructBRepApproxApproxLine*(curveXYZ: Handle[GeomBSplineCurve];
                                   curveUV1: Handle[Geom2dBSplineCurve];
                                   curveUV2: Handle[Geom2dBSplineCurve]): BRepApproxApproxLine {.
    constructor, importcpp: "BRepApprox_ApproxLine(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc constructBRepApproxApproxLine*(lin: Handle[IntSurfLineOn2S];
                                   theTang: StandardBoolean = standardFalse): BRepApproxApproxLine {.
    constructor, importcpp: "BRepApprox_ApproxLine(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc nbPnts*(this: BRepApproxApproxLine): StandardInteger {.noSideEffect,
    importcpp: "NbPnts", header: "BRepApprox_ApproxLine.hxx".}
proc point*(this: var BRepApproxApproxLine; index: StandardInteger): IntSurfPntOn2S {.
    importcpp: "Point", header: "BRepApprox_ApproxLine.hxx".}
type
  BRepApproxApproxLinebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepApprox_ApproxLine::get_type_name(@)",
                            header: "BRepApprox_ApproxLine.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepApprox_ApproxLine::get_type_descriptor(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc dynamicType*(this: BRepApproxApproxLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepApprox_ApproxLine.hxx".}


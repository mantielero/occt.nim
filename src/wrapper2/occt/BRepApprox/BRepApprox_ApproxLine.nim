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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
discard "forward decl of IntSurf_LineOn2S"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_ApproxLine"
type
  Handle_BRepApprox_ApproxLine* = handle[BRepApprox_ApproxLine]
  BRepApprox_ApproxLine* {.importcpp: "BRepApprox_ApproxLine",
                          header: "BRepApprox_ApproxLine.hxx", bycopy.} = object of Standard_Transient


proc constructBRepApprox_ApproxLine*(CurveXYZ: handle[Geom_BSplineCurve];
                                    CurveUV1: handle[Geom2d_BSplineCurve];
                                    CurveUV2: handle[Geom2d_BSplineCurve]): BRepApprox_ApproxLine {.
    constructor, importcpp: "BRepApprox_ApproxLine(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc constructBRepApprox_ApproxLine*(lin: handle[IntSurf_LineOn2S];
                                    theTang: Standard_Boolean = Standard_False): BRepApprox_ApproxLine {.
    constructor, importcpp: "BRepApprox_ApproxLine(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc NbPnts*(this: BRepApprox_ApproxLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPnts", header: "BRepApprox_ApproxLine.hxx".}
proc Point*(this: var BRepApprox_ApproxLine; Index: Standard_Integer): IntSurf_PntOn2S {.
    importcpp: "Point", header: "BRepApprox_ApproxLine.hxx".}
type
  BRepApprox_ApproxLinebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepApprox_ApproxLine::get_type_name(@)",
                              header: "BRepApprox_ApproxLine.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepApprox_ApproxLine::get_type_descriptor(@)",
    header: "BRepApprox_ApproxLine.hxx".}
proc DynamicType*(this: BRepApprox_ApproxLine): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepApprox_ApproxLine.hxx".}
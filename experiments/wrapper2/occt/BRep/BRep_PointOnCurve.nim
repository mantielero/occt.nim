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

import
  ../Standard/Standard, ../Standard/Standard_Type, BRep_PointRepresentation,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of BRep_PointOnCurve"
discard "forward decl of BRep_PointOnCurve"
type
  Handle_BRep_PointOnCurve* = handle[BRep_PointOnCurve]

## ! Representation by a parameter on a 3D curve.

type
  BRep_PointOnCurve* {.importcpp: "BRep_PointOnCurve",
                      header: "BRep_PointOnCurve.hxx", bycopy.} = object of BRep_PointRepresentation


proc constructBRep_PointOnCurve*(P: Standard_Real; C: handle[Geom_Curve];
                                L: TopLoc_Location): BRep_PointOnCurve {.
    constructor, importcpp: "BRep_PointOnCurve(@)", header: "BRep_PointOnCurve.hxx".}
proc IsPointOnCurve*(this: BRep_PointOnCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointOnCurve.hxx".}
proc IsPointOnCurve*(this: BRep_PointOnCurve; C: handle[Geom_Curve];
                    L: TopLoc_Location): Standard_Boolean {.noSideEffect,
    importcpp: "IsPointOnCurve", header: "BRep_PointOnCurve.hxx".}
proc Curve*(this: BRep_PointOnCurve): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "BRep_PointOnCurve.hxx".}
proc Curve*(this: var BRep_PointOnCurve; C: handle[Geom_Curve]) {.importcpp: "Curve",
    header: "BRep_PointOnCurve.hxx".}
proc DumpJson*(this: BRep_PointOnCurve; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_PointOnCurve.hxx".}
type
  BRep_PointOnCurvebase_type* = BRep_PointRepresentation

proc get_type_name*(): cstring {.importcpp: "BRep_PointOnCurve::get_type_name(@)",
                              header: "BRep_PointOnCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_PointOnCurve::get_type_descriptor(@)",
    header: "BRep_PointOnCurve.hxx".}
proc DynamicType*(this: BRep_PointOnCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_PointOnCurve.hxx".}
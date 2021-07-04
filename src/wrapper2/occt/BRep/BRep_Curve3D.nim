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

import
  ../Standard/Standard, ../Standard/Standard_Type, BRep_GCurve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Pnt"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of BRep_Curve3D"
discard "forward decl of BRep_Curve3D"
type
  Handle_BRep_Curve3D* = handle[BRep_Curve3D]

## ! Representation of a curve by a 3D curve.

type
  BRep_Curve3D* {.importcpp: "BRep_Curve3D", header: "BRep_Curve3D.hxx", bycopy.} = object of BRep_GCurve


proc constructBRep_Curve3D*(C: handle[Geom_Curve]; L: TopLoc_Location): BRep_Curve3D {.
    constructor, importcpp: "BRep_Curve3D(@)", header: "BRep_Curve3D.hxx".}
proc D0*(this: BRep_Curve3D; U: Standard_Real; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "BRep_Curve3D.hxx".}
proc IsCurve3D*(this: BRep_Curve3D): Standard_Boolean {.noSideEffect,
    importcpp: "IsCurve3D", header: "BRep_Curve3D.hxx".}
proc Curve3D*(this: BRep_Curve3D): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve3D", header: "BRep_Curve3D.hxx".}
proc Curve3D*(this: var BRep_Curve3D; C: handle[Geom_Curve]) {.importcpp: "Curve3D",
    header: "BRep_Curve3D.hxx".}
proc Copy*(this: BRep_Curve3D): handle[BRep_CurveRepresentation] {.noSideEffect,
    importcpp: "Copy", header: "BRep_Curve3D.hxx".}
proc DumpJson*(this: BRep_Curve3D; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "BRep_Curve3D.hxx".}
type
  BRep_Curve3Dbase_type* = BRep_GCurve

proc get_type_name*(): cstring {.importcpp: "BRep_Curve3D::get_type_name(@)",
                              header: "BRep_Curve3D.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRep_Curve3D::get_type_descriptor(@)", header: "BRep_Curve3D.hxx".}
proc DynamicType*(this: BRep_Curve3D): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRep_Curve3D.hxx".}
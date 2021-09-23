##  Created on: 1998-04-14
##  Created by: Stephanie HUMEAU
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Vec,
  ../Standard/Standard_Real, GeomFill_TrihedronLaw, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_DraftTrihedron"
discard "forward decl of GeomFill_DraftTrihedron"
type
  Handle_GeomFill_DraftTrihedron* = handle[GeomFill_DraftTrihedron]
  GeomFill_DraftTrihedron* {.importcpp: "GeomFill_DraftTrihedron",
                            header: "GeomFill_DraftTrihedron.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc constructGeomFill_DraftTrihedron*(BiNormal: gp_Vec; Angle: Standard_Real): GeomFill_DraftTrihedron {.
    constructor, importcpp: "GeomFill_DraftTrihedron(@)",
    header: "GeomFill_DraftTrihedron.hxx".}
proc SetAngle*(this: var GeomFill_DraftTrihedron; Angle: Standard_Real) {.
    importcpp: "SetAngle", header: "GeomFill_DraftTrihedron.hxx".}
proc Copy*(this: GeomFill_DraftTrihedron): handle[GeomFill_TrihedronLaw] {.
    noSideEffect, importcpp: "Copy", header: "GeomFill_DraftTrihedron.hxx".}
proc D0*(this: var GeomFill_DraftTrihedron; Param: Standard_Real; Tangent: var gp_Vec;
        Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.importcpp: "D0",
    header: "GeomFill_DraftTrihedron.hxx".}
proc D1*(this: var GeomFill_DraftTrihedron; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; Normal: var gp_Vec; DNormal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_DraftTrihedron.hxx".}
proc D2*(this: var GeomFill_DraftTrihedron; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; D2Tangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; D2Normal: var gp_Vec; BiNormal: var gp_Vec;
        DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_DraftTrihedron.hxx".}
proc NbIntervals*(this: GeomFill_DraftTrihedron; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_DraftTrihedron.hxx".}
proc Intervals*(this: GeomFill_DraftTrihedron; T: var TColStd_Array1OfReal;
               S: GeomAbs_Shape) {.noSideEffect, importcpp: "Intervals",
                                 header: "GeomFill_DraftTrihedron.hxx".}
proc GetAverageLaw*(this: var GeomFill_DraftTrihedron; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_DraftTrihedron.hxx".}
proc IsConstant*(this: GeomFill_DraftTrihedron): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_DraftTrihedron.hxx".}
proc IsOnlyBy3dCurve*(this: GeomFill_DraftTrihedron): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnlyBy3dCurve",
    header: "GeomFill_DraftTrihedron.hxx".}
type
  GeomFill_DraftTrihedronbase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_DraftTrihedron::get_type_name(@)",
                              header: "GeomFill_DraftTrihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_DraftTrihedron::get_type_descriptor(@)",
    header: "GeomFill_DraftTrihedron.hxx".}
proc DynamicType*(this: GeomFill_DraftTrihedron): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_DraftTrihedron.hxx".}
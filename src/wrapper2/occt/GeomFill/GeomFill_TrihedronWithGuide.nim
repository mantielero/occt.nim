##  Created on: 1998-07-08
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  GeomFill_TrihedronLaw, ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of gp_Pnt"
discard "forward decl of GeomFill_TrihedronWithGuide"
discard "forward decl of GeomFill_TrihedronWithGuide"
type
  Handle_GeomFill_TrihedronWithGuide* = handle[GeomFill_TrihedronWithGuide]

## ! To define Trihedron along one Curve with a guide

type
  GeomFill_TrihedronWithGuide* {.importcpp: "GeomFill_TrihedronWithGuide",
                                header: "GeomFill_TrihedronWithGuide.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc Guide*(this: GeomFill_TrihedronWithGuide): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "Guide", header: "GeomFill_TrihedronWithGuide.hxx".}
proc Origine*(this: var GeomFill_TrihedronWithGuide; Param1: Standard_Real;
             Param2: Standard_Real) {.importcpp: "Origine",
                                    header: "GeomFill_TrihedronWithGuide.hxx".}
proc CurrentPointOnGuide*(this: GeomFill_TrihedronWithGuide): gp_Pnt {.noSideEffect,
    importcpp: "CurrentPointOnGuide", header: "GeomFill_TrihedronWithGuide.hxx".}
type
  GeomFill_TrihedronWithGuidebase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_TrihedronWithGuide::get_type_name(@)",
                              header: "GeomFill_TrihedronWithGuide.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_TrihedronWithGuide::get_type_descriptor(@)",
    header: "GeomFill_TrihedronWithGuide.hxx".}
proc DynamicType*(this: GeomFill_TrihedronWithGuide): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_TrihedronWithGuide.hxx".}
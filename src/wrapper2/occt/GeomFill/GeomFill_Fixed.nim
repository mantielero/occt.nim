##  Created on: 1997-12-09
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  GeomFill_TrihedronLaw, ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TrihedronLaw"
discard "forward decl of GeomFill_Fixed"
discard "forward decl of GeomFill_Fixed"
type
  Handle_GeomFill_Fixed* = handle[GeomFill_Fixed]

## ! Defined an constant TrihedronLaw

type
  GeomFill_Fixed* {.importcpp: "GeomFill_Fixed", header: "GeomFill_Fixed.hxx", bycopy.} = object of GeomFill_TrihedronLaw


proc constructGeomFill_Fixed*(Tangent: gp_Vec; Normal: gp_Vec): GeomFill_Fixed {.
    constructor, importcpp: "GeomFill_Fixed(@)", header: "GeomFill_Fixed.hxx".}
proc Copy*(this: GeomFill_Fixed): handle[GeomFill_TrihedronLaw] {.noSideEffect,
    importcpp: "Copy", header: "GeomFill_Fixed.hxx".}
proc D0*(this: var GeomFill_Fixed; Param: Standard_Real; Tangent: var gp_Vec;
        Normal: var gp_Vec; BiNormal: var gp_Vec): Standard_Boolean {.importcpp: "D0",
    header: "GeomFill_Fixed.hxx".}
proc D1*(this: var GeomFill_Fixed; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; Normal: var gp_Vec; DNormal: var gp_Vec;
        BiNormal: var gp_Vec; DBiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D1", header: "GeomFill_Fixed.hxx".}
proc D2*(this: var GeomFill_Fixed; Param: Standard_Real; Tangent: var gp_Vec;
        DTangent: var gp_Vec; D2Tangent: var gp_Vec; Normal: var gp_Vec;
        DNormal: var gp_Vec; D2Normal: var gp_Vec; BiNormal: var gp_Vec;
        DBiNormal: var gp_Vec; D2BiNormal: var gp_Vec): Standard_Boolean {.
    importcpp: "D2", header: "GeomFill_Fixed.hxx".}
proc NbIntervals*(this: GeomFill_Fixed; S: GeomAbs_Shape): Standard_Integer {.
    noSideEffect, importcpp: "NbIntervals", header: "GeomFill_Fixed.hxx".}
proc Intervals*(this: GeomFill_Fixed; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    noSideEffect, importcpp: "Intervals", header: "GeomFill_Fixed.hxx".}
proc GetAverageLaw*(this: var GeomFill_Fixed; ATangent: var gp_Vec;
                   ANormal: var gp_Vec; ABiNormal: var gp_Vec) {.
    importcpp: "GetAverageLaw", header: "GeomFill_Fixed.hxx".}
proc IsConstant*(this: GeomFill_Fixed): Standard_Boolean {.noSideEffect,
    importcpp: "IsConstant", header: "GeomFill_Fixed.hxx".}
type
  GeomFill_Fixedbase_type* = GeomFill_TrihedronLaw

proc get_type_name*(): cstring {.importcpp: "GeomFill_Fixed::get_type_name(@)",
                              header: "GeomFill_Fixed.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_Fixed::get_type_descriptor(@)",
    header: "GeomFill_Fixed.hxx".}
proc DynamicType*(this: GeomFill_Fixed): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_Fixed.hxx".}
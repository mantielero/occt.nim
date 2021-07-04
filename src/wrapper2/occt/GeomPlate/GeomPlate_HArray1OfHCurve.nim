##  Created on: 1996-03-07
##  Created by: Stagiaire Frederic CALOONE
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Adaptor3d/Adaptor3d_HCurve, GeomPlate_Array1OfHCurve,
  ../NCollection/NCollection_DefineHArray1

type
  GeomPlate_HArray1OfHCurve* {.importcpp: "GeomPlate_HArray1OfHCurve",
                              header: "GeomPlate_HArray1OfHCurve.hxx", bycopy.} = object of GeomPlate_Array1OfHCurve


proc constructGeomPlate_HArray1OfHCurve*(theLower: Standard_Integer;
                                        theUpper: Standard_Integer): GeomPlate_HArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc constructGeomPlate_HArray1OfHCurve*(theLower: Standard_Integer;
                                        theUpper: Standard_Integer;
                                        theValue: value_type): GeomPlate_HArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc constructGeomPlate_HArray1OfHCurve*(theOther: GeomPlate_Array1OfHCurve): GeomPlate_HArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc Array1*(this: GeomPlate_HArray1OfHCurve): GeomPlate_Array1OfHCurve {.
    noSideEffect, importcpp: "Array1", header: "GeomPlate_HArray1OfHCurve.hxx".}
proc ChangeArray1*(this: var GeomPlate_HArray1OfHCurve): var GeomPlate_Array1OfHCurve {.
    importcpp: "ChangeArray1", header: "GeomPlate_HArray1OfHCurve.hxx".}
type
  GeomPlate_HArray1OfHCurvebase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "GeomPlate_HArray1OfHCurve::get_type_name(@)",
                              header: "GeomPlate_HArray1OfHCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomPlate_HArray1OfHCurve::get_type_descriptor(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc DynamicType*(this: GeomPlate_HArray1OfHCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_HArray1OfHCurve.hxx".}
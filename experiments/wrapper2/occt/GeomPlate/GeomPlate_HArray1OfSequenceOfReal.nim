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
  ../TColStd/TColStd_SequenceOfReal, GeomPlate_Array1OfSequenceOfReal,
  ../NCollection/NCollection_DefineHArray1

type
  GeomPlate_HArray1OfSequenceOfReal* {.importcpp: "GeomPlate_HArray1OfSequenceOfReal", header: "GeomPlate_HArray1OfSequenceOfReal.hxx",
                                      bycopy.} = object of GeomPlate_Array1OfSequenceOfReal


proc constructGeomPlate_HArray1OfSequenceOfReal*(theLower: Standard_Integer;
    theUpper: Standard_Integer): GeomPlate_HArray1OfSequenceOfReal {.constructor,
    importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc constructGeomPlate_HArray1OfSequenceOfReal*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): GeomPlate_HArray1OfSequenceOfReal {.
    constructor, importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc constructGeomPlate_HArray1OfSequenceOfReal*(
    theOther: GeomPlate_Array1OfSequenceOfReal): GeomPlate_HArray1OfSequenceOfReal {.
    constructor, importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc Array1*(this: GeomPlate_HArray1OfSequenceOfReal): GeomPlate_Array1OfSequenceOfReal {.
    noSideEffect, importcpp: "Array1",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc ChangeArray1*(this: var GeomPlate_HArray1OfSequenceOfReal): var GeomPlate_Array1OfSequenceOfReal {.
    importcpp: "ChangeArray1", header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
type
  GeomPlate_HArray1OfSequenceOfRealbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "GeomPlate_HArray1OfSequenceOfReal::get_type_name(@)",
                              header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomPlate_HArray1OfSequenceOfReal::get_type_descriptor(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc DynamicType*(this: GeomPlate_HArray1OfSequenceOfReal): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
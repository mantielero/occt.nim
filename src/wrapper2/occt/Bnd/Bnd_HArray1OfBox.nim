##  Created on: 1991-01-08
##  Created by: Didier Piffault
##  Copyright (c) 1991-1999 Matra Datavision
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
  Bnd_Box, Bnd_Array1OfBox, ../NCollection/NCollection_DefineHArray1

type
  Bnd_HArray1OfBox* {.importcpp: "Bnd_HArray1OfBox",
                     header: "Bnd_HArray1OfBox.hxx", bycopy.} = object of Bnd_Array1OfBox


proc constructBnd_HArray1OfBox*(theLower: Standard_Integer;
                               theUpper: Standard_Integer): Bnd_HArray1OfBox {.
    constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc constructBnd_HArray1OfBox*(theLower: Standard_Integer;
                               theUpper: Standard_Integer; theValue: value_type): Bnd_HArray1OfBox {.
    constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc constructBnd_HArray1OfBox*(theOther: Bnd_Array1OfBox): Bnd_HArray1OfBox {.
    constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc Array1*(this: Bnd_HArray1OfBox): Bnd_Array1OfBox {.noSideEffect,
    importcpp: "Array1", header: "Bnd_HArray1OfBox.hxx".}
proc ChangeArray1*(this: var Bnd_HArray1OfBox): var Bnd_Array1OfBox {.
    importcpp: "ChangeArray1", header: "Bnd_HArray1OfBox.hxx".}
type
  Bnd_HArray1OfBoxbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Bnd_HArray1OfBox::get_type_name(@)",
                              header: "Bnd_HArray1OfBox.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Bnd_HArray1OfBox::get_type_descriptor(@)",
    header: "Bnd_HArray1OfBox.hxx".}
proc DynamicType*(this: Bnd_HArray1OfBox): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Bnd_HArray1OfBox.hxx".}
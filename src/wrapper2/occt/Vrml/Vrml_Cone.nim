##  Created on: 1996-12-24
##  Created by: Alexander BRIVIN
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Vrml_ConeParts, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

## ! defines a Cone node of VRML specifying geometry shapes.
## ! This  node  represents  a  simple  cone,  whose  central  axis  is  aligned
## ! with  the  y-axis.  By  default ,  the  cone  is  centred  at  (0,0,0)
## ! and  has  size  of  -1  to  +1  in  the  all  three  directions.
## ! the  cone  has  a  radius  of  1  at  the  bottom  and  height  of  2,
## ! with  its  apex  at  1  and  its  bottom  at  -1.  The  cone  has  two  parts:
## ! the  sides  and  the  bottom

type
  Vrml_Cone* {.importcpp: "Vrml_Cone", header: "Vrml_Cone.hxx", bycopy.} = object


proc constructVrml_Cone*(aParts: Vrml_ConeParts = Vrml_ConeALL;
                        aBottomRadius: Standard_Real = 1; aHeight: Standard_Real = 2): Vrml_Cone {.
    constructor, importcpp: "Vrml_Cone(@)", header: "Vrml_Cone.hxx".}
proc SetParts*(this: var Vrml_Cone; aParts: Vrml_ConeParts) {.importcpp: "SetParts",
    header: "Vrml_Cone.hxx".}
proc Parts*(this: Vrml_Cone): Vrml_ConeParts {.noSideEffect, importcpp: "Parts",
    header: "Vrml_Cone.hxx".}
proc SetBottomRadius*(this: var Vrml_Cone; aBottomRadius: Standard_Real) {.
    importcpp: "SetBottomRadius", header: "Vrml_Cone.hxx".}
proc BottomRadius*(this: Vrml_Cone): Standard_Real {.noSideEffect,
    importcpp: "BottomRadius", header: "Vrml_Cone.hxx".}
proc SetHeight*(this: var Vrml_Cone; aHeight: Standard_Real) {.importcpp: "SetHeight",
    header: "Vrml_Cone.hxx".}
proc Height*(this: Vrml_Cone): Standard_Real {.noSideEffect, importcpp: "Height",
    header: "Vrml_Cone.hxx".}
proc Print*(this: Vrml_Cone; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Cone.hxx".}
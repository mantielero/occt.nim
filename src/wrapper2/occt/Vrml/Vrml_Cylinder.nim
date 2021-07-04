##  Created on: 1996-12-25
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
  ../Standard/Standard_Handle, Vrml_CylinderParts, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

## ! defines a Cylinder node of VRML specifying geometry shapes.
## ! This  node  represents  a  simple  capped  cylinder  centred  around the  y-axis.
## ! By  default ,  the  cylinder  is  centred  at  (0,0,0)
## ! and  has  size  of  -1  to  +1  in  the  all  three  dimensions.
## ! The  cylinder  has  three  parts:
## ! the  sides,  the  top  (y=+1)  and  the  bottom (y=-1)

type
  Vrml_Cylinder* {.importcpp: "Vrml_Cylinder", header: "Vrml_Cylinder.hxx", bycopy.} = object


proc constructVrml_Cylinder*(aParts: Vrml_CylinderParts = Vrml_CylinderALL;
                            aRadius: Standard_Real = 1; aHeight: Standard_Real = 2): Vrml_Cylinder {.
    constructor, importcpp: "Vrml_Cylinder(@)", header: "Vrml_Cylinder.hxx".}
proc SetParts*(this: var Vrml_Cylinder; aParts: Vrml_CylinderParts) {.
    importcpp: "SetParts", header: "Vrml_Cylinder.hxx".}
proc Parts*(this: Vrml_Cylinder): Vrml_CylinderParts {.noSideEffect,
    importcpp: "Parts", header: "Vrml_Cylinder.hxx".}
proc SetRadius*(this: var Vrml_Cylinder; aRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "Vrml_Cylinder.hxx".}
proc Radius*(this: Vrml_Cylinder): Standard_Real {.noSideEffect, importcpp: "Radius",
    header: "Vrml_Cylinder.hxx".}
proc SetHeight*(this: var Vrml_Cylinder; aHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "Vrml_Cylinder.hxx".}
proc Height*(this: Vrml_Cylinder): Standard_Real {.noSideEffect, importcpp: "Height",
    header: "Vrml_Cylinder.hxx".}
proc Print*(this: Vrml_Cylinder; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Cylinder.hxx".}
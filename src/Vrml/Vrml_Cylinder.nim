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

## ! defines a Cylinder node of VRML specifying geometry shapes.
## ! This  node  represents  a  simple  capped  cylinder  centred  around the  y-axis.
## ! By  default ,  the  cylinder  is  centred  at  (0,0,0)
## ! and  has  size  of  -1  to  +1  in  the  all  three  dimensions.
## ! The  cylinder  has  three  parts:
## ! the  sides,  the  top  (y=+1)  and  the  bottom (y=-1)

type
  VrmlCylinder* {.importcpp: "Vrml_Cylinder", header: "Vrml_Cylinder.hxx", bycopy.} = object


proc constructVrmlCylinder*(aParts: VrmlCylinderParts = vrmlCylinderALL;
                           aRadius: cfloat = 1; aHeight: cfloat = 2): VrmlCylinder {.
    constructor, importcpp: "Vrml_Cylinder(@)", header: "Vrml_Cylinder.hxx".}
proc setParts*(this: var VrmlCylinder; aParts: VrmlCylinderParts) {.
    importcpp: "SetParts", header: "Vrml_Cylinder.hxx".}
proc parts*(this: VrmlCylinder): VrmlCylinderParts {.noSideEffect,
    importcpp: "Parts", header: "Vrml_Cylinder.hxx".}
proc setRadius*(this: var VrmlCylinder; aRadius: cfloat) {.importcpp: "SetRadius",
    header: "Vrml_Cylinder.hxx".}
proc radius*(this: VrmlCylinder): cfloat {.noSideEffect, importcpp: "Radius",
                                       header: "Vrml_Cylinder.hxx".}
proc setHeight*(this: var VrmlCylinder; aHeight: cfloat) {.importcpp: "SetHeight",
    header: "Vrml_Cylinder.hxx".}
proc height*(this: VrmlCylinder): cfloat {.noSideEffect, importcpp: "Height",
                                       header: "Vrml_Cylinder.hxx".}
proc print*(this: VrmlCylinder; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Cylinder.hxx".}


























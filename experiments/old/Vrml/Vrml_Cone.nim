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

## ! defines a Cone node of VRML specifying geometry shapes.
## ! This  node  represents  a  simple  cone,  whose  central  axis  is  aligned
## ! with  the  y-axis.  By  default ,  the  cone  is  centred  at  (0,0,0)
## ! and  has  size  of  -1  to  +1  in  the  all  three  directions.
## ! the  cone  has  a  radius  of  1  at  the  bottom  and  height  of  2,
## ! with  its  apex  at  1  and  its  bottom  at  -1.  The  cone  has  two  parts:
## ! the  sides  and  the  bottom

type
  VrmlCone* {.importcpp: "Vrml_Cone", header: "Vrml_Cone.hxx", bycopy.} = object


proc constructVrmlCone*(aParts: VrmlConeParts = vrmlConeALL;
                       aBottomRadius: cfloat = 1; aHeight: cfloat = 2): VrmlCone {.
    constructor, importcpp: "Vrml_Cone(@)", header: "Vrml_Cone.hxx".}
proc setParts*(this: var VrmlCone; aParts: VrmlConeParts) {.importcpp: "SetParts",
    header: "Vrml_Cone.hxx".}
proc parts*(this: VrmlCone): VrmlConeParts {.noSideEffect, importcpp: "Parts",
    header: "Vrml_Cone.hxx".}
proc setBottomRadius*(this: var VrmlCone; aBottomRadius: cfloat) {.
    importcpp: "SetBottomRadius", header: "Vrml_Cone.hxx".}
proc bottomRadius*(this: VrmlCone): cfloat {.noSideEffect, importcpp: "BottomRadius",
    header: "Vrml_Cone.hxx".}
proc setHeight*(this: var VrmlCone; aHeight: cfloat) {.importcpp: "SetHeight",
    header: "Vrml_Cone.hxx".}
proc height*(this: VrmlCone): cfloat {.noSideEffect, importcpp: "Height",
                                   header: "Vrml_Cone.hxx".}
proc print*(this: VrmlCone; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Cone.hxx".}


























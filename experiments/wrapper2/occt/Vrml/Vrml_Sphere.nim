##  Created on: 1997-02-04
##  Created by: Alexander BRIVIN
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

## ! defines a Sphere node of VRML specifying geometry shapes.
## ! This  node  represents  a  sphere.
## ! By  default ,  the  sphere  is  centred  at  (0,0,0) and  has  a  radius  of  1.

type
  VrmlSphere* {.importcpp: "Vrml_Sphere", header: "Vrml_Sphere.hxx", bycopy.} = object


proc constructVrmlSphere*(aRadius: cfloat = 1): VrmlSphere {.constructor,
    importcpp: "Vrml_Sphere(@)", header: "Vrml_Sphere.hxx".}
proc setRadius*(this: var VrmlSphere; aRadius: cfloat) {.importcpp: "SetRadius",
    header: "Vrml_Sphere.hxx".}
proc radius*(this: VrmlSphere): cfloat {.noSideEffect, importcpp: "Radius",
                                     header: "Vrml_Sphere.hxx".}
proc print*(this: VrmlSphere; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Sphere.hxx".}


























##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_OutOfRange

## ! Describes a component triangle of a triangulation (Poly_Triangulation object).
## ! A Triangle is defined by a triplet of nodes.
## ! Each node is an index in the table of nodes specific to an existing
## ! triangulation of a shape, and represents a point on the surface.

type
  Poly_Triangle* {.importcpp: "Poly_Triangle", header: "Poly_Triangle.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## a
                                                                                      ## triangle
                                                                                      ## and
                                                                                      ## sets
                                                                                      ## all
                                                                                      ## indices
                                                                                      ## to
                                                                                      ## zero.


proc constructPoly_Triangle*(): Poly_Triangle {.constructor,
    importcpp: "Poly_Triangle(@)", header: "Poly_Triangle.hxx".}
proc constructPoly_Triangle*(theN1: Standard_Integer; theN2: Standard_Integer;
                            theN3: Standard_Integer): Poly_Triangle {.constructor,
    importcpp: "Poly_Triangle(@)", header: "Poly_Triangle.hxx".}
proc Set*(this: var Poly_Triangle; theN1: Standard_Integer; theN2: Standard_Integer;
         theN3: Standard_Integer) {.importcpp: "Set", header: "Poly_Triangle.hxx".}
proc Set*(this: var Poly_Triangle; theIndex: Standard_Integer;
         theNode: Standard_Integer) {.importcpp: "Set", header: "Poly_Triangle.hxx".}
proc Get*(this: Poly_Triangle; theN1: var Standard_Integer;
         theN2: var Standard_Integer; theN3: var Standard_Integer) {.noSideEffect,
    importcpp: "Get", header: "Poly_Triangle.hxx".}
proc Value*(this: Poly_Triangle; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "Poly_Triangle.hxx".}
proc `()`*(this: Poly_Triangle; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "#(@)", header: "Poly_Triangle.hxx".}
proc ChangeValue*(this: var Poly_Triangle; theIndex: Standard_Integer): var Standard_Integer {.
    importcpp: "ChangeValue", header: "Poly_Triangle.hxx".}
proc `()`*(this: var Poly_Triangle; Index: Standard_Integer): var Standard_Integer {.
    importcpp: "#(@)", header: "Poly_Triangle.hxx".}
##  Created on: 1997-02-05
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

discard "forward decl of TCollection_AsciiString"
type
  VrmlInstancing* {.importcpp: "Vrml_Instancing", header: "Vrml_Instancing.hxx",
                   bycopy.} = object ## ! Adds "DEF  <myName>" in  anOStream  (VRML  file).


proc constructVrmlInstancing*(aString: TCollectionAsciiString): VrmlInstancing {.
    constructor, importcpp: "Vrml_Instancing(@)", header: "Vrml_Instancing.hxx".}
proc def*(this: VrmlInstancing; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "DEF", header: "Vrml_Instancing.hxx".}
proc use*(this: VrmlInstancing; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "USE", header: "Vrml_Instancing.hxx".}

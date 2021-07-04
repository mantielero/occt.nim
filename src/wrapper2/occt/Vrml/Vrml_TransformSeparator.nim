##  Created on: 1997-02-12
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream

## ! defines a TransformSeparator node of VRML specifying group properties.
## ! This  group  node  is  similar  to  separator  node  in  that it  saves state
## ! before  traversing  its  children  and  restores  it  afterwards.
## ! This  node  can  be  used  to  isolate  transformations  to  light  sources
## ! or  objects.

type
  Vrml_TransformSeparator* {.importcpp: "Vrml_TransformSeparator",
                            header: "Vrml_TransformSeparator.hxx", bycopy.} = object


proc constructVrml_TransformSeparator*(): Vrml_TransformSeparator {.constructor,
    importcpp: "Vrml_TransformSeparator(@)", header: "Vrml_TransformSeparator.hxx".}
proc Print*(this: var Vrml_TransformSeparator; anOStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "Print", header: "Vrml_TransformSeparator.hxx".}
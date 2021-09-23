##  Created on: 1997-03-27
##  Created by: Alexander BRIVIN and Dmitry TARASOV
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
  ../Standard/Standard_Handle, Vrml_SeparatorRenderCulling,
  ../Standard/Standard_Boolean, ../Standard/Standard_OStream

## ! defines a Separator node of VRML specifying group properties.
## ! This group node performs a push (save) of the traversal state before traversing its children
## ! and a pop (restore) after traversing them. This isolates the separator's children from the
## ! rest of the scene graph. A separator can include lights, cameras, coordinates, normals,
## ! bindings, and all other properties.
## ! Separators can also perform render culling. Render culling skips over traversal of the
## ! separator's children if they are not going to be rendered, based on the comparison of the
## ! separator's bounding box with the current view volume. Culling is controlled by the
## ! renderCulling field. These are set to AUTO by default, allowing the implementation to
## ! decide whether or not to cull.

type
  Vrml_Separator* {.importcpp: "Vrml_Separator", header: "Vrml_Separator.hxx", bycopy.} = object


proc constructVrml_Separator*(aRenderCulling: Vrml_SeparatorRenderCulling): Vrml_Separator {.
    constructor, importcpp: "Vrml_Separator(@)", header: "Vrml_Separator.hxx".}
proc constructVrml_Separator*(): Vrml_Separator {.constructor,
    importcpp: "Vrml_Separator(@)", header: "Vrml_Separator.hxx".}
proc SetRenderCulling*(this: var Vrml_Separator;
                      aRenderCulling: Vrml_SeparatorRenderCulling) {.
    importcpp: "SetRenderCulling", header: "Vrml_Separator.hxx".}
proc RenderCulling*(this: Vrml_Separator): Vrml_SeparatorRenderCulling {.
    noSideEffect, importcpp: "RenderCulling", header: "Vrml_Separator.hxx".}
proc Print*(this: var Vrml_Separator; anOStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "Print", header: "Vrml_Separator.hxx".}
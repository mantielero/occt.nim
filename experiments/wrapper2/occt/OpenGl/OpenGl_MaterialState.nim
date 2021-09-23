##  Created on: 2013-10-02
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  OpenGl_ShaderStates, OpenGl_Material

## ! Defines generic state of material properties.

type
  OpenGl_MaterialState* {.importcpp: "OpenGl_MaterialState",
                         header: "OpenGl_MaterialState.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## new
                                                                                                 ## material
                                                                                                 ## state.
    ## !< front material
    ## !< back  material
    ## !< alpha cutoff value
    ## !< distinguish front/back flag
    ## !< flag for mapping a texture


proc constructOpenGl_MaterialState*(): OpenGl_MaterialState {.constructor,
    importcpp: "OpenGl_MaterialState(@)", header: "OpenGl_MaterialState.hxx".}
proc Set*(this: var OpenGl_MaterialState; theFrontMat: OpenGl_Material;
         theBackMat: OpenGl_Material; theAlphaCutoff: cfloat;
         theToDistinguish: bool; theToMapTexture: bool) {.importcpp: "Set",
    header: "OpenGl_MaterialState.hxx".}
proc FrontMaterial*(this: OpenGl_MaterialState): OpenGl_Material {.noSideEffect,
    importcpp: "FrontMaterial", header: "OpenGl_MaterialState.hxx".}
proc BackMaterial*(this: OpenGl_MaterialState): OpenGl_Material {.noSideEffect,
    importcpp: "BackMaterial", header: "OpenGl_MaterialState.hxx".}
proc AlphaCutoff*(this: OpenGl_MaterialState): cfloat {.noSideEffect,
    importcpp: "AlphaCutoff", header: "OpenGl_MaterialState.hxx".}
proc HasAlphaCutoff*(this: OpenGl_MaterialState): bool {.noSideEffect,
    importcpp: "HasAlphaCutoff", header: "OpenGl_MaterialState.hxx".}
proc ToDistinguish*(this: OpenGl_MaterialState): bool {.noSideEffect,
    importcpp: "ToDistinguish", header: "OpenGl_MaterialState.hxx".}
proc ToMapTexture*(this: OpenGl_MaterialState): bool {.noSideEffect,
    importcpp: "ToMapTexture", header: "OpenGl_MaterialState.hxx".}
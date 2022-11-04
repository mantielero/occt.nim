import ../../tkernel/standard/standard_types
import opengl_types
import ../../tkernel/tcollection/[tcollection_types, tcollection_asciistring]
import ../../tkv3d/graphic3d/[graphic3d_types, graphic3d_vec3]

##  Author: Ilya Khramov
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! This class contains specular and diffuse maps required for Image Base Lighting (IBL) in PBR shading model with it's generation methods.



proc create*(theCtx: Handle[OpenGlContext]; thePow2Size: cuint = 9;
            theSpecMapLevelsNum: cuint = 6;
            theId: TCollectionAsciiString = newTCollectionAsciiString("PBREnvironment")): Handle[
    OpenGlPBREnvironment] {.cdecl, importcpp: "OpenGl_PBREnvironment::Create(@)",
                           header: "OpenGl_PBREnvironment.hxx".}
proc `bind`*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Bind", header: "OpenGl_PBREnvironment.hxx".}
proc unbind*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Unbind", header: "OpenGl_PBREnvironment.hxx".}
# proc clear*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext];
#            theColor: Graphic3dVec3 = graphic3dVec3(1.f)) {.cdecl, importcpp: "Clear",
#     header: "OpenGl_PBREnvironment.hxx".}
proc bake*(this: var OpenGlPBREnvironment; theCtx: Handle[OpenGlContext];
          theEnvMap: Handle[OpenGlTexture]; theZIsInverted: bool = false;
          theIsTopDown: bool = true; theDiffMapNbSamples: csize_t = 1024;
          theSpecMapNbSamples: csize_t = 256;
          theProbability: StandardShortReal = 0.99f) {.cdecl, importcpp: "Bake",
    header: "OpenGl_PBREnvironment.hxx".}
proc specMapLevelsNumber*(this: OpenGlPBREnvironment): cuint {.noSideEffect, cdecl,
    importcpp: "SpecMapLevelsNumber", header: "OpenGl_PBREnvironment.hxx".}
proc pow2Size*(this: OpenGlPBREnvironment): cuint {.noSideEffect, cdecl,
    importcpp: "Pow2Size", header: "OpenGl_PBREnvironment.hxx".}
proc sizesAreDifferent*(this: OpenGlPBREnvironment; thePow2Size: cuint;
                       theSpecMapLevelsNumber: cuint): bool {.noSideEffect, cdecl,
    importcpp: "SizesAreDifferent", header: "OpenGl_PBREnvironment.hxx".}
proc isNeededToBeBound*(this: OpenGlPBREnvironment): bool {.noSideEffect, cdecl,
    importcpp: "IsNeededToBeBound", header: "OpenGl_PBREnvironment.hxx".}
proc release*(this: var OpenGlPBREnvironment; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_PBREnvironment.hxx".}
proc estimatedDataSize*(this: OpenGlPBREnvironment): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_PBREnvironment.hxx".}
proc isComplete*(this: OpenGlPBREnvironment): bool {.noSideEffect, cdecl,
    importcpp: "IsComplete", header: "OpenGl_PBREnvironment.hxx".}
proc destroyOpenGlPBREnvironment*(this: var OpenGlPBREnvironment) {.cdecl,
    importcpp: "#.~OpenGl_PBREnvironment()", header: "OpenGl_PBREnvironment.hxx".}


import opengl_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/standard/standard_types

##  Created on: 2016-06-16
##  Created by: Denis BOGOLEPOV & Danila ULYANOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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

discard "forward decl of Graphic3d_RenderingParams"


proc newOpenGlTileSampler*(): OpenGlTileSampler {.cdecl, constructor,
    importcpp: "OpenGl_TileSampler(@)", header: "OpenGl_TileSampler.hxx".}
proc tileSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "TileSize", header: "OpenGl_TileSampler.hxx".}
proc varianceScaleFactor*(this: OpenGlTileSampler): cfloat {.noSideEffect, cdecl,
    importcpp: "VarianceScaleFactor", header: "OpenGl_TileSampler.hxx".}
proc nbTilesX*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTilesX", header: "OpenGl_TileSampler.hxx".}
proc nbTilesY*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTilesY", header: "OpenGl_TileSampler.hxx".}
proc nbTiles*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTiles", header: "OpenGl_TileSampler.hxx".}
proc viewSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "ViewSize", header: "OpenGl_TileSampler.hxx".}
proc nbOffsetTiles*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "NbOffsetTiles", header: "OpenGl_TileSampler.hxx".}
proc nbOffsetTilesMax*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect,
    cdecl, importcpp: "NbOffsetTilesMax", header: "OpenGl_TileSampler.hxx".}
proc offsetTilesViewport*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "OffsetTilesViewport", header: "OpenGl_TileSampler.hxx".}
proc offsetTilesViewportMax*(this: OpenGlTileSampler): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "OffsetTilesViewportMax", header: "OpenGl_TileSampler.hxx".}
proc maxTileSamples*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "MaxTileSamples", header: "OpenGl_TileSampler.hxx".}
proc setSize*(this: var OpenGlTileSampler; theParams: Graphic3dRenderingParams;
             theSize: Graphic3dVec2i) {.cdecl, importcpp: "SetSize", header: "OpenGl_TileSampler.hxx".}
proc grabVarianceMap*(this: var OpenGlTileSampler;
                     theContext: Handle[OpenGlContext];
                     theTexture: Handle[OpenGlTexture]) {.cdecl,
    importcpp: "GrabVarianceMap", header: "OpenGl_TileSampler.hxx".}
proc reset*(this: var OpenGlTileSampler) {.cdecl, importcpp: "Reset", header: "OpenGl_TileSampler.hxx".}
proc uploadSamples*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theSamplesTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    cdecl, importcpp: "UploadSamples", header: "OpenGl_TileSampler.hxx".}
proc uploadOffsets*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theOffsetsTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    cdecl, importcpp: "UploadOffsets", header: "OpenGl_TileSampler.hxx".}

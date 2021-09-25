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
type
  OpenGlTileSampler* {.importcpp: "OpenGl_TileSampler",
                      header: "OpenGl_TileSampler.hxx", bycopy.} = object ## ! Creates new tile sampler.
                                                                     ## ! Returns number of pixels in the given tile.
    ## !< number of samples per tile (initially all 1)
    ## !< number of samples for all pixels within the tile (initially equals to Tile area)
    ## !< Estimation of visual error per tile
    ## !< Estimation of visual error per tile (raw data)
    ## !< 2D array of tiles redirecting to another tile
    ## !< 2D array of tiles redirecting to another tile (shrunk)
    ## !< Marginal distribution of 2D error map
    ## !< Halton sequence generator
    ## !< Index of generated sample
    ## !< scale factor for quantization of visual error (float) into signed integer
    ## !< tile size
    ## !< ray-tracing viewport


proc constructOpenGlTileSampler*(): OpenGlTileSampler {.constructor,
    importcpp: "OpenGl_TileSampler(@)", header: "OpenGl_TileSampler.hxx".}
proc tileSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect,
    importcpp: "TileSize", header: "OpenGl_TileSampler.hxx".}
proc varianceScaleFactor*(this: OpenGlTileSampler): cfloat {.noSideEffect,
    importcpp: "VarianceScaleFactor", header: "OpenGl_TileSampler.hxx".}
proc nbTilesX*(this: OpenGlTileSampler): cint {.noSideEffect, importcpp: "NbTilesX",
    header: "OpenGl_TileSampler.hxx".}
proc nbTilesY*(this: OpenGlTileSampler): cint {.noSideEffect, importcpp: "NbTilesY",
    header: "OpenGl_TileSampler.hxx".}
proc nbTiles*(this: OpenGlTileSampler): cint {.noSideEffect, importcpp: "NbTiles",
    header: "OpenGl_TileSampler.hxx".}
proc viewSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect,
    importcpp: "ViewSize", header: "OpenGl_TileSampler.hxx".}
proc nbOffsetTiles*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, importcpp: "NbOffsetTiles", header: "OpenGl_TileSampler.hxx".}
proc nbOffsetTilesMax*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect,
    importcpp: "NbOffsetTilesMax", header: "OpenGl_TileSampler.hxx".}
proc offsetTilesViewport*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, importcpp: "OffsetTilesViewport",
    header: "OpenGl_TileSampler.hxx".}
proc offsetTilesViewportMax*(this: OpenGlTileSampler): Graphic3dVec2i {.
    noSideEffect, importcpp: "OffsetTilesViewportMax",
    header: "OpenGl_TileSampler.hxx".}
proc maxTileSamples*(this: OpenGlTileSampler): cint {.noSideEffect,
    importcpp: "MaxTileSamples", header: "OpenGl_TileSampler.hxx".}
proc setSize*(this: var OpenGlTileSampler; theParams: Graphic3dRenderingParams;
             theSize: Graphic3dVec2i) {.importcpp: "SetSize",
                                      header: "OpenGl_TileSampler.hxx".}
proc grabVarianceMap*(this: var OpenGlTileSampler;
                     theContext: Handle[OpenGlContext];
                     theTexture: Handle[OpenGlTexture]) {.
    importcpp: "GrabVarianceMap", header: "OpenGl_TileSampler.hxx".}
proc reset*(this: var OpenGlTileSampler) {.importcpp: "Reset",
                                       header: "OpenGl_TileSampler.hxx".}
proc uploadSamples*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theSamplesTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    importcpp: "UploadSamples", header: "OpenGl_TileSampler.hxx".}
proc uploadOffsets*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theOffsetsTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    importcpp: "UploadOffsets", header: "OpenGl_TileSampler.hxx".}

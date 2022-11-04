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


proc newOpenGlTileSampler*(): OpenGlTileSampler {.cdecl, constructor,
    importcpp: "OpenGl_TileSampler(@)", dynlib: tkkxbase.}
proc tileSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "TileSize", dynlib: tkkxbase.}
proc varianceScaleFactor*(this: OpenGlTileSampler): cfloat {.noSideEffect, cdecl,
    importcpp: "VarianceScaleFactor", dynlib: tkkxbase.}
proc nbTilesX*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTilesX", dynlib: tkkxbase.}
proc nbTilesY*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTilesY", dynlib: tkkxbase.}
proc nbTiles*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "NbTiles", dynlib: tkkxbase.}
proc viewSize*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect, cdecl,
    importcpp: "ViewSize", dynlib: tkkxbase.}
proc nbOffsetTiles*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "NbOffsetTiles", dynlib: tkkxbase.}
proc nbOffsetTilesMax*(this: OpenGlTileSampler): Graphic3dVec2i {.noSideEffect,
    cdecl, importcpp: "NbOffsetTilesMax", dynlib: tkkxbase.}
proc offsetTilesViewport*(this: OpenGlTileSampler; theAdaptive: bool): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "OffsetTilesViewport", dynlib: tkkxbase.}
proc offsetTilesViewportMax*(this: OpenGlTileSampler): Graphic3dVec2i {.
    noSideEffect, cdecl, importcpp: "OffsetTilesViewportMax", dynlib: tkkxbase.}
proc maxTileSamples*(this: OpenGlTileSampler): cint {.noSideEffect, cdecl,
    importcpp: "MaxTileSamples", dynlib: tkkxbase.}
proc setSize*(this: var OpenGlTileSampler; theParams: Graphic3dRenderingParams;
             theSize: Graphic3dVec2i) {.cdecl, importcpp: "SetSize", dynlib: tkkxbase.}
proc grabVarianceMap*(this: var OpenGlTileSampler;
                     theContext: Handle[OpenGlContext];
                     theTexture: Handle[OpenGlTexture]) {.cdecl,
    importcpp: "GrabVarianceMap", dynlib: tkkxbase.}
proc reset*(this: var OpenGlTileSampler) {.cdecl, importcpp: "Reset", dynlib: tkkxbase.}
proc uploadSamples*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theSamplesTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    cdecl, importcpp: "UploadSamples", dynlib: tkkxbase.}
proc uploadOffsets*(this: var OpenGlTileSampler; theContext: Handle[OpenGlContext];
                   theOffsetsTexture: Handle[OpenGlTexture]; theAdaptive: bool): bool {.
    cdecl, importcpp: "UploadOffsets", dynlib: tkkxbase.}
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

import
  OpenGl_Texture, OpenGl_HaltonSampler, ../Image/Image_PixMapTypedData

discard "forward decl of Graphic3d_RenderingParams"
type
  OpenGl_TileSampler* {.importcpp: "OpenGl_TileSampler",
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


proc constructOpenGl_TileSampler*(): OpenGl_TileSampler {.constructor,
    importcpp: "OpenGl_TileSampler(@)", header: "OpenGl_TileSampler.hxx".}
proc TileSize*(this: OpenGl_TileSampler): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "TileSize", header: "OpenGl_TileSampler.hxx".}
proc VarianceScaleFactor*(this: OpenGl_TileSampler): cfloat {.noSideEffect,
    importcpp: "VarianceScaleFactor", header: "OpenGl_TileSampler.hxx".}
proc NbTilesX*(this: OpenGl_TileSampler): cint {.noSideEffect, importcpp: "NbTilesX",
    header: "OpenGl_TileSampler.hxx".}
proc NbTilesY*(this: OpenGl_TileSampler): cint {.noSideEffect, importcpp: "NbTilesY",
    header: "OpenGl_TileSampler.hxx".}
proc NbTiles*(this: OpenGl_TileSampler): cint {.noSideEffect, importcpp: "NbTiles",
    header: "OpenGl_TileSampler.hxx".}
proc ViewSize*(this: OpenGl_TileSampler): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "ViewSize", header: "OpenGl_TileSampler.hxx".}
proc NbOffsetTiles*(this: OpenGl_TileSampler; theAdaptive: bool): Graphic3d_Vec2i {.
    noSideEffect, importcpp: "NbOffsetTiles", header: "OpenGl_TileSampler.hxx".}
proc NbOffsetTilesMax*(this: OpenGl_TileSampler): Graphic3d_Vec2i {.noSideEffect,
    importcpp: "NbOffsetTilesMax", header: "OpenGl_TileSampler.hxx".}
proc OffsetTilesViewport*(this: OpenGl_TileSampler; theAdaptive: bool): Graphic3d_Vec2i {.
    noSideEffect, importcpp: "OffsetTilesViewport",
    header: "OpenGl_TileSampler.hxx".}
proc OffsetTilesViewportMax*(this: OpenGl_TileSampler): Graphic3d_Vec2i {.
    noSideEffect, importcpp: "OffsetTilesViewportMax",
    header: "OpenGl_TileSampler.hxx".}
proc MaxTileSamples*(this: OpenGl_TileSampler): cint {.noSideEffect,
    importcpp: "MaxTileSamples", header: "OpenGl_TileSampler.hxx".}
proc SetSize*(this: var OpenGl_TileSampler; theParams: Graphic3d_RenderingParams;
             theSize: Graphic3d_Vec2i) {.importcpp: "SetSize",
                                       header: "OpenGl_TileSampler.hxx".}
proc GrabVarianceMap*(this: var OpenGl_TileSampler;
                     theContext: handle[OpenGl_Context];
                     theTexture: handle[OpenGl_Texture]) {.
    importcpp: "GrabVarianceMap", header: "OpenGl_TileSampler.hxx".}
proc Reset*(this: var OpenGl_TileSampler) {.importcpp: "Reset",
                                        header: "OpenGl_TileSampler.hxx".}
proc UploadSamples*(this: var OpenGl_TileSampler;
                   theContext: handle[OpenGl_Context];
                   theSamplesTexture: handle[OpenGl_Texture]; theAdaptive: bool): bool {.
    importcpp: "UploadSamples", header: "OpenGl_TileSampler.hxx".}
proc UploadOffsets*(this: var OpenGl_TileSampler;
                   theContext: handle[OpenGl_Context];
                   theOffsetsTexture: handle[OpenGl_Texture]; theAdaptive: bool): bool {.
    importcpp: "UploadOffsets", header: "OpenGl_TileSampler.hxx".}
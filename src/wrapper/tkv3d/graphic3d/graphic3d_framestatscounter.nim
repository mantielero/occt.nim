##  Copyright (c) 2018 OPEN CASCADE SAS
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

## ! Stats counter.

type
  Graphic3dFrameStatsCounter* {.size: sizeof(cint),
                               importcpp: "Graphic3d_FrameStatsCounter",
                               header: "Graphic3d_FrameStatsCounter.hxx".} = enum ##  overall scene counters
    graphic3dFrameStatsCounterNbLayers = 0, ## !< number of ZLayers
    graphic3dFrameStatsCounterNbStructs, ## !< number of defined OpenGl_Structure
    graphic3dFrameStatsCounterEstimatedBytesGeom, ## !< estimated GPU memory used for geometry
    graphic3dFrameStatsCounterEstimatedBytesFbos, ## !< estimated GPU memory used for FBOs
    graphic3dFrameStatsCounterEstimatedBytesTextures, ## !< estimated GPU memory used for textures
                                                     ##  rendered counters
    graphic3dFrameStatsCounterNbLayersNotCulled, ## !< number of not culled ZLayers
    graphic3dFrameStatsCounterNbStructsNotCulled, ## !< number of not culled OpenGl_Structure
    graphic3dFrameStatsCounterNbGroupsNotCulled, ## !< number of not culled OpenGl_Group
    graphic3dFrameStatsCounterNbElemsNotCulled, ## !< number of not culled OpenGl_Element
    graphic3dFrameStatsCounterNbElemsFillNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing triangles
    graphic3dFrameStatsCounterNbElemsLineNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing lines
    graphic3dFrameStatsCounterNbElemsPointNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing points
    graphic3dFrameStatsCounterNbElemsTextNotCulled, ## !< number of not culled OpenGl_Text
    graphic3dFrameStatsCounterNbTrianglesNotCulled, ## !< number of not culled (as structure) triangles
    graphic3dFrameStatsCounterNbLinesNotCulled, ## !< number of not culled (as structure) line segments
    graphic3dFrameStatsCounterNbPointsNotCulled, ## !< number of not culled (as structure) points
                                                ## Graphic3d_FrameStatsCounter_NbGlyphsNotCulled,    //!< number glyphs, to be considered in future
                                                ##  immediate layer rendered counters
    graphic3dFrameStatsCounterNbLayersImmediate, ## !< number of ZLayers in immediate layer
    graphic3dFrameStatsCounterNbStructsImmediate, ## !< number of OpenGl_Structure in immediate layer
    graphic3dFrameStatsCounterNbGroupsImmediate, ## !< number of OpenGl_Group in immediate layer
    graphic3dFrameStatsCounterNbElemsImmediate, ## !< number of OpenGl_Element in immediate layer
    graphic3dFrameStatsCounterNbElemsFillImmediate, ## !< number of OpenGl_PrimitiveArray drawing triangles in immediate layer
    graphic3dFrameStatsCounterNbElemsLineImmediate, ## !< number of OpenGl_PrimitiveArray drawing lines in immediate layer
    graphic3dFrameStatsCounterNbElemsPointImmediate, ## !< number of OpenGl_PrimitiveArray drawing points in immediate layer
    graphic3dFrameStatsCounterNbElemsTextImmediate, ## !< number of OpenGl_Text in immediate layer
    graphic3dFrameStatsCounterNbTrianglesImmediate, ## !< number of triangles in immediate layer
    graphic3dFrameStatsCounterNbLinesImmediate, ## !< number of line segments in immediate layer
    graphic3dFrameStatsCounterNbPointsImmediate ## !< number of points in immediate layer


const
  graphic3dFrameStatsCounterNB* = (graphic3dFrameStatsCounterNbPointsImmediate.int + 1)#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_LOWER* = graphic3dFrameStatsCounterNbLayers#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_UPPER* = graphic3dFrameStatsCounterEstimatedBytesTextures#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_LOWER* = graphic3dFrameStatsCounterNbLayersNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_UPPER* = graphic3dFrameStatsCounterNbPointsNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_LOWER* = graphic3dFrameStatsCounterNbLayersImmediate#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_UPPER* = graphic3dFrameStatsCounterNbPointsImmediate#.Graphic3dFrameStatsCounter

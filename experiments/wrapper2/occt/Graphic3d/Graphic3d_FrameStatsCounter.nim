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
    Graphic3dFrameStatsCounterNbLayers = 0, ## !< number of ZLayers
    Graphic3dFrameStatsCounterNbStructs, ## !< number of defined OpenGl_Structure
    Graphic3dFrameStatsCounterEstimatedBytesGeom, ## !< estimated GPU memory used for geometry
    Graphic3dFrameStatsCounterEstimatedBytesFbos, ## !< estimated GPU memory used for FBOs
    Graphic3dFrameStatsCounterEstimatedBytesTextures, ## !< estimated GPU memory used for textures
                                                     ##  rendered counters
    Graphic3dFrameStatsCounterNbLayersNotCulled, ## !< number of not culled ZLayers
    Graphic3dFrameStatsCounterNbStructsNotCulled, ## !< number of not culled OpenGl_Structure
    Graphic3dFrameStatsCounterNbGroupsNotCulled, ## !< number of not culled OpenGl_Group
    Graphic3dFrameStatsCounterNbElemsNotCulled, ## !< number of not culled OpenGl_Element
    Graphic3dFrameStatsCounterNbElemsFillNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing triangles
    Graphic3dFrameStatsCounterNbElemsLineNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing lines
    Graphic3dFrameStatsCounterNbElemsPointNotCulled, ## !< number of not culled OpenGl_PrimitiveArray drawing points
    Graphic3dFrameStatsCounterNbElemsTextNotCulled, ## !< number of not culled OpenGl_Text
    Graphic3dFrameStatsCounterNbTrianglesNotCulled, ## !< number of not culled (as structure) triangles
    Graphic3dFrameStatsCounterNbLinesNotCulled, ## !< number of not culled (as structure) line segments
    Graphic3dFrameStatsCounterNbPointsNotCulled, ## !< number of not culled (as structure) points
                                                ## Graphic3d_FrameStatsCounter_NbGlyphsNotCulled,    //!< number glyphs, to be considered in future
                                                ##  immediate layer rendered counters
    Graphic3dFrameStatsCounterNbLayersImmediate, ## !< number of ZLayers in immediate layer
    Graphic3dFrameStatsCounterNbStructsImmediate, ## !< number of OpenGl_Structure in immediate layer
    Graphic3dFrameStatsCounterNbGroupsImmediate, ## !< number of OpenGl_Group in immediate layer
    Graphic3dFrameStatsCounterNbElemsImmediate, ## !< number of OpenGl_Element in immediate layer
    Graphic3dFrameStatsCounterNbElemsFillImmediate, ## !< number of OpenGl_PrimitiveArray drawing triangles in immediate layer
    Graphic3dFrameStatsCounterNbElemsLineImmediate, ## !< number of OpenGl_PrimitiveArray drawing lines in immediate layer
    Graphic3dFrameStatsCounterNbElemsPointImmediate, ## !< number of OpenGl_PrimitiveArray drawing points in immediate layer
    Graphic3dFrameStatsCounterNbElemsTextImmediate, ## !< number of OpenGl_Text in immediate layer
    Graphic3dFrameStatsCounterNbTrianglesImmediate, ## !< number of triangles in immediate layer
    Graphic3dFrameStatsCounterNbLinesImmediate, ## !< number of line segments in immediate layer
    Graphic3dFrameStatsCounterNbPointsImmediate ## !< number of points in immediate layer


const
  Graphic3dFrameStatsCounterNB* = graphic3dFrameStatsCounterNbPointsImmediate + 1
  Graphic3dFrameStatsCounterSCENE_LOWER* = graphic3dFrameStatsCounterNbLayers
  Graphic3dFrameStatsCounterSCENE_UPPER* = graphic3dFrameStatsCounterEstimatedBytesTextures
  Graphic3dFrameStatsCounterRENDERED_LOWER* = graphic3dFrameStatsCounterNbLayersNotCulled
  Graphic3dFrameStatsCounterRENDERED_UPPER* = graphic3dFrameStatsCounterNbPointsNotCulled
  Graphic3dFrameStatsCounterIMMEDIATE_LOWER* = graphic3dFrameStatsCounterNbLayersImmediate
  Graphic3dFrameStatsCounterIMMEDIATE_UPPER* = graphic3dFrameStatsCounterNbPointsImmediate


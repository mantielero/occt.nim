


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



const
  graphic3dFrameStatsCounterNB* = (graphic3dFrameStatsCounterNbPointsImmediate.int + 1)#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_LOWER* = graphic3dFrameStatsCounterNbLayers#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterSCENE_UPPER* = graphic3dFrameStatsCounterEstimatedBytesTextures#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_LOWER* = graphic3dFrameStatsCounterNbLayersNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterRENDERED_UPPER* = graphic3dFrameStatsCounterNbPointsNotCulled#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_LOWER* = graphic3dFrameStatsCounterNbLayersImmediate#.Graphic3dFrameStatsCounter
  graphic3dFrameStatsCounterIMMEDIATE_UPPER* = graphic3dFrameStatsCounterNbPointsImmediate#.Graphic3dFrameStatsCounter



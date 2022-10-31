import ../../tkernel/standard/standard_types
import graphic3d_types



##  Created on: 2014-05-14
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Helper class to store rendering parameters.




const
  perfCountersBasic = (perfCountersFrameRate.int or perfCountersCPU.int or
        perfCountersLayers.int or perfCountersStructures.int).Graphic3dRenderingParamsPerfCounters  ## ! extended (verbose) statistics
  perfCountersExtended = (perfCountersBasic.int or perfCountersGroups.int or
        perfCountersGroupArrays.int or perfCountersTriangles.int or perfCountersPoints.int or
        perfCountersLines.int or perfCountersEstimMem.int).Graphic3dRenderingParamsPerfCounters  ## ! all counters
  perfCountersAll = (perfCountersExtended.int or perfCountersFrameTime.int or
        perfCountersFrameTimeMax.int).Graphic3dRenderingParamsPerfCounters




proc newGraphic3dRenderingParams*(): Graphic3dRenderingParams {.cdecl, constructor,
    importcpp: "Graphic3d_RenderingParams(@)", header: "Graphic3d_RenderingParams.hxx".}
proc resolutionRatio*(this: Graphic3dRenderingParams): StandardShortReal {.
    noSideEffect, cdecl, importcpp: "ResolutionRatio", header: "Graphic3d_RenderingParams.hxx".}
proc dumpJson*(this: Graphic3dRenderingParams; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_RenderingParams.hxx".}


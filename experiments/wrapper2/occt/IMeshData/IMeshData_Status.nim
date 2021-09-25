##  Created on: 2011-05-17
##  Created by: Oleg AGASHIN
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

## ! Enumerates statuses used to notify state of discrete model.

type
  IMeshDataStatus* {.size: sizeof(cint), importcpp: "IMeshData_Status",
                    header: "IMeshData_Status.hxx".} = enum
    IMeshDataNoError = 0x0,     ## !< Mesh generation is successful.
    IMeshDataOpenWire = 0x1,    ## !< Notifies open wire problem, which can potentially lead to incorrect results.
    IMeshDataSelfIntersectingWire = 0x2, ## !< Notifies self-intersections on discretized wire, which can potentially lead to incorrect results.
    IMeshDataFailure = 0x4,     ## !< Failed to generate mesh for some faces.
    IMeshDataReMesh = 0x8,      ## !< Deflection of some edges has been decreased due to interference of discrete model.
    IMeshDataUnorientedWire = 0x10, ## !< Notifies bad orientation of a wire, which can potentially lead to incorrect results.
    IMeshDataTooFewPoints = 0x20, ## !< Discrete model contains too few boundary points to generate mesh.
    IMeshDataOutdated = 0x40,   ## !< Existing triangulation of some faces corresponds to greater deflection than specified by parameter.
    IMeshDataReused = 0x80,     ## !< Existing triangulation of some faces is reused as far as it fits specified deflection.
    IMeshDataUserBreak = 0x160



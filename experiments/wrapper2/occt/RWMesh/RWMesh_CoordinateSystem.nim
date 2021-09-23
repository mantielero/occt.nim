##  Author: Kirill Gavrilov
##  Copyright: Open CASCADE 2015-2019
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

## ! Standard coordinate system definition.
## ! Open CASCADE does not force application using specific coordinate system,
## ! although Draw Harness and samples define +Z-up +Y-forward coordinate system for camera view manipulation.
## ! This enumeration defines two commonly used conventions - Z-up and Y-up..

type
  RWMesh_CoordinateSystem* {.size: sizeof(cint),
                            importcpp: "RWMesh_CoordinateSystem",
                            header: "RWMesh_CoordinateSystem.hxx".} = enum
    RWMesh_CoordinateSystem_Undefined = -1, ## !< undefined
    RWMesh_CoordinateSystem_posYfwd_posZup = 0, ## !< +YForward+Zup+Xright
    RWMesh_CoordinateSystem_negZfwd_posYup ## !< -ZForward+Yup+Xright

const
  RWMesh_CoordinateSystem_Blender* = RWMesh_CoordinateSystem_posYfwd_posZup
  RWMesh_CoordinateSystem_glTF* = RWMesh_CoordinateSystem_negZfwd_posYup
  RWMesh_CoordinateSystem_Zup* = RWMesh_CoordinateSystem_Blender
  RWMesh_CoordinateSystem_Yup* = RWMesh_CoordinateSystem_glTF

##  Created on: 1992-11-13
##  Created by: GG
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! Determines the type of orientation as a combination of standard DX/DY/DZ directions.
## ! This enumeration defines a model orientation looking towards the user's eye, which is an opposition to Camera main direction.
## ! For example, V3d_Xneg defines +X Camera main direction.
## !
## ! This enumeration defines only main Camera direction, so that the Camera up direction should be defined elsewhere for unambiguous Camera definition.
## ! Open CASCADE does not force application using specific coordinate system, although Draw Harness and samples define +Z-up +Y-forward coordinate system for camera view manipulation.
## ! Therefore, this enumeration also defines V3d_TypeOfOrientation_Zup_* aliases defining front/back/left/top camera orientations for +Z-up convention
## ! as well as V3d_TypeOfOrientation_Yup_* aliases for another commonly used in other systems +Y-up convention.
## ! Applications using other coordinate system can define their own enumeration, when found suitable.

type
  V3dTypeOfOrientation* {.size: sizeof(cint), importcpp: "V3d_TypeOfOrientation",
                         header: "V3d_TypeOfOrientation.hxx".} = enum
    V3dXpos,                  ## !< (+Y+Z) view
    V3dYpos,                  ## !< (-X+Z) view
    V3dZpos,                  ## !< (+X+Y) view
    V3dXneg,                  ## !< (-Y+Z) view
    V3dYneg,                  ## !< (+X+Z) view
    V3dZneg,                  ## !< (+X-Y) view
    V3dXposYpos, V3dXposZpos, V3dYposZpos, V3dXnegYneg, V3dXnegYpos, V3dXnegZneg,
    V3dXnegZpos, V3dYnegZneg, V3dYnegZpos, V3dXposYneg, V3dXposZneg, V3dYposZneg,
    V3dXposYposZpos, V3dXposYnegZpos, V3dXposYposZneg, V3dXnegYposZpos,
    V3dXposYnegZneg, V3dXnegYposZneg, V3dXnegYnegZpos, V3dXnegYnegZneg, ##  +Z-up +Y-forward convention
    V3dTypeOfOrientationZupAxoLeft = v3dXnegYnegZpos, ## !< +Z-up +Y-forward Left +Front+Top
    V3dTypeOfOrientationZupAxoRight = v3dXposYnegZpos, ## !< +Z-up +Y-forward Right+Front+Top
    V3dTypeOfOrientationZupFront = v3dYneg, ## !< +Z-up +Y-forward Front  (+X+Z) view
    V3dTypeOfOrientationZupBack = v3dYpos, ## !< +Z-up +Y-forward Back   (-X+Z) view
    V3dTypeOfOrientationZupTop = v3dZpos, ## !< +Z-up +Y-forward Top    (+X+Y) view
    V3dTypeOfOrientationZupBottom = v3dZneg, ## !< +Z-up +Y-forward Bottom (+X-Y) view
    V3dTypeOfOrientationZupLeft = v3dXneg, ## !< +Z-up +Y-forward Left   (-Y+Z) view
    V3dTypeOfOrientationZupRight = v3dXpos, ## !< +Z-up +Y-forward Right  (+Y+Z) view
                                         ##  +Y-up -Z-forward convention
    V3dTypeOfOrientationYupAxoLeft = v3dXnegYposZpos, ## !< +Y-up -Z-forward Left +Front+Top
    V3dTypeOfOrientationYupAxoRight = v3dXposYposZpos, ## !< +Y-up -Z-forward Right+Front+Top
    V3dTypeOfOrientationYupFront = v3dZpos, ## !< +Y-up -Z-forward Front  (+X+Y) view
    V3dTypeOfOrientationYupBack = v3dZneg, ## !< +Y-up -Z-forward Back   (-X+Y) view
    V3dTypeOfOrientationYupTop = v3dYpos, ## !< +Y-up -Z-forward Top    (+X-Z) view
    V3dTypeOfOrientationYupBottom = v3dYneg, ## !< +Y-up -Z-forward Bottom (-X-Z) view
    V3dTypeOfOrientationYupLeft = v3dXpos, ## !< +Y-up -Z-forward Left   (-Z+Y) view
    V3dTypeOfOrientationYupRight = v3dXneg ## !< +Y-up -Z-forward Right  (+Z+Y) view



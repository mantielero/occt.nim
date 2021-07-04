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
  V3d_TypeOfOrientation* {.size: sizeof(cint), importcpp: "V3d_TypeOfOrientation",
                          header: "V3d_TypeOfOrientation.hxx".} = enum
    V3d_Xpos,                 ## !< (+Y+Z) view
    V3d_Ypos,                 ## !< (-X+Z) view
    V3d_Zpos,                 ## !< (+X+Y) view
    V3d_Xneg,                 ## !< (-Y+Z) view
    V3d_Yneg,                 ## !< (+X+Z) view
    V3d_Zneg,                 ## !< (+X-Y) view
    V3d_XposYpos, V3d_XposZpos, V3d_YposZpos, V3d_XnegYneg, V3d_XnegYpos,
    V3d_XnegZneg, V3d_XnegZpos, V3d_YnegZneg, V3d_YnegZpos, V3d_XposYneg,
    V3d_XposZneg, V3d_YposZneg, V3d_XposYposZpos, V3d_XposYnegZpos,
    V3d_XposYposZneg, V3d_XnegYposZpos, V3d_XposYnegZneg, V3d_XnegYposZneg,
    V3d_XnegYnegZpos, V3d_XnegYnegZneg ##  +Z-up +Y-forward convention

const
  V3d_TypeOfOrientation_Zup_AxoLeft* = V3d_XnegYnegZpos
  V3d_TypeOfOrientation_Zup_AxoRight* = V3d_XposYnegZpos
  V3d_TypeOfOrientation_Zup_Front* = V3d_Yneg
  V3d_TypeOfOrientation_Zup_Back* = V3d_Ypos
  V3d_TypeOfOrientation_Zup_Top* = V3d_Zpos
  V3d_TypeOfOrientation_Zup_Bottom* = V3d_Zneg
  V3d_TypeOfOrientation_Zup_Left* = V3d_Xneg
  V3d_TypeOfOrientation_Zup_Right* = V3d_Xpos
  V3d_TypeOfOrientation_Yup_AxoLeft* = V3d_XnegYposZpos
  V3d_TypeOfOrientation_Yup_AxoRight* = V3d_XposYposZpos
  V3d_TypeOfOrientation_Yup_Front* = V3d_Zpos
  V3d_TypeOfOrientation_Yup_Back* = V3d_Zneg
  V3d_TypeOfOrientation_Yup_Top* = V3d_Ypos
  V3d_TypeOfOrientation_Yup_Bottom* = V3d_Yneg
  V3d_TypeOfOrientation_Yup_Left* = V3d_Xpos
  V3d_TypeOfOrientation_Yup_Right* = V3d_Xneg

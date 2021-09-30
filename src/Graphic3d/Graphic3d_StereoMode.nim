##  Created on: 2015-06-05
##  Created by: Kirill Gavrilov
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! This enumeration defines the list of stereoscopic output modes.

type
  Graphic3dStereoMode* {.size: sizeof(cint), importcpp: "Graphic3d_StereoMode",
                        header: "Graphic3d_StereoMode.hxx".} = enum
    Graphic3dStereoModeQuadBuffer, ## !< OpenGL QuadBuffer
    Graphic3dStereoModeAnaglyph, ## !< Anaglyph glasses, the type should be specified in addition
    Graphic3dStereoModeRowInterlaced, ## !< Row-interlaced stereo
    Graphic3dStereoModeColumnInterlaced, ## !< Column-interlaced stereo
    Graphic3dStereoModeChessBoard, ## !< chess-board stereo for DLP TVs
    Graphic3dStereoModeSideBySide, ## !< horizontal pair
    Graphic3dStereoModeOverUnder, ## !< vertical   pair
    Graphic3dStereoModeSoftPageFlip, ## !< software PageFlip for shutter glasses, should NOT be used!
    Graphic3dStereoModeOpenVR, ## !< OpenVR (HMD)
    Graphic3dStereoModeNB     ## !< the number of modes




























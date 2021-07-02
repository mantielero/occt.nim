##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Mouse gesture - only one can be active at one moment.

type
  AIS_MouseGesture* {.size: sizeof(cint), importcpp: "AIS_MouseGesture",
                     header: "AIS_MouseGesture.hxx".} = enum
    AIS_MouseGestureNONE,     ## !< no active gesture
                         ##
    AIS_MouseGestureSelectRectangle, ## !< rectangular selection;
                                    ## !  press button to start, move mouse to define rectangle, release to finish
    AIS_MouseGestureSelectLasso, ## !< polygonal selection;
                                ## !  press button to start, move mouse to define polygonal path, release to finish
                                ##
    AIS_MouseGestureZoom,     ## !< view zoom gesture;
                         ## !  move mouse left to zoom-out, and to the right to zoom-in
    AIS_MouseGestureZoomWindow, ## !< view zoom by window gesture;
                               ## !  press button to start, move mouse to define rectangle, release to finish
    AIS_MouseGesturePan,      ## !< view panning gesture
    AIS_MouseGestureRotateOrbit, ## !< orbit rotation gesture
    AIS_MouseGestureRotateView ## !< view  rotation gesture


## ! Map defining mouse gestures.

type
  AIS_MouseGestureMap* = NCollectionDataMap[cuint, AIS_MouseGesture]



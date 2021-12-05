##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Definition of the Trihedron position in the views.
## ! It is defined as a bitmask to simplify handling vertical and horizontal alignment independently.

type
  AspectTypeOfTriedronPosition* {.size: sizeof(cint),
                                 importcpp: "Aspect_TypeOfTriedronPosition",
                                 header: "Aspect_TypeOfTriedronPosition.hxx".} = enum
    aspectTOTP_CENTER = 0x0000, ## !< at the center of the view
    aspectTOTP_TOP = 0x0001,    ## !< at the middle of the top    side
    aspectTOTP_BOTTOM = 0x0002, ## !< at the middle of the bottom side
    aspectTOTP_LEFT = 0x0004,   ## !< at the middle of the left   side
    aspectTOTP_RIGHT = 0x0008  ## !< at the middle of the right  side

const
  aspectTOTP_LEFT_LOWER  = (aspectTOTP_BOTTOM.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition  ## at the left lower corner
  aspectTOTP_LEFT_UPPER  = (aspectTOTP_TOP.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition     ## at the left upper corner
  aspectTOTP_RIGHT_LOWER = (aspectTOTP_BOTTOM.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition ## at the right lower corner
  aspectTOTP_RIGHT_UPPER = (aspectTOTP_TOP.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition    ## at the right upper corner


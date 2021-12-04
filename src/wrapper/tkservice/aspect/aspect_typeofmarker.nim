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

## ! Definition of types of markers

type
  AspectTypeOfMarker* {.size: sizeof(cint), importcpp: "Aspect_TypeOfMarker",
                       header: "Aspect_TypeOfMarker.hxx".} = enum
    aspectTOM_EMPTY = -1,       ## !< hidden
    aspectTOM_POINT = 0,        ## !< point   .
    aspectTOM_PLUS,           ## !< plus    +
    aspectTOM_STAR,           ## !< star    *
    aspectTOM_X,              ## !< cross   x
    aspectTOM_O,              ## !< circle  O
    aspectTOM_O_POINT,        ## !< a point in a circle
    aspectTOM_O_PLUS,         ## !< a plus  in a circle
    aspectTOM_O_STAR,         ## !< a star  in a circle
    aspectTOM_O_X,            ## !< a cross in a circle
    aspectTOM_RING1,          ## !< a large  ring
    aspectTOM_RING2,          ## !< a medium ring
    aspectTOM_RING3,          ## !< a small  ring
    aspectTOM_BALL,           ## !< a ball with 1 color and different saturations
    aspectTOM_USERDEFINED     ## !< defined by Users (custom image)


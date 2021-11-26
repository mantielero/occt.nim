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
    AspectTOM_EMPTY = -1,       ## !< hidden
    AspectTOM_POINT = 0,        ## !< point   .
    AspectTOM_PLUS,           ## !< plus    +
    AspectTOM_STAR,           ## !< star    *
    AspectTOM_X,              ## !< cross   x
    AspectTOM_O,              ## !< circle  O
    AspectTOM_O_POINT,        ## !< a point in a circle
    AspectTOM_O_PLUS,         ## !< a plus  in a circle
    AspectTOM_O_STAR,         ## !< a star  in a circle
    AspectTOM_O_X,            ## !< a cross in a circle
    AspectTOM_RING1,          ## !< a large  ring
    AspectTOM_RING2,          ## !< a medium ring
    AspectTOM_RING3,          ## !< a small  ring
    AspectTOM_BALL,           ## !< a ball with 1 color and different saturations
    AspectTOM_USERDEFINED     ## !< defined by Users (custom image)




























##  Created on: 1991-10-10
##  Created by: Jean Claude VAUTHIER
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Convert_ElementarySurfaceToBSplineSurface,
  ../Standard/Standard_Real

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Cone"
type
  Convert_ConeToBSplineSurface* {.importcpp: "Convert_ConeToBSplineSurface",
                                 header: "Convert_ConeToBSplineSurface.hxx",
                                 bycopy.} = object of Convert_ElementarySurfaceToBSplineSurface ##
                                                                                           ## !
                                                                                           ## The
                                                                                           ## equivalent
                                                                                           ## B-spline
                                                                                           ## surface
                                                                                           ## as
                                                                                           ## the
                                                                                           ## same
                                                                                           ## orientation
                                                                                           ## as
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## Cone
                                                                                           ## in
                                                                                           ## the
                                                                                           ## U
                                                                                           ## and
                                                                                           ## V
                                                                                           ## parametric
                                                                                           ## directions.
                                                                                           ##
                                                                                           ## !
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2
                                                                                           ## or
                                                                                           ## U1
                                                                                           ## =
                                                                                           ## U2
                                                                                           ## +
                                                                                           ## 2.0
                                                                                           ## *
                                                                                           ## Pi
                                                                                           ##
                                                                                           ## !
                                                                                           ## Raised
                                                                                           ## if
                                                                                           ## V1
                                                                                           ## =
                                                                                           ## V2.


proc constructConvert_ConeToBSplineSurface*(C: gp_Cone; U1: Standard_Real;
    U2: Standard_Real; V1: Standard_Real; V2: Standard_Real): Convert_ConeToBSplineSurface {.
    constructor, importcpp: "Convert_ConeToBSplineSurface(@)",
    header: "Convert_ConeToBSplineSurface.hxx".}
proc constructConvert_ConeToBSplineSurface*(C: gp_Cone; V1: Standard_Real;
    V2: Standard_Real): Convert_ConeToBSplineSurface {.constructor,
    importcpp: "Convert_ConeToBSplineSurface(@)",
    header: "Convert_ConeToBSplineSurface.hxx".}
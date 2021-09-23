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
  ../Standard/Standard_Handle, Convert_ConicToBSplineCurve,
  ../Standard/Standard_Real

discard "forward decl of gp_Hypr2d"
type
  Convert_HyperbolaToBSplineCurve* {.importcpp: "Convert_HyperbolaToBSplineCurve", header: "Convert_HyperbolaToBSplineCurve.hxx",
                                    bycopy.} = object of Convert_ConicToBSplineCurve ##
                                                                                ## !
                                                                                ## The
                                                                                ## hyperbola
                                                                                ## H
                                                                                ## is
                                                                                ## limited
                                                                                ## between
                                                                                ## the
                                                                                ## parametric
                                                                                ## values
                                                                                ## U1,
                                                                                ## U2
                                                                                ##
                                                                                ## !
                                                                                ## and
                                                                                ## the
                                                                                ## equivalent
                                                                                ## B-spline
                                                                                ## curve
                                                                                ## has
                                                                                ## the
                                                                                ## same
                                                                                ## orientation
                                                                                ## as
                                                                                ## the
                                                                                ##
                                                                                ## !
                                                                                ## hyperbola.


proc constructConvert_HyperbolaToBSplineCurve*(H: gp_Hypr2d; U1: Standard_Real;
    U2: Standard_Real): Convert_HyperbolaToBSplineCurve {.constructor,
    importcpp: "Convert_HyperbolaToBSplineCurve(@)",
    header: "Convert_HyperbolaToBSplineCurve.hxx".}
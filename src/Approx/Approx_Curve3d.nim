##  Created on: 1998-08-20
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HCurve"
type
  ApproxCurve3d* {.importcpp: "Approx_Curve3d", header: "Approx_Curve3d.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Approximation
                                                                                        ## of
                                                                                        ## a
                                                                                        ## curve
                                                                                        ## with
                                                                                        ## respect
                                                                                        ## of
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## requiered
                                                                                        ## tolerance
                                                                                        ## Tol3D.


proc constructApproxCurve3d*(curve: Handle[Adaptor3dHCurve]; tol3d: cfloat;
                            order: GeomAbsShape; maxSegments: cint; maxDegree: cint): ApproxCurve3d {.
    constructor, importcpp: "Approx_Curve3d(@)", header: "Approx_Curve3d.hxx".}
proc curve*(this: ApproxCurve3d): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "Approx_Curve3d.hxx".}
proc isDone*(this: ApproxCurve3d): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "Approx_Curve3d.hxx".}
proc hasResult*(this: ApproxCurve3d): bool {.noSideEffect, importcpp: "HasResult",
    header: "Approx_Curve3d.hxx".}
proc maxError*(this: ApproxCurve3d): cfloat {.noSideEffect, importcpp: "MaxError",
    header: "Approx_Curve3d.hxx".}
proc dump*(this: ApproxCurve3d; o: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Approx_Curve3d.hxx".}


























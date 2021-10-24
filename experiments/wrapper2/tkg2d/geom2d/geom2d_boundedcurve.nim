##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_BoundedCurve"
type
  HandleGeom2dBoundedCurve* = Handle[Geom2dBoundedCurve]

## ! The abstract class BoundedCurve describes the
## ! common behavior of bounded curves in 2D space. A
## ! bounded curve is limited by two finite values of the
## ! parameter, termed respectively "first parameter" and
## ! "last parameter". The "first parameter" gives the "start
## ! point" of the bounded curve, and the "last parameter"
## ! gives the "end point" of the bounded curve.
## ! The length of a bounded curve is finite.
## ! The Geom2d package provides three concrete
## ! classes of bounded curves:
## ! - two frequently used mathematical formulations of complex curves:
## ! - Geom2d_BezierCurve,
## ! - Geom2d_BSplineCurve, and
## ! - Geom2d_TrimmedCurve to trim a curve, i.e. to
## ! only take part of the curve limited by two values of
## ! the parameter of the basis curve.

type
  Geom2dBoundedCurve* {.importcpp: "Geom2d_BoundedCurve",
                       header: "Geom2d_BoundedCurve.hxx", bycopy.} = object of Geom2dCurve ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## the
                                                                                    ## end
                                                                                    ## point
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## end
                                                                                    ## point
                                                                                    ## is
                                                                                    ## the
                                                                                    ## value
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve
                                                                                    ## for
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## "LastParameter"
                                                                                    ## of
                                                                                    ## the
                                                                                    ## curve.


proc endPoint*(this: Geom2dBoundedCurve): Pnt2d {.noSideEffect, cdecl,
    importcpp: "EndPoint", dynlib: tkg2d.}
proc startPoint*(this: Geom2dBoundedCurve): Pnt2d {.noSideEffect, cdecl,
    importcpp: "StartPoint", dynlib: tkg2d.}
proc dumpJson*(this: Geom2dBoundedCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg2d.}
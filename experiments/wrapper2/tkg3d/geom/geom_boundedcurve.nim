##  Created on: 1993-03-10
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

discard "forward decl of gp_Pnt"
discard "forward decl of Geom_BoundedCurve"
type
  HandleGeomBoundedCurve* = Handle[GeomBoundedCurve]

## ! The abstract class BoundedCurve describes the
## ! common behavior of bounded curves in 3D space. A
## ! bounded curve is limited by two finite values of the
## ! parameter, termed respectively "first parameter" and
## ! "last parameter". The "first parameter" gives the "start
## ! point" of the bounded curve, and the "last parameter"
## ! gives the "end point" of the bounded curve.
## ! The length of a bounded curve is finite.
## ! The Geom package provides three concrete classes of bounded curves:
## ! - two frequently used mathematical formulations of complex curves:
## ! - Geom_BezierCurve,
## ! - Geom_BSplineCurve, and
## ! - Geom_TrimmedCurve to trim a curve, i.e. to only
## ! take part of the curve limited by two values of the
## ! parameter of the basis curve.

type
  GeomBoundedCurve* {.importcpp: "Geom_BoundedCurve",
                     header: "Geom_BoundedCurve.hxx", bycopy.} = object of GeomCurve ## !
                                                                              ## Returns
                                                                              ## the
                                                                              ## end
                                                                              ## point of
                                                                              ## the
                                                                              ## curve.


proc endPoint*(this: GeomBoundedCurve): Pnt {.noSideEffect, cdecl,
    importcpp: "EndPoint", dynlib: tkg3d.}
proc startPoint*(this: GeomBoundedCurve): Pnt {.noSideEffect, cdecl,
    importcpp: "StartPoint", dynlib: tkg3d.}
proc dumpJson*(this: GeomBoundedCurve; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkg3d.}
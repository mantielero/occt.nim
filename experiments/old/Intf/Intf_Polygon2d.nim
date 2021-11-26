##  Created on: 2012-02-10
##  Created by: Serey ZERCHANINOV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  IntfPolygon2d* {.importcpp: "Intf_Polygon2d", header: "Intf_Polygon2d.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## bounding
                                                                                        ## box
                                                                                        ## of
                                                                                        ## the
                                                                                        ## polygon.


proc bounding*(this: IntfPolygon2d): BndBox2d {.noSideEffect, importcpp: "Bounding",
    header: "Intf_Polygon2d.hxx".}
proc closed*(this: IntfPolygon2d): bool {.noSideEffect, importcpp: "Closed",
                                      header: "Intf_Polygon2d.hxx".}
proc destroyIntfPolygon2d*(this: var IntfPolygon2d) {.
    importcpp: "#.~Intf_Polygon2d()", header: "Intf_Polygon2d.hxx".}
proc deflectionOverEstimation*(this: IntfPolygon2d): cfloat {.noSideEffect,
    importcpp: "DeflectionOverEstimation", header: "Intf_Polygon2d.hxx".}
proc nbSegments*(this: IntfPolygon2d): cint {.noSideEffect, importcpp: "NbSegments",
    header: "Intf_Polygon2d.hxx".}
proc segment*(this: IntfPolygon2d; theIndex: cint; theBegin: var Pnt2d;
             theEnd: var Pnt2d) {.noSideEffect, importcpp: "Segment",
                               header: "Intf_Polygon2d.hxx".}


























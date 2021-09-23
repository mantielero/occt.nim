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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box2d, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Bnd_Box2d"
discard "forward decl of gp_Pnt2d"
type
  Intf_Polygon2d* {.importcpp: "Intf_Polygon2d", header: "Intf_Polygon2d.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## bounding
                                                                                         ## box
                                                                                         ## of
                                                                                         ## the
                                                                                         ## polygon.


proc Bounding*(this: Intf_Polygon2d): Bnd_Box2d {.noSideEffect,
    importcpp: "Bounding", header: "Intf_Polygon2d.hxx".}
proc Closed*(this: Intf_Polygon2d): Standard_Boolean {.noSideEffect,
    importcpp: "Closed", header: "Intf_Polygon2d.hxx".}
proc destroyIntf_Polygon2d*(this: var Intf_Polygon2d) {.
    importcpp: "#.~Intf_Polygon2d()", header: "Intf_Polygon2d.hxx".}
proc DeflectionOverEstimation*(this: Intf_Polygon2d): Standard_Real {.noSideEffect,
    importcpp: "DeflectionOverEstimation", header: "Intf_Polygon2d.hxx".}
proc NbSegments*(this: Intf_Polygon2d): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "Intf_Polygon2d.hxx".}
proc Segment*(this: Intf_Polygon2d; theIndex: Standard_Integer;
             theBegin: var gp_Pnt2d; theEnd: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Segment", header: "Intf_Polygon2d.hxx".}
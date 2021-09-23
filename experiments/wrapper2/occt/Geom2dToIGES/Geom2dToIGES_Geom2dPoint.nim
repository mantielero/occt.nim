##  Created on: 1995-02-01
##  Created by: Marie Jose MARTZ
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Geom2dToIGES_Geom2dEntity

discard "forward decl of Geom2dToIGES_Geom2dEntity"
discard "forward decl of IGESGeom_Point"
discard "forward decl of Geom2d_Point"
discard "forward decl of Geom2d_CartesianPoint"
type
  Geom2dToIGES_Geom2dPoint* {.importcpp: "Geom2dToIGES_Geom2dPoint",
                             header: "Geom2dToIGES_Geom2dPoint.hxx", bycopy.} = object of Geom2dToIGES_Geom2dEntity


proc constructGeom2dToIGES_Geom2dPoint*(): Geom2dToIGES_Geom2dPoint {.constructor,
    importcpp: "Geom2dToIGES_Geom2dPoint(@)",
    header: "Geom2dToIGES_Geom2dPoint.hxx".}
proc constructGeom2dToIGES_Geom2dPoint*(G2dE: Geom2dToIGES_Geom2dEntity): Geom2dToIGES_Geom2dPoint {.
    constructor, importcpp: "Geom2dToIGES_Geom2dPoint(@)",
    header: "Geom2dToIGES_Geom2dPoint.hxx".}
proc Transfer2dPoint*(this: var Geom2dToIGES_Geom2dPoint;
                     start: handle[Geom2d_Point]): handle[IGESGeom_Point] {.
    importcpp: "Transfer2dPoint", header: "Geom2dToIGES_Geom2dPoint.hxx".}
proc Transfer2dPoint*(this: var Geom2dToIGES_Geom2dPoint;
                     start: handle[Geom2d_CartesianPoint]): handle[IGESGeom_Point] {.
    importcpp: "Transfer2dPoint", header: "Geom2dToIGES_Geom2dPoint.hxx".}
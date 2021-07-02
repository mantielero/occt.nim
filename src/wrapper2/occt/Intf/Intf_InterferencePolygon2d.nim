##  Created on: 1992-09-28
##  Created by: Didier PIFFAULT
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Intf_Polygon2d"
discard "forward decl of gp_Pnt2d"
type
  IntfInterferencePolygon2d* {.importcpp: "Intf_InterferencePolygon2d",
                              header: "Intf_InterferencePolygon2d.hxx", bycopy.} = object of IntfInterference ##
                                                                                                       ## !
                                                                                                       ## Constructs
                                                                                                       ## an
                                                                                                       ## empty
                                                                                                       ## interference
                                                                                                       ## of
                                                                                                       ## Polygon.


proc constructIntfInterferencePolygon2d*(): IntfInterferencePolygon2d {.
    constructor, importcpp: "Intf_InterferencePolygon2d(@)",
    header: "Intf_InterferencePolygon2d.hxx".}
proc constructIntfInterferencePolygon2d*(obje1: IntfPolygon2d; obje2: IntfPolygon2d): IntfInterferencePolygon2d {.
    constructor, importcpp: "Intf_InterferencePolygon2d(@)",
    header: "Intf_InterferencePolygon2d.hxx".}
proc constructIntfInterferencePolygon2d*(obje: IntfPolygon2d): IntfInterferencePolygon2d {.
    constructor, importcpp: "Intf_InterferencePolygon2d(@)",
    header: "Intf_InterferencePolygon2d.hxx".}
proc perform*(this: var IntfInterferencePolygon2d; obje1: IntfPolygon2d;
             obje2: IntfPolygon2d) {.importcpp: "Perform",
                                   header: "Intf_InterferencePolygon2d.hxx".}
proc perform*(this: var IntfInterferencePolygon2d; obje: IntfPolygon2d) {.
    importcpp: "Perform", header: "Intf_InterferencePolygon2d.hxx".}
proc pnt2dValue*(this: IntfInterferencePolygon2d; index: StandardInteger): GpPnt2d {.
    noSideEffect, importcpp: "Pnt2dValue", header: "Intf_InterferencePolygon2d.hxx".}


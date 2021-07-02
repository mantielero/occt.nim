##  Created by: Peter KURNEV
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
discard "forward decl of gp_Pnt2d"
type
  BOPDS_Point* {.importcpp: "BOPDS_Point", header: "BOPDS_Point.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## contructor


proc constructBOPDS_Point*(): BOPDS_Point {.constructor,
    importcpp: "BOPDS_Point(@)", header: "BOPDS_Point.hxx".}
proc destroyBOPDS_Point*(this: var BOPDS_Point) {.importcpp: "#.~BOPDS_Point()",
    header: "BOPDS_Point.hxx".}
proc setPnt*(this: var BOPDS_Point; thePnt: GpPnt) {.importcpp: "SetPnt",
    header: "BOPDS_Point.hxx".}
proc pnt*(this: BOPDS_Point): GpPnt {.noSideEffect, importcpp: "Pnt",
                                  header: "BOPDS_Point.hxx".}
proc setPnt2D1*(this: var BOPDS_Point; thePnt: GpPnt2d) {.importcpp: "SetPnt2D1",
    header: "BOPDS_Point.hxx".}
proc pnt2D1*(this: BOPDS_Point): GpPnt2d {.noSideEffect, importcpp: "Pnt2D1",
                                       header: "BOPDS_Point.hxx".}
proc setPnt2D2*(this: var BOPDS_Point; thePnt: GpPnt2d) {.importcpp: "SetPnt2D2",
    header: "BOPDS_Point.hxx".}
proc pnt2D2*(this: BOPDS_Point): GpPnt2d {.noSideEffect, importcpp: "Pnt2D2",
                                       header: "BOPDS_Point.hxx".}
proc setIndex*(this: var BOPDS_Point; theIndex: StandardInteger) {.
    importcpp: "SetIndex", header: "BOPDS_Point.hxx".}
proc index*(this: BOPDS_Point): StandardInteger {.noSideEffect, importcpp: "Index",
    header: "BOPDS_Point.hxx".}


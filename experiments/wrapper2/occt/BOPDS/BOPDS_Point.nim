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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../gp/gp_Pnt2d,
  ../Standard/Standard_Integer

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
proc SetPnt*(this: var BOPDS_Point; thePnt: gp_Pnt) {.importcpp: "SetPnt",
    header: "BOPDS_Point.hxx".}
proc Pnt*(this: BOPDS_Point): gp_Pnt {.noSideEffect, importcpp: "Pnt",
                                   header: "BOPDS_Point.hxx".}
proc SetPnt2D1*(this: var BOPDS_Point; thePnt: gp_Pnt2d) {.importcpp: "SetPnt2D1",
    header: "BOPDS_Point.hxx".}
proc Pnt2D1*(this: BOPDS_Point): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2D1",
                                        header: "BOPDS_Point.hxx".}
proc SetPnt2D2*(this: var BOPDS_Point; thePnt: gp_Pnt2d) {.importcpp: "SetPnt2D2",
    header: "BOPDS_Point.hxx".}
proc Pnt2D2*(this: BOPDS_Point): gp_Pnt2d {.noSideEffect, importcpp: "Pnt2D2",
                                        header: "BOPDS_Point.hxx".}
proc SetIndex*(this: var BOPDS_Point; theIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "BOPDS_Point.hxx".}
proc Index*(this: BOPDS_Point): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "BOPDS_Point.hxx".}
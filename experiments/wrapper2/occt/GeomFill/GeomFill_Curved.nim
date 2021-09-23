##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GeomFill_Filling, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal

type
  GeomFill_Curved* {.importcpp: "GeomFill_Curved", header: "GeomFill_Curved.hxx",
                    bycopy.} = object of GeomFill_Filling


proc constructGeomFill_Curved*(): GeomFill_Curved {.constructor,
    importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFill_Curved*(P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
                              P3: TColgp_Array1OfPnt; P4: TColgp_Array1OfPnt): GeomFill_Curved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFill_Curved*(P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
                              P3: TColgp_Array1OfPnt; P4: TColgp_Array1OfPnt;
                              W1: TColStd_Array1OfReal; W2: TColStd_Array1OfReal;
                              W3: TColStd_Array1OfReal; W4: TColStd_Array1OfReal): GeomFill_Curved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFill_Curved*(P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt): GeomFill_Curved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc constructGeomFill_Curved*(P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
                              W1: TColStd_Array1OfReal; W2: TColStd_Array1OfReal): GeomFill_Curved {.
    constructor, importcpp: "GeomFill_Curved(@)", header: "GeomFill_Curved.hxx".}
proc Init*(this: var GeomFill_Curved; P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
          P3: TColgp_Array1OfPnt; P4: TColgp_Array1OfPnt) {.importcpp: "Init",
    header: "GeomFill_Curved.hxx".}
proc Init*(this: var GeomFill_Curved; P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
          P3: TColgp_Array1OfPnt; P4: TColgp_Array1OfPnt; W1: TColStd_Array1OfReal;
          W2: TColStd_Array1OfReal; W3: TColStd_Array1OfReal;
          W4: TColStd_Array1OfReal) {.importcpp: "Init",
                                    header: "GeomFill_Curved.hxx".}
proc Init*(this: var GeomFill_Curved; P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt) {.
    importcpp: "Init", header: "GeomFill_Curved.hxx".}
proc Init*(this: var GeomFill_Curved; P1: TColgp_Array1OfPnt; P2: TColgp_Array1OfPnt;
          W1: TColStd_Array1OfReal; W2: TColStd_Array1OfReal) {.importcpp: "Init",
    header: "GeomFill_Curved.hxx".}
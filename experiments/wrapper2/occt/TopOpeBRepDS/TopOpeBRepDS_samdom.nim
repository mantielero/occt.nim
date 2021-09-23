##  Created on: 1998-06-15
##  Created by: Jean Yves LEBEY
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

import
  TopOpeBRepDS_define

proc FDSSDM_prepare*(a1: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSSDM_prepare(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_makes1s2*(S: TopoDS_Shape; L1: var TopTools_ListOfShape;
                     L2: var TopTools_ListOfShape) {.
    importcpp: "FDSSDM_makes1s2(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_s1s2makesordor*(L1: TopTools_ListOfShape; L2: TopTools_ListOfShape;
                           S: TopoDS_Shape; LSO: var TopTools_ListOfShape;
                           LDO: var TopTools_ListOfShape) {.
    importcpp: "FDSSDM_s1s2makesordor(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_s1s2*(S: TopoDS_Shape; LS1: var TopTools_ListOfShape;
                 LS2: var TopTools_ListOfShape) {.importcpp: "FDSSDM_s1s2(@)",
    header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_sordor*(S: TopoDS_Shape; LSO: var TopTools_ListOfShape;
                   LDO: var TopTools_ListOfShape) {.importcpp: "FDSSDM_sordor(@)",
    header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_contains*(S: TopoDS_Shape; L: TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "FDSSDM_contains(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_copylist*(Lin: TopTools_ListOfShape; I1: Standard_Integer;
                     I2: Standard_Integer; Lou: var TopTools_ListOfShape) {.
    importcpp: "FDSSDM_copylist(@)", header: "TopOpeBRepDS_samdom.hxx".}
proc FDSSDM_copylist*(Lin: TopTools_ListOfShape; Lou: var TopTools_ListOfShape) {.
    importcpp: "FDSSDM_copylist(@)", header: "TopOpeBRepDS_samdom.hxx".}
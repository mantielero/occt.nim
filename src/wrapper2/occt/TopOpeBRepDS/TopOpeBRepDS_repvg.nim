##  Created on: 1998-02-14
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

proc FDS_repvg*(BDS: TopOpeBRepDS_DataStructure; EIX: Standard_Integer;
               GT: TopOpeBRepDS_Kind; LI: var TopOpeBRepDS_ListOfInterference;
               reducedLI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FDS_repvg(@)", header: "TopOpeBRepDS_repvg.hxx".}
proc FDS_repvg2*(BDS: TopOpeBRepDS_DataStructure; EIX: Standard_Integer;
                GT: TopOpeBRepDS_Kind; LI: var TopOpeBRepDS_ListOfInterference;
                reducedLI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FDS_repvg2(@)", header: "TopOpeBRepDS_repvg.hxx".}
import brepalgoapi_types

##  Created on: 1993-10-14
##  Created by: Remi LEQUETTE
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

discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Shape"


proc cut*(): BRepAlgoAPI_Cut {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc destroyBRepAlgoAPI_Cut*(this: var BRepAlgoAPI_Cut) {.cdecl,
    importcpp: "#.~BRepAlgoAPI_Cut()", header: "BRepAlgoAPI_Cut.hxx".}
proc cut*(pf: BOPAlgoPaveFiller): BRepAlgoAPI_Cut {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc cut*(s1: TopoDS_Shape; s2: TopoDS_Shape): BRepAlgoAPI_Cut {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}
proc cut*(s1: TopoDS_Shape; s2: TopoDS_Shape; aDSF: BOPAlgoPaveFiller;
                        bFWD: bool = true): BRepAlgoAPI_Cut {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Cut(@)", header: "BRepAlgoAPI_Cut.hxx".}

import ../bopalgo/bopalgo_types
import ../topods/topods_types
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



proc newBRepAlgoAPI_Common*(): BRepAlgoAPI_Common {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Common(@)", header: "BRepAlgoAPI_Common.hxx".}
proc destroyBRepAlgoAPI_Common*(this: var BRepAlgoAPI_Common) {.cdecl,
    importcpp: "#.~BRepAlgoAPI_Common()", header: "BRepAlgoAPI_Common.hxx".}
proc newBRepAlgoAPI_Common*(pf: BOPAlgoPaveFiller): BRepAlgoAPI_Common {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Common(@)", header: "BRepAlgoAPI_Common.hxx".}

proc common*(s1: TopoDS_Shape; s2: TopoDS_Shape): BRepAlgoAPI_Common {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_Common(@)", header: "BRepAlgoAPI_Common.hxx".}

proc common*(s1: TopoDS_Shape; s2: TopoDS_Shape; pf: BOPAlgoPaveFiller): BRepAlgoAPI_Common {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_Common(@)", header: "BRepAlgoAPI_Common.hxx".}



import topods_types



##  Created on: 1990-12-11
##  Created by: Remi Lequette
##  Copyright (c) 1990-1999 Matra Datavision
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



proc vertex*(s: TopoDS_Shape): TopoDS_Vertex {.cdecl, importcpp: "TopoDS::Vertex(@)",
    header: "TopoDS.hxx".}
proc vertex*(a1: var TopoDS_Shape): var TopoDS_Vertex {.cdecl,
    importcpp: "TopoDS::Vertex(@)", header: "TopoDS.hxx".}
proc edge*(s: TopoDS_Shape): TopoDS_Edge {.cdecl, importcpp: "TopoDS::Edge(@)",
                                       header: "TopoDS.hxx".}
proc edge*(a1: var TopoDS_Shape): var TopoDS_Edge {.cdecl,
    importcpp: "TopoDS::Edge(@)", header: "TopoDS.hxx".}
proc wire*(s: TopoDS_Shape): TopoDS_Wire {.cdecl, importcpp: "TopoDS::Wire(@)",
                                       header: "TopoDS.hxx".}
proc wire*(a1: var TopoDS_Shape): var TopoDS_Wire {.cdecl,
    importcpp: "TopoDS::Wire(@)", header: "TopoDS.hxx".}
proc face*(s: TopoDS_Shape): TopoDS_Face {.cdecl, importcpp: "TopoDS::Face(@)",
                                       header: "TopoDS.hxx".}
proc face*(a1: var TopoDS_Shape): var TopoDS_Face {.cdecl,
    importcpp: "TopoDS::Face(@)", header: "TopoDS.hxx".}
proc shell*(s: TopoDS_Shape): TopoDS_Shell {.cdecl, importcpp: "TopoDS::Shell(@)",
    header: "TopoDS.hxx".}
proc shell*(a1: var TopoDS_Shape): var TopoDS_Shell {.cdecl,
    importcpp: "TopoDS::Shell(@)", header: "TopoDS.hxx".}
proc solid*(s: TopoDS_Shape): TopoDS_Solid {.cdecl, importcpp: "TopoDS::Solid(@)",
    header: "TopoDS.hxx".}
proc solid*(a1: var TopoDS_Shape): var TopoDS_Solid {.cdecl,
    importcpp: "TopoDS::Solid(@)", header: "TopoDS.hxx".}
proc compSolid*(s: TopoDS_Shape): TopoDS_CompSolid {.cdecl,
    importcpp: "TopoDS::CompSolid(@)", header: "TopoDS.hxx".}
proc compSolid*(a1: var TopoDS_Shape): var TopoDS_CompSolid {.cdecl,
    importcpp: "TopoDS::CompSolid(@)", header: "TopoDS.hxx".}
proc compound*(s: TopoDS_Shape): TopoDS_Compound {.cdecl,
    importcpp: "TopoDS::Compound(@)", header: "TopoDS.hxx".}
proc compound*(a1: var TopoDS_Shape): var TopoDS_Compound {.cdecl,
    importcpp: "TopoDS::Compound(@)", header: "TopoDS.hxx".}


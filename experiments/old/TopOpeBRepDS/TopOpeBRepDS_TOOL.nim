##  Created on: 1999-01-25
##  Created by: Xuan PHAM PHU
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_TOOL* {.importcpp: "TopOpeBRepDS_TOOL",
                      header: "TopOpeBRepDS_TOOL.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_TOOL; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_TOOL::operator new", header: "TopOpeBRepDS_TOOL.hxx".}
proc `delete`*(this: var TopOpeBRepDS_TOOL; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_TOOL::operator delete",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_TOOL; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_TOOL::operator new[]",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_TOOL; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_TOOL::operator delete[]",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc `new`*(this: var TopOpeBRepDS_TOOL; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_TOOL::operator new", header: "TopOpeBRepDS_TOOL.hxx".}
proc `delete`*(this: var TopOpeBRepDS_TOOL; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_TOOL::operator delete",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc eShareG*(hds: Handle[TopOpeBRepDS_HDataStructure]; e: TopoDS_Edge;
             lEsd: var TopToolsListOfShape): int {.
    importcpp: "TopOpeBRepDS_TOOL::EShareG(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc shareG*(hds: Handle[TopOpeBRepDS_HDataStructure]; is1: int; is2: int): StandardBoolean {.
    importcpp: "TopOpeBRepDS_TOOL::ShareG(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc getEsd*(hds: Handle[TopOpeBRepDS_HDataStructure]; s: TopoDS_Shape; ie: int;
            iesd: var int): StandardBoolean {.
    importcpp: "TopOpeBRepDS_TOOL::GetEsd(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc shareSplitON*(hds: Handle[TopOpeBRepDS_HDataStructure];
                  mspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State; i1: int;
                  i2: int; spON: var TopoDS_Shape): StandardBoolean {.
    importcpp: "TopOpeBRepDS_TOOL::ShareSplitON(@)",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc getConfig*(hds: Handle[TopOpeBRepDS_HDataStructure];
               mEspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State; ie: int;
               iesd: int; conf: var int): StandardBoolean {.
    importcpp: "TopOpeBRepDS_TOOL::GetConfig(@)", header: "TopOpeBRepDS_TOOL.hxx".}
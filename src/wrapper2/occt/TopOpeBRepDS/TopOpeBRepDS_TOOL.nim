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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopTools/TopTools_ListOfShape, ../Standard/Standard_Boolean,
  TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Shape"
type
  TopOpeBRepDS_TOOL* {.importcpp: "TopOpeBRepDS_TOOL",
                      header: "TopOpeBRepDS_TOOL.hxx", bycopy.} = object


proc EShareG*(HDS: handle[TopOpeBRepDS_HDataStructure]; E: TopoDS_Edge;
             lEsd: var TopTools_ListOfShape): Standard_Integer {.
    importcpp: "TopOpeBRepDS_TOOL::EShareG(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc ShareG*(HDS: handle[TopOpeBRepDS_HDataStructure]; is1: Standard_Integer;
            is2: Standard_Integer): Standard_Boolean {.
    importcpp: "TopOpeBRepDS_TOOL::ShareG(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc GetEsd*(HDS: handle[TopOpeBRepDS_HDataStructure]; S: TopoDS_Shape;
            ie: Standard_Integer; iesd: var Standard_Integer): Standard_Boolean {.
    importcpp: "TopOpeBRepDS_TOOL::GetEsd(@)", header: "TopOpeBRepDS_TOOL.hxx".}
proc ShareSplitON*(HDS: handle[TopOpeBRepDS_HDataStructure];
                  MspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State;
                  i1: Standard_Integer; i2: Standard_Integer; spON: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "TopOpeBRepDS_TOOL::ShareSplitON(@)",
    header: "TopOpeBRepDS_TOOL.hxx".}
proc GetConfig*(HDS: handle[TopOpeBRepDS_HDataStructure];
               MEspON: TopOpeBRepDS_DataMapOfShapeListOfShapeOn1State;
               ie: Standard_Integer; iesd: Standard_Integer;
               conf: var Standard_Integer): Standard_Boolean {.
    importcpp: "TopOpeBRepDS_TOOL::GetConfig(@)", header: "TopOpeBRepDS_TOOL.hxx".}
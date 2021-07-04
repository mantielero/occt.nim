##  Created on: 2000-02-14
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TDF/TDF_LabelMap,
  ../TopTools/TopTools_IndexedMapOfShape

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
type
  TNaming_NamingTool* {.importcpp: "TNaming_NamingTool",
                       header: "TNaming_NamingTool.hxx", bycopy.} = object


proc CurrentShape*(Valid: TDF_LabelMap; Forbiden: TDF_LabelMap;
                  NS: handle[TNaming_NamedShape];
                  MS: var TopTools_IndexedMapOfShape) {.
    importcpp: "TNaming_NamingTool::CurrentShape(@)",
    header: "TNaming_NamingTool.hxx".}
proc CurrentShapeFromShape*(Valid: TDF_LabelMap; Forbiden: TDF_LabelMap;
                           Acces: TDF_Label; S: TopoDS_Shape;
                           MS: var TopTools_IndexedMapOfShape) {.
    importcpp: "TNaming_NamingTool::CurrentShapeFromShape(@)",
    header: "TNaming_NamingTool.hxx".}
proc BuildDescendants*(NS: handle[TNaming_NamedShape]; Labels: var TDF_LabelMap) {.
    importcpp: "TNaming_NamingTool::BuildDescendants(@)",
    header: "TNaming_NamingTool.hxx".}
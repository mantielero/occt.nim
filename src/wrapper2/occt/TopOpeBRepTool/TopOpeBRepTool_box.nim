##  Created on: 1997-04-01
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, TopOpeBRepTool_HBoxTool

when defined(OCCT_DEBUG):
  proc TopOpeBRepTool_GettraceBOX*(): Standard_Boolean {.
      importcpp: "TopOpeBRepTool_GettraceBOX(@)", header: "TopOpeBRepTool_box.hxx".}
proc FBOX_Prepare*() {.importcpp: "FBOX_Prepare(@)",
                     header: "TopOpeBRepTool_box.hxx".}
proc FBOX_GetHBoxTool*(): handle[TopOpeBRepTool_HBoxTool] {.
    importcpp: "FBOX_GetHBoxTool(@)", header: "TopOpeBRepTool_box.hxx".}
proc FBOX_Box*(S: TopoDS_Shape): var Bnd_Box {.importcpp: "FBOX_Box(@)",
    header: "TopOpeBRepTool_box.hxx".}
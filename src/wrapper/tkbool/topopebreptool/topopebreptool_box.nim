import topopebreptool_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topods/topods_types
import ../../tkmath/bnd/bnd_types


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

when defined(OCCT_DEBUG):
  proc topOpeBRepToolGettraceBOX*(): bool {.cdecl,
      importcpp: "TopOpeBRepTool_GettraceBOX(@)", header: "TopOpeBRepTool_box.hxx".}
proc fBOX_Prepare*() {.cdecl, importcpp: "FBOX_Prepare(@)", header: "TopOpeBRepTool_box.hxx".}
proc fBOX_GetHBoxTool*(): Handle[TopOpeBRepToolHBoxTool] {.cdecl,
    importcpp: "FBOX_GetHBoxTool(@)", header: "TopOpeBRepTool_box.hxx".}
proc fBOX_Box*(s: TopoDS_Shape): var BndBox {.cdecl, importcpp: "FBOX_Box(@)",
    header: "TopOpeBRepTool_box.hxx".}


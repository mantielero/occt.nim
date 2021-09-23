##  Created on: 1995-03-22
##  Created by: Christophe MARION
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../TopoDS/TopoDS_Shape

discard "forward decl of TopoDS_Shape"
type
  HLRTopoBRep_VData* {.importcpp: "HLRTopoBRep_VData",
                      header: "HLRTopoBRep_VData.hxx", bycopy.} = object


proc constructHLRTopoBRep_VData*(): HLRTopoBRep_VData {.constructor,
    importcpp: "HLRTopoBRep_VData(@)", header: "HLRTopoBRep_VData.hxx".}
proc constructHLRTopoBRep_VData*(P: Standard_Real; V: TopoDS_Shape): HLRTopoBRep_VData {.
    constructor, importcpp: "HLRTopoBRep_VData(@)", header: "HLRTopoBRep_VData.hxx".}
proc Parameter*(this: HLRTopoBRep_VData): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "HLRTopoBRep_VData.hxx".}
proc Vertex*(this: HLRTopoBRep_VData): TopoDS_Shape {.noSideEffect,
    importcpp: "Vertex", header: "HLRTopoBRep_VData.hxx".}
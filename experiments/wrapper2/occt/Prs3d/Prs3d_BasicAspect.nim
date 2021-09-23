##  Created on: 2000-02-15
##  Created by: Gerard GRAS
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
  ../Standard/Standard, ../Standard/Standard_OStream, ../Standard/Standard_Type,
  ../Standard/Standard_Transient

## ! All basic Prs3d_xxxAspect must inherits from this class
## ! The aspect classes qualifies how to represent a given kind of object.

type
  Prs3d_BasicAspect* {.importcpp: "Prs3d_BasicAspect",
                      header: "Prs3d_BasicAspect.hxx", bycopy.} = object of Standard_Transient

  Prs3d_BasicAspectbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Prs3d_BasicAspect::get_type_name(@)",
                              header: "Prs3d_BasicAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_BasicAspect::get_type_descriptor(@)",
    header: "Prs3d_BasicAspect.hxx".}
proc DynamicType*(this: Prs3d_BasicAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_BasicAspect.hxx".}
proc DumpJson*(this: Prs3d_BasicAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_BasicAspect.hxx".}
discard "forward decl of Prs3d_BasicAspect"
type
  Handle_Prs3d_BasicAspect* = handle[Prs3d_BasicAspect]

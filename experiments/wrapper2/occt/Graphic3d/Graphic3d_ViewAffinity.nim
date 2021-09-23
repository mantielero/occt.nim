##  Created on: 2014-12-18
##  Created by: Kirill Gavrilov
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Transient, ../Standard/Standard_Type

## ! Structure display state.

type
  Graphic3d_ViewAffinity* {.importcpp: "Graphic3d_ViewAffinity",
                           header: "Graphic3d_ViewAffinity.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor.
    ## !< affinity mask


proc constructGraphic3d_ViewAffinity*(): Graphic3d_ViewAffinity {.constructor,
    importcpp: "Graphic3d_ViewAffinity(@)", header: "Graphic3d_ViewAffinity.hxx".}
proc IsVisible*(this: Graphic3d_ViewAffinity; theViewId: Standard_Integer): bool {.
    noSideEffect, importcpp: "IsVisible", header: "Graphic3d_ViewAffinity.hxx".}
proc SetVisible*(this: var Graphic3d_ViewAffinity; theIsVisible: Standard_Boolean) {.
    importcpp: "SetVisible", header: "Graphic3d_ViewAffinity.hxx".}
proc SetVisible*(this: var Graphic3d_ViewAffinity; theViewId: Standard_Integer;
                theIsVisible: bool) {.importcpp: "SetVisible",
                                    header: "Graphic3d_ViewAffinity.hxx".}
proc DumpJson*(this: Graphic3d_ViewAffinity; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_ViewAffinity.hxx".}
type
  Graphic3d_ViewAffinitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_ViewAffinity::get_type_name(@)",
                              header: "Graphic3d_ViewAffinity.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_ViewAffinity::get_type_descriptor(@)",
    header: "Graphic3d_ViewAffinity.hxx".}
proc DynamicType*(this: Graphic3d_ViewAffinity): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_ViewAffinity.hxx".}
discard "forward decl of Graphic3d_ViewAffinity"
type
  Handle_Graphic3d_ViewAffinity* = handle[Graphic3d_ViewAffinity]

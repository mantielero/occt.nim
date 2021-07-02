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

## ! Structure display state.

type
  Graphic3dViewAffinity* {.importcpp: "Graphic3d_ViewAffinity",
                          header: "Graphic3d_ViewAffinity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    ## !< affinity mask


proc constructGraphic3dViewAffinity*(): Graphic3dViewAffinity {.constructor,
    importcpp: "Graphic3d_ViewAffinity(@)", header: "Graphic3d_ViewAffinity.hxx".}
proc isVisible*(this: Graphic3dViewAffinity; theViewId: StandardInteger): bool {.
    noSideEffect, importcpp: "IsVisible", header: "Graphic3d_ViewAffinity.hxx".}
proc setVisible*(this: var Graphic3dViewAffinity; theIsVisible: StandardBoolean) {.
    importcpp: "SetVisible", header: "Graphic3d_ViewAffinity.hxx".}
proc setVisible*(this: var Graphic3dViewAffinity; theViewId: StandardInteger;
                theIsVisible: bool) {.importcpp: "SetVisible",
                                    header: "Graphic3d_ViewAffinity.hxx".}
proc dumpJson*(this: Graphic3dViewAffinity; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_ViewAffinity.hxx".}
type
  Graphic3dViewAffinitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_ViewAffinity::get_type_name(@)",
                            header: "Graphic3d_ViewAffinity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_ViewAffinity::get_type_descriptor(@)",
    header: "Graphic3d_ViewAffinity.hxx".}
proc dynamicType*(this: Graphic3dViewAffinity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_ViewAffinity.hxx".}
discard "forward decl of Graphic3d_ViewAffinity"
type
  HandleGraphic3dViewAffinity* = Handle[Graphic3dViewAffinity]



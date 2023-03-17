import xcafdoc_types

##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Metallic-roughness PBR material definition.



proc newXCAFDoc_VisMaterialPBR*(): XCAFDoc_VisMaterialPBR {.cdecl, constructor,
    importcpp: "XCAFDoc_VisMaterialPBR(@)", header: "XCAFDoc_VisMaterialPBR.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterialPBR; theOther: XCAFDoc_VisMaterialPBR): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "XCAFDoc_VisMaterialPBR.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterialPBR; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_VisMaterialPBR.hxx".}
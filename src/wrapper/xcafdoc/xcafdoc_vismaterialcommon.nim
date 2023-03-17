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

discard "forward decl of Graphic3d_Aspects"
discard "forward decl of Graphic3d_MaterialAspect"

proc newXCAFDoc_VisMaterialCommon*(): XCAFDoc_VisMaterialCommon {.cdecl,
    constructor, importcpp: "XCAFDoc_VisMaterialCommon(@)",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc IsEqual*(this: XCAFDoc_VisMaterialCommon; theOther: XCAFDoc_VisMaterialCommon): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc DumpJson*(this: XCAFDoc_VisMaterialCommon; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_VisMaterialCommon.hxx".}
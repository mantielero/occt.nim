import xcafdoc_types
import ../standard/standard_types



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



proc newXCAFDocVisMaterialCommon*(): XCAFDocVisMaterialCommon {.cdecl, constructor,
    importcpp: "XCAFDoc_VisMaterialCommon(@)",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc isEqual*(this: XCAFDocVisMaterialCommon; theOther: XCAFDocVisMaterialCommon): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual",
    header: "XCAFDoc_VisMaterialCommon.hxx".}
proc dumpJson*(this: XCAFDocVisMaterialCommon; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_VisMaterialCommon.hxx".}


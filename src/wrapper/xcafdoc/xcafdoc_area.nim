import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types



##  Created on: 2000-09-08
##  Created by: data exchange team
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





proc newXCAFDocArea*(): XCAFDocArea {.cdecl, constructor,
                                   importcpp: "XCAFDoc_Area(@)",
                                   header: "XCAFDoc_Area.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Area::GetID(@)",
                           header: "XCAFDoc_Area.hxx".}
proc id*(this: XCAFDocArea): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
                                        header: "XCAFDoc_Area.hxx".}
proc set*(this: var XCAFDocArea; vol: cfloat) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Area.hxx".}
proc set*(label: TDF_Label; area: cfloat): Handle[XCAFDocArea] {.cdecl,
    importcpp: "XCAFDoc_Area::Set(@)", header: "XCAFDoc_Area.hxx".}
proc get*(this: XCAFDocArea): cfloat {.noSideEffect, cdecl, importcpp: "Get",
                                   header: "XCAFDoc_Area.hxx".}
proc get*(label: TDF_Label; area: var cfloat): bool {.cdecl,
    importcpp: "XCAFDoc_Area::Get(@)", header: "XCAFDoc_Area.hxx".}
proc dump*(this: XCAFDocArea; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_Area.hxx".}
proc dumpJson*(this: XCAFDocArea; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Area.hxx".}


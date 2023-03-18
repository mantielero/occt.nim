import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../xcafdimtolobjects/xcafdimtolobjects_types


##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

when defined(GetObject):
  discard




proc newXCAFDocDimension*(): XCAFDocDimension {.cdecl, constructor,
    importcpp: "XCAFDoc_Dimension(@)", header: "XCAFDoc_Dimension.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Dimension::GetID(@)",
                           header: "XCAFDoc_Dimension.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocDimension] {.cdecl,
    importcpp: "XCAFDoc_Dimension::Set(@)", header: "XCAFDoc_Dimension.hxx".}
proc id*(this: XCAFDocDimension): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Dimension.hxx".}
proc setObject*(this: var XCAFDocDimension;
               theDimensionObject: Handle[XCAFDimTolObjectsDimensionObject]) {.
    cdecl, importcpp: "SetObject", header: "XCAFDoc_Dimension.hxx".}
proc getObject*(this: XCAFDocDimension): Handle[XCAFDimTolObjectsDimensionObject] {.
    noSideEffect, cdecl, importcpp: "GetObject", header: "XCAFDoc_Dimension.hxx".}
proc dumpJson*(this: XCAFDocDimension; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Dimension.hxx".}


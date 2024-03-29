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




proc newXCAFDocGeomTolerance*(): XCAFDocGeomTolerance {.cdecl, constructor,
    importcpp: "XCAFDoc_GeomTolerance(@)", header: "XCAFDoc_GeomTolerance.hxx".}
proc newXCAFDocGeomTolerance*(theObj: Handle[XCAFDocGeomTolerance]): XCAFDocGeomTolerance {.
    cdecl, constructor, importcpp: "XCAFDoc_GeomTolerance(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_GeomTolerance::GetID(@)",
                           header: "XCAFDoc_GeomTolerance.hxx".}
proc set*(theLabel: TDF_Label): Handle[XCAFDocGeomTolerance] {.cdecl,
    importcpp: "XCAFDoc_GeomTolerance::Set(@)",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc setObject*(this: var XCAFDocGeomTolerance; theGeomToleranceObject: Handle[
    XCAFDimTolObjectsGeomToleranceObject]) {.cdecl, importcpp: "SetObject",
    header: "XCAFDoc_GeomTolerance.hxx".}
proc getObject*(this: XCAFDocGeomTolerance): Handle[
    XCAFDimTolObjectsGeomToleranceObject] {.noSideEffect, cdecl,
    importcpp: "GetObject", header: "XCAFDoc_GeomTolerance.hxx".}
proc id*(this: XCAFDocGeomTolerance): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_GeomTolerance.hxx".}
proc dumpJson*(this: XCAFDocGeomTolerance; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_GeomTolerance.hxx".}


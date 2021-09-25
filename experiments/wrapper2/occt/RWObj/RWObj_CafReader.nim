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

## ! The OBJ mesh reader into XDE document.

type
  RWObjCafReader* {.importcpp: "RWObj_CafReader", header: "RWObj_CafReader.hxx",
                   bycopy.} = object of RWMeshCafReader ## ! Empty constructor.
                                                   ## ! Read the mesh from specified file.
                                                   ## ! Create reader context.
                                                   ## ! Can be overridden by sub-class to read triangulation into application-specific data structures instead of Poly_Triangulation.
    ## !< flag for reading vertex data with single or double floating point precision

  RWObjCafReaderbaseType* = RWMeshCafReader

proc getTypeName*(): cstring {.importcpp: "RWObj_CafReader::get_type_name(@)",
                            header: "RWObj_CafReader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWObj_CafReader::get_type_descriptor(@)",
    header: "RWObj_CafReader.hxx".}
proc dynamicType*(this: RWObjCafReader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "RWObj_CafReader.hxx".}
proc constructRWObjCafReader*(): RWObjCafReader {.constructor,
    importcpp: "RWObj_CafReader(@)", header: "RWObj_CafReader.hxx".}
proc isSinglePrecision*(this: RWObjCafReader): bool {.noSideEffect,
    importcpp: "IsSinglePrecision", header: "RWObj_CafReader.hxx".}
proc setSinglePrecision*(this: var RWObjCafReader; theIsSinglePrecision: bool) {.
    importcpp: "SetSinglePrecision", header: "RWObj_CafReader.hxx".}

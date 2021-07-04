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

import
  ../RWMesh/RWMesh_CafReader, RWObj_TriangulationReader

## ! The OBJ mesh reader into XDE document.

type
  RWObj_CafReader* {.importcpp: "RWObj_CafReader", header: "RWObj_CafReader.hxx",
                    bycopy.} = object of RWMesh_CafReader ## ! Empty constructor.
                                                     ## ! Read the mesh from specified file.
                                                     ## ! Create reader context.
                                                     ## ! Can be overridden by sub-class to read triangulation into application-specific data structures instead of Poly_Triangulation.
    ## !< flag for reading vertex data with single or double floating point precision

  RWObj_CafReaderbase_type* = RWMesh_CafReader

proc get_type_name*(): cstring {.importcpp: "RWObj_CafReader::get_type_name(@)",
                              header: "RWObj_CafReader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWObj_CafReader::get_type_descriptor(@)",
    header: "RWObj_CafReader.hxx".}
proc DynamicType*(this: RWObj_CafReader): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "RWObj_CafReader.hxx".}
proc constructRWObj_CafReader*(): RWObj_CafReader {.constructor,
    importcpp: "RWObj_CafReader(@)", header: "RWObj_CafReader.hxx".}
proc IsSinglePrecision*(this: RWObj_CafReader): Standard_Boolean {.noSideEffect,
    importcpp: "IsSinglePrecision", header: "RWObj_CafReader.hxx".}
proc SetSinglePrecision*(this: var RWObj_CafReader;
                        theIsSinglePrecision: Standard_Boolean) {.
    importcpp: "SetSinglePrecision", header: "RWObj_CafReader.hxx".}
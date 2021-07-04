##  Author: Kirill Gavrilov
##  Copyright (c) 2015-2019 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_Vec3, RWObj_Material, ../NCollection/NCollection_DataMap

## ! Reader of mtl files.

type
  RWObj_MtlReader* {.importcpp: "RWObj_MtlReader", header: "RWObj_MtlReader.hxx",
                    bycopy.} = object ## ! Main constructor.
                                   ## ! Validate scalar value


proc constructRWObj_MtlReader*(theMaterials: var NCollection_DataMap[
    TCollection_AsciiString, RWObj_Material]): RWObj_MtlReader {.constructor,
    importcpp: "RWObj_MtlReader(@)", header: "RWObj_MtlReader.hxx".}
proc destroyRWObj_MtlReader*(this: var RWObj_MtlReader) {.
    importcpp: "#.~RWObj_MtlReader()", header: "RWObj_MtlReader.hxx".}
proc Read*(this: var RWObj_MtlReader; theFolder: TCollection_AsciiString;
          theFile: TCollection_AsciiString): bool {.importcpp: "Read",
    header: "RWObj_MtlReader.hxx".}
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

## ! Reader of mtl files.

type
  RWObjMtlReader* {.importcpp: "RWObj_MtlReader", header: "RWObj_MtlReader.hxx",
                   bycopy.} = object ## ! Main constructor.
                                  ## ! Validate scalar value


proc constructRWObjMtlReader*(theMaterials: var NCollectionDataMap[
    TCollectionAsciiString, RWObjMaterial]): RWObjMtlReader {.constructor,
    importcpp: "RWObj_MtlReader(@)", header: "RWObj_MtlReader.hxx".}
proc destroyRWObjMtlReader*(this: var RWObjMtlReader) {.
    importcpp: "#.~RWObj_MtlReader()", header: "RWObj_MtlReader.hxx".}
proc read*(this: var RWObjMtlReader; theFolder: TCollectionAsciiString;
          theFile: TCollectionAsciiString): bool {.importcpp: "Read",
    header: "RWObj_MtlReader.hxx".}


























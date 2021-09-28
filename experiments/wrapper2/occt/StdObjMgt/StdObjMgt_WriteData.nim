##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Standard_GUID"
type
  StdObjMgtWriteData* {.importcpp: "StdObjMgt_WriteData",
                       header: "StdObjMgt_WriteData.hxx", bycopy.} = object ## ! Auxiliary class used to automate begin and end of
                                                                       ## ! writing object (adding opening and closing
                                                                       ## parenthesis)
                                                                       ## ! at
                                                                       ## constructor and
                                                                       ## destructor

  StdObjMgtWriteDataObjectSentry* {.importcpp: "StdObjMgt_WriteData::ObjectSentry",
                                   header: "StdObjMgt_WriteData.hxx", bycopy.} = object


proc constructStdObjMgtWriteDataObjectSentry*(theData: var StdObjMgtWriteData): StdObjMgtWriteDataObjectSentry {.
    constructor, importcpp: "StdObjMgt_WriteData::ObjectSentry(@)",
    header: "StdObjMgt_WriteData.hxx".}
proc destroyStdObjMgtWriteDataObjectSentry*(
    this: var StdObjMgtWriteDataObjectSentry) {.importcpp: "#.~ObjectSentry()",
    header: "StdObjMgt_WriteData.hxx".}
proc constructStdObjMgtWriteData*(theDriver: Handle[StorageBaseDriver]): StdObjMgtWriteData {.
    constructor, importcpp: "StdObjMgt_WriteData(@)",
    header: "StdObjMgt_WriteData.hxx".}
proc writePersistentObject*(this: var StdObjMgtWriteData;
                           thePersistent: Handle[StdObjMgtPersistent]) {.
    importcpp: "WritePersistentObject", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*[Persistent](this: var StdObjMgtWriteData;
                      thePersistent: Handle[Persistent]): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; thePersistent: Handle[StdObjMgtPersistent]): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc writeValue*[Type](this: var StdObjMgtWriteData; theValue: Type): var StdObjMgtWriteData {.
    importcpp: "WriteValue", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: StandardCharacter): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: StandardExtCharacter): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: cint): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: bool): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: cfloat): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgtWriteData; theValue: StandardShortReal): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(theWriteData: var StdObjMgtWriteData; theGUID: StandardGUID): var StdObjMgtWriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}


























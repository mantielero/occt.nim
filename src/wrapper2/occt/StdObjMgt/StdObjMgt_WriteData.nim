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

import
  ../Standard/Standard, ../Storage/Storage_BaseDriver

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Standard_GUID"
type
  StdObjMgt_WriteData* {.importcpp: "StdObjMgt_WriteData",
                        header: "StdObjMgt_WriteData.hxx", bycopy.} = object ## !
                                                                        ## Auxiliary class used to automate begin and end of
                                                                        ## ! writing object (adding opening and closing
                                                                        ## parenthesis)
                                                                        ## ! at
                                                                        ## constructor and
                                                                        ## destructor

  StdObjMgt_WriteDataObjectSentry* {.importcpp: "StdObjMgt_WriteData::ObjectSentry",
                                    header: "StdObjMgt_WriteData.hxx", bycopy.} = object


proc constructStdObjMgt_WriteDataObjectSentry*(theData: var StdObjMgt_WriteData): StdObjMgt_WriteDataObjectSentry {.
    constructor, importcpp: "StdObjMgt_WriteData::ObjectSentry(@)",
    header: "StdObjMgt_WriteData.hxx".}
proc destroyStdObjMgt_WriteDataObjectSentry*(
    this: var StdObjMgt_WriteDataObjectSentry) {.importcpp: "#.~ObjectSentry()",
    header: "StdObjMgt_WriteData.hxx".}
proc constructStdObjMgt_WriteData*(theDriver: handle[Storage_BaseDriver]): StdObjMgt_WriteData {.
    constructor, importcpp: "StdObjMgt_WriteData(@)",
    header: "StdObjMgt_WriteData.hxx".}
proc WritePersistentObject*(this: var StdObjMgt_WriteData;
                           thePersistent: handle[StdObjMgt_Persistent]) {.
    importcpp: "WritePersistentObject", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*[Persistent](this: var StdObjMgt_WriteData;
                      thePersistent: handle[Persistent]): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData;
          thePersistent: handle[StdObjMgt_Persistent]): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc WriteValue*[Type](this: var StdObjMgt_WriteData; theValue: Type): var StdObjMgt_WriteData {.
    importcpp: "WriteValue", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_Character): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_ExtCharacter): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_Integer): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_Boolean): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_Real): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(this: var StdObjMgt_WriteData; theValue: Standard_ShortReal): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
proc `<<`*(theWriteData: var StdObjMgt_WriteData; theGUID: Standard_GUID): var StdObjMgt_WriteData {.
    importcpp: "(# << #)", header: "StdObjMgt_WriteData.hxx".}
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Storage/Storage_BaseDriver,
  ../NCollection/NCollection_Array1

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Standard_GUID"
type
  StdObjMgt_ReadData* {.importcpp: "StdObjMgt_ReadData",
                       header: "StdObjMgt_ReadData.hxx", bycopy.} = object ## ! Auxiliary class used to automate begin and end of
                                                                      ## ! reading object (eating opening and closing
                                                                      ## parenthesis)
                                                                      ## ! at
                                                                      ## constructor and destructor

  StdObjMgt_ReadDataObjectSentry* {.importcpp: "StdObjMgt_ReadData::ObjectSentry",
                                   header: "StdObjMgt_ReadData.hxx", bycopy.} = object


proc constructStdObjMgt_ReadDataObjectSentry*(theData: var StdObjMgt_ReadData): StdObjMgt_ReadDataObjectSentry {.
    constructor, importcpp: "StdObjMgt_ReadData::ObjectSentry(@)",
    header: "StdObjMgt_ReadData.hxx".}
proc destroyStdObjMgt_ReadDataObjectSentry*(
    this: var StdObjMgt_ReadDataObjectSentry) {.importcpp: "#.~ObjectSentry()",
    header: "StdObjMgt_ReadData.hxx".}
proc constructStdObjMgt_ReadData*(theDriver: handle[Storage_BaseDriver];
                                 theNumberOfObjects: Standard_Integer): StdObjMgt_ReadData {.
    constructor, importcpp: "StdObjMgt_ReadData(@)",
    header: "StdObjMgt_ReadData.hxx".}
proc CreatePersistentObject*[Instantiator](this: var StdObjMgt_ReadData;
    theRef: Standard_Integer; theInstantiator: Instantiator) {.
    importcpp: "CreatePersistentObject", header: "StdObjMgt_ReadData.hxx".}
proc ReadPersistentObject*(this: var StdObjMgt_ReadData; theRef: Standard_Integer) {.
    importcpp: "ReadPersistentObject", header: "StdObjMgt_ReadData.hxx".}
proc PersistentObject*(this: StdObjMgt_ReadData; theRef: Standard_Integer): handle[
    StdObjMgt_Persistent] {.noSideEffect, importcpp: "PersistentObject",
                           header: "StdObjMgt_ReadData.hxx".}
proc ReadReference*(this: var StdObjMgt_ReadData): handle[StdObjMgt_Persistent] {.
    importcpp: "ReadReference", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*[Persistent](this: var StdObjMgt_ReadData;
                      theTarget: var handle[Persistent]): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theTarget: var handle[StdObjMgt_Persistent]): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc ReadValue*[Type](this: var StdObjMgt_ReadData; theValue: var Type): var StdObjMgt_ReadData {.
    importcpp: "ReadValue", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_Character): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_ExtCharacter): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_Integer): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_Boolean): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_Real): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgt_ReadData; theValue: var Standard_ShortReal): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(theReadData: var StdObjMgt_ReadData; theGUID: var Standard_GUID): var StdObjMgt_ReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
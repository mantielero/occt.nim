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

discard "forward decl of StdObjMgt_Persistent"
discard "forward decl of Standard_GUID"
type
  StdObjMgtReadData* {.importcpp: "StdObjMgt_ReadData",
                      header: "StdObjMgt_ReadData.hxx", bycopy.} = object ## ! Auxiliary class used to automate begin and end of
                                                                     ## ! reading object (eating opening and closing
                                                                     ## parenthesis)
                                                                     ## ! at constructor and destructor

  StdObjMgtReadDataObjectSentry* {.importcpp: "StdObjMgt_ReadData::ObjectSentry",
                                  header: "StdObjMgt_ReadData.hxx", bycopy.} = object


proc constructStdObjMgtReadDataObjectSentry*(theData: var StdObjMgtReadData): StdObjMgtReadDataObjectSentry {.
    constructor, importcpp: "StdObjMgt_ReadData::ObjectSentry(@)",
    header: "StdObjMgt_ReadData.hxx".}
proc destroyStdObjMgtReadDataObjectSentry*(
    this: var StdObjMgtReadDataObjectSentry) {.importcpp: "#.~ObjectSentry()",
    header: "StdObjMgt_ReadData.hxx".}
proc constructStdObjMgtReadData*(theDriver: Handle[StorageBaseDriver];
                                theNumberOfObjects: cint): StdObjMgtReadData {.
    constructor, importcpp: "StdObjMgt_ReadData(@)",
    header: "StdObjMgt_ReadData.hxx".}
proc createPersistentObject*[Instantiator](this: var StdObjMgtReadData;
    theRef: cint; theInstantiator: Instantiator) {.
    importcpp: "CreatePersistentObject", header: "StdObjMgt_ReadData.hxx".}
proc readPersistentObject*(this: var StdObjMgtReadData; theRef: cint) {.
    importcpp: "ReadPersistentObject", header: "StdObjMgt_ReadData.hxx".}
proc persistentObject*(this: StdObjMgtReadData; theRef: cint): Handle[
    StdObjMgtPersistent] {.noSideEffect, importcpp: "PersistentObject",
                          header: "StdObjMgt_ReadData.hxx".}
proc readReference*(this: var StdObjMgtReadData): Handle[StdObjMgtPersistent] {.
    importcpp: "ReadReference", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*[Persistent](this: var StdObjMgtReadData;
                      theTarget: var Handle[Persistent]): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theTarget: var Handle[StdObjMgtPersistent]): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc readValue*[Type](this: var StdObjMgtReadData; theValue: var Type): var StdObjMgtReadData {.
    importcpp: "ReadValue", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var StandardCharacter): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var StandardExtCharacter): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var cint): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var bool): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var cfloat): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(this: var StdObjMgtReadData; theValue: var StandardShortReal): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}
proc `>>`*(theReadData: var StdObjMgtReadData; theGUID: var StandardGUID): var StdObjMgtReadData {.
    importcpp: "(# >> #)", header: "StdObjMgt_ReadData.hxx".}


























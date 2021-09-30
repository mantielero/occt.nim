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

discard "forward decl of TNaming_Name"
type
  StdPersistentNaming* {.importcpp: "StdPersistent_Naming",
                        header: "StdPersistent_Naming.hxx", bycopy.} = object

  StdPersistentNamingNamedShape* {.importcpp: "StdPersistent_Naming::NamedShape",
                                  header: "StdPersistent_Naming.hxx", bycopy.} = object of StdObjMgtAttribute[
      TNamingNamedShape]      ## ! Read persistent data from a file.


proc read*(this: var StdPersistentNamingNamedShape;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdPersistent_Naming.hxx".}
proc write*(this: StdPersistentNamingNamedShape;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "StdPersistent_Naming.hxx".}
proc pChildren*(this: StdPersistentNamingNamedShape;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc pName*(this: StdPersistentNamingNamedShape): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc `import`*(this: StdPersistentNamingNamedShape;
              theAttribute: Handle[TNamingNamedShape]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingName* {.importcpp: "StdPersistent_Naming::Name",
                            header: "StdPersistent_Naming.hxx", bycopy.} = object of StdObjMgtPersistent ##
                                                                                                  ## !
                                                                                                  ## Read
                                                                                                  ## persistent
                                                                                                  ## data
                                                                                                  ## from
                                                                                                  ## a
                                                                                                  ## file.


proc read*(this: var StdPersistentNamingName; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc write*(this: StdPersistentNamingName; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc pChildren*(this: StdPersistentNamingName;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc pName*(this: StdPersistentNamingName): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc `import`*(this: StdPersistentNamingName; theName: var TNamingName;
              theDF: Handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                       header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingName1* {.importcpp: "StdPersistent_Naming::Name_1",
                             header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistentNamingName ##
                                                                                                       ## !
                                                                                                       ## Read
                                                                                                       ## persistent
                                                                                                       ## data
                                                                                                       ## from
                                                                                                       ## a
                                                                                                       ## file.


proc read*(this: var StdPersistentNamingName1; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc write*(this: StdPersistentNamingName1; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc pChildren*(this: StdPersistentNamingName1;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc pName*(this: StdPersistentNamingName1): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc `import`*(this: StdPersistentNamingName1; theName: var TNamingName;
              theDF: Handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                       header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingName2* {.importcpp: "StdPersistent_Naming::Name_2",
                             header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistentNamingName1 ##
                                                                                                        ## !
                                                                                                        ## Read
                                                                                                        ## persistent
                                                                                                        ## data
                                                                                                        ## from
                                                                                                        ## a
                                                                                                        ## file.


proc read*(this: var StdPersistentNamingName2; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc write*(this: StdPersistentNamingName2; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc pChildren*(this: StdPersistentNamingName2;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc pName*(this: StdPersistentNamingName2): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc `import`*(this: StdPersistentNamingName2; theName: var TNamingName;
              theDF: Handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                       header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingNaming* {.importcpp: "StdPersistent_Naming::Naming",
                              header: "StdPersistent_Naming.hxx", bycopy.} = object of SingleRef[
      TNamingNaming]          ## ! Import transient attribuite from the persistent data.


proc importAttribute*(this: var StdPersistentNamingNaming) {.
    importcpp: "ImportAttribute", header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingNaming1* {.importcpp: "StdPersistent_Naming::Naming_1",
                               header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistentNamingNaming ##
                                                                                                           ## !
                                                                                                           ## Import
                                                                                                           ## transient
                                                                                                           ## attribuite
                                                                                                           ## from
                                                                                                           ## the
                                                                                                           ## persistent
                                                                                                           ## data.


proc importAttribute*(this: var StdPersistentNamingNaming1) {.
    importcpp: "ImportAttribute", header: "StdPersistent_Naming.hxx".}
type
  StdPersistentNamingNaming2* = StdPersistentNamingNaming



























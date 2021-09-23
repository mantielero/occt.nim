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
  ../StdObjMgt/StdObjMgt_Attribute, ../StdObjMgt/StdObjMgt_Persistent,
  StdPersistent_HArray1, ../StdLPersistent/StdLPersistent_HArray1,
  ../StdLPersistent/StdLPersistent_HString, ../TNaming/TNaming_NamedShape,
  ../TNaming/TNaming_Naming

discard "forward decl of TNaming_Name"
type
  StdPersistent_Naming* {.importcpp: "StdPersistent_Naming",
                         header: "StdPersistent_Naming.hxx", bycopy.} = object

  StdPersistent_NamingNamedShape* {.importcpp: "StdPersistent_Naming::NamedShape",
                                   header: "StdPersistent_Naming.hxx", bycopy.} = object of StdObjMgt_Attribute[
      TNaming_NamedShape]     ## ! Read persistent data from a file.


proc Read*(this: var StdPersistent_NamingNamedShape;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "StdPersistent_Naming.hxx".}
proc Write*(this: StdPersistent_NamingNamedShape;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc PChildren*(this: StdPersistent_NamingNamedShape;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc PName*(this: StdPersistent_NamingNamedShape): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc Import*(this: StdPersistent_NamingNamedShape;
            theAttribute: handle[TNaming_NamedShape]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingName* {.importcpp: "StdPersistent_Naming::Name",
                             header: "StdPersistent_Naming.hxx", bycopy.} = object of StdObjMgt_Persistent ##
                                                                                                    ## !
                                                                                                    ## Read
                                                                                                    ## persistent
                                                                                                    ## data
                                                                                                    ## from
                                                                                                    ## a
                                                                                                    ## file.


proc Read*(this: var StdPersistent_NamingName; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc Write*(this: StdPersistent_NamingName; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc PChildren*(this: StdPersistent_NamingName;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc PName*(this: StdPersistent_NamingName): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc Import*(this: StdPersistent_NamingName; theName: var TNaming_Name;
            theDF: handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                     header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingName_1* {.importcpp: "StdPersistent_Naming::Name_1",
                               header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistent_NamingName ##
                                                                                                          ## !
                                                                                                          ## Read
                                                                                                          ## persistent
                                                                                                          ## data
                                                                                                          ## from
                                                                                                          ## a
                                                                                                          ## file.


proc Read*(this: var StdPersistent_NamingName_1; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc Write*(this: StdPersistent_NamingName_1; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc PChildren*(this: StdPersistent_NamingName_1;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc PName*(this: StdPersistent_NamingName_1): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc Import*(this: StdPersistent_NamingName_1; theName: var TNaming_Name;
            theDF: handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                     header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingName_2* {.importcpp: "StdPersistent_Naming::Name_2",
                               header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistent_NamingName_1 ##
                                                                                                            ## !
                                                                                                            ## Read
                                                                                                            ## persistent
                                                                                                            ## data
                                                                                                            ## from
                                                                                                            ## a
                                                                                                            ## file.


proc Read*(this: var StdPersistent_NamingName_2; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdPersistent_Naming.hxx".}
proc Write*(this: StdPersistent_NamingName_2; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdPersistent_Naming.hxx".}
proc PChildren*(this: StdPersistent_NamingName_2;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_Naming.hxx".}
proc PName*(this: StdPersistent_NamingName_2): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_Naming.hxx".}
proc Import*(this: StdPersistent_NamingName_2; theName: var TNaming_Name;
            theDF: handle[TDF_Data]) {.noSideEffect, importcpp: "Import",
                                     header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingNaming* {.importcpp: "StdPersistent_Naming::Naming",
                               header: "StdPersistent_Naming.hxx", bycopy.} = object of SingleRef[
      TNaming_Naming]         ## ! Import transient attribuite from the persistent data.


proc ImportAttribute*(this: var StdPersistent_NamingNaming) {.
    importcpp: "ImportAttribute", header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingNaming_1* {.importcpp: "StdPersistent_Naming::Naming_1",
                                 header: "StdPersistent_Naming.hxx", bycopy.} = object of StdPersistent_NamingNaming ##
                                                                                                              ## !
                                                                                                              ## Import
                                                                                                              ## transient
                                                                                                              ## attribuite
                                                                                                              ## from
                                                                                                              ## the
                                                                                                              ## persistent
                                                                                                              ## data.


proc ImportAttribute*(this: var StdPersistent_NamingNaming_1) {.
    importcpp: "ImportAttribute", header: "StdPersistent_Naming.hxx".}
type
  StdPersistent_NamingNaming_2* = StdPersistent_NamingNaming

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

type
  StdPersistentDataXtdConstraint* {.importcpp: "StdPersistent_DataXtd_Constraint", header: "StdPersistent_DataXtd_Constraint.hxx",
                                   bycopy.} = object of StdObjMgtAttribute[
      TDataXtdConstraint]     ## ! Read persistent data from a file.


proc read*(this: var StdPersistentDataXtdConstraint;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "StdPersistent_DataXtd_Constraint.hxx".}
proc write*(this: StdPersistentDataXtdConstraint;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "StdPersistent_DataXtd_Constraint.hxx".}
proc pChildren*(this: StdPersistentDataXtdConstraint;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "StdPersistent_DataXtd_Constraint.hxx".}
proc pName*(this: StdPersistentDataXtdConstraint): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdPersistent_DataXtd_Constraint.hxx".}
proc `import`*(this: StdPersistentDataXtdConstraint;
              theAttribute: Handle[TDataXtdConstraint]) {.noSideEffect,
    importcpp: "Import", header: "StdPersistent_DataXtd_Constraint.hxx".}

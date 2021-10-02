##  Created on: 1995-10-25
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_AsciiString"
type
  StepDataEnumTool* {.importcpp: "StepData_EnumTool",
                     header: "StepData_EnumTool.hxx", bycopy.} = object


proc `new`*(this: var StepDataEnumTool; theSize: csize_t): pointer {.
    importcpp: "StepData_EnumTool::operator new", header: "StepData_EnumTool.hxx".}
proc `delete`*(this: var StepDataEnumTool; theAddress: pointer) {.
    importcpp: "StepData_EnumTool::operator delete",
    header: "StepData_EnumTool.hxx".}
proc `new[]`*(this: var StepDataEnumTool; theSize: csize_t): pointer {.
    importcpp: "StepData_EnumTool::operator new[]",
    header: "StepData_EnumTool.hxx".}
proc `delete[]`*(this: var StepDataEnumTool; theAddress: pointer) {.
    importcpp: "StepData_EnumTool::operator delete[]",
    header: "StepData_EnumTool.hxx".}
proc `new`*(this: var StepDataEnumTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepData_EnumTool::operator new", header: "StepData_EnumTool.hxx".}
proc `delete`*(this: var StepDataEnumTool; a2: pointer; a3: pointer) {.
    importcpp: "StepData_EnumTool::operator delete",
    header: "StepData_EnumTool.hxx".}
proc constructStepDataEnumTool*(e0: StandardCString = ""; e1: StandardCString = "";
                               e2: StandardCString = ""; e3: StandardCString = "";
                               e4: StandardCString = ""; e5: StandardCString = "";
                               e6: StandardCString = ""; e7: StandardCString = "";
                               e8: StandardCString = ""; e9: StandardCString = "";
                               e10: StandardCString = ""; e11: StandardCString = "";
                               e12: StandardCString = ""; e13: StandardCString = "";
                               e14: StandardCString = ""; e15: StandardCString = "";
                               e16: StandardCString = ""; e17: StandardCString = "";
                               e18: StandardCString = ""; e19: StandardCString = "";
                               e20: StandardCString = ""; e21: StandardCString = "";
                               e22: StandardCString = ""; e23: StandardCString = "";
                               e24: StandardCString = ""; e25: StandardCString = "";
                               e26: StandardCString = ""; e27: StandardCString = "";
                               e28: StandardCString = ""; e29: StandardCString = "";
                               e30: StandardCString = ""; e31: StandardCString = "";
                               e32: StandardCString = ""; e33: StandardCString = "";
                               e34: StandardCString = ""; e35: StandardCString = "";
                               e36: StandardCString = ""; e37: StandardCString = "";
                               e38: StandardCString = ""; e39: StandardCString = ""): StepDataEnumTool {.
    constructor, importcpp: "StepData_EnumTool(@)", header: "StepData_EnumTool.hxx".}
proc addDefinition*(this: var StepDataEnumTool; term: StandardCString) {.
    importcpp: "AddDefinition", header: "StepData_EnumTool.hxx".}
proc isSet*(this: StepDataEnumTool): StandardBoolean {.noSideEffect,
    importcpp: "IsSet", header: "StepData_EnumTool.hxx".}
proc maxValue*(this: StepDataEnumTool): int {.noSideEffect, importcpp: "MaxValue",
    header: "StepData_EnumTool.hxx".}
proc optional*(this: var StepDataEnumTool; mode: StandardBoolean) {.
    importcpp: "Optional", header: "StepData_EnumTool.hxx".}
proc nullValue*(this: StepDataEnumTool): int {.noSideEffect, importcpp: "NullValue",
    header: "StepData_EnumTool.hxx".}
proc text*(this: StepDataEnumTool; num: int): TCollectionAsciiString {.noSideEffect,
    importcpp: "Text", header: "StepData_EnumTool.hxx".}
proc value*(this: StepDataEnumTool; txt: StandardCString): int {.noSideEffect,
    importcpp: "Value", header: "StepData_EnumTool.hxx".}
proc value*(this: StepDataEnumTool; txt: TCollectionAsciiString): int {.noSideEffect,
    importcpp: "Value", header: "StepData_EnumTool.hxx".}
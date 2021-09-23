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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfAsciiString,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
type
  StepData_EnumTool* {.importcpp: "StepData_EnumTool",
                      header: "StepData_EnumTool.hxx", bycopy.} = object ## ! Creates an EnumTool with definitions given by e0 .. e<max>
                                                                    ## ! Each definition string can bring one term, or several
                                                                    ## ! separated by blanks. Each term corresponds to one value of the
                                                                    ## ! enumeration, if dots are not presents they are added
                                                                    ## !
                                                                    ## ! Such a static constructor allows to build a static description
                                                                    ## ! as : static
                                                                    ## StepData_EnumTool
                                                                    ## myenumtool("e0","e1"...);
                                                                    ## ! then use it without having to initialise it
                                                                    ## !
                                                                    ## ! A null definition can be input by given "$" :the
                                                                    ## corresponding
                                                                    ## ! position is attached to
                                                                    ## "null/undefined" value (as one
                                                                    ## ! particular item of the enumeration list)


proc constructStepData_EnumTool*(e0: Standard_CString = "";
                                e1: Standard_CString = "";
                                e2: Standard_CString = "";
                                e3: Standard_CString = "";
                                e4: Standard_CString = "";
                                e5: Standard_CString = "";
                                e6: Standard_CString = "";
                                e7: Standard_CString = "";
                                e8: Standard_CString = "";
                                e9: Standard_CString = "";
                                e10: Standard_CString = "";
                                e11: Standard_CString = "";
                                e12: Standard_CString = "";
                                e13: Standard_CString = "";
                                e14: Standard_CString = "";
                                e15: Standard_CString = "";
                                e16: Standard_CString = "";
                                e17: Standard_CString = "";
                                e18: Standard_CString = "";
                                e19: Standard_CString = "";
                                e20: Standard_CString = "";
                                e21: Standard_CString = "";
                                e22: Standard_CString = "";
                                e23: Standard_CString = "";
                                e24: Standard_CString = "";
                                e25: Standard_CString = "";
                                e26: Standard_CString = "";
                                e27: Standard_CString = "";
                                e28: Standard_CString = "";
                                e29: Standard_CString = "";
                                e30: Standard_CString = "";
                                e31: Standard_CString = "";
                                e32: Standard_CString = "";
                                e33: Standard_CString = "";
                                e34: Standard_CString = "";
                                e35: Standard_CString = "";
                                e36: Standard_CString = "";
                                e37: Standard_CString = "";
                                e38: Standard_CString = "";
                                e39: Standard_CString = ""): StepData_EnumTool {.
    constructor, importcpp: "StepData_EnumTool(@)", header: "StepData_EnumTool.hxx".}
proc AddDefinition*(this: var StepData_EnumTool; term: Standard_CString) {.
    importcpp: "AddDefinition", header: "StepData_EnumTool.hxx".}
proc IsSet*(this: StepData_EnumTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsSet", header: "StepData_EnumTool.hxx".}
proc MaxValue*(this: StepData_EnumTool): Standard_Integer {.noSideEffect,
    importcpp: "MaxValue", header: "StepData_EnumTool.hxx".}
proc Optional*(this: var StepData_EnumTool; mode: Standard_Boolean) {.
    importcpp: "Optional", header: "StepData_EnumTool.hxx".}
proc NullValue*(this: StepData_EnumTool): Standard_Integer {.noSideEffect,
    importcpp: "NullValue", header: "StepData_EnumTool.hxx".}
proc Text*(this: StepData_EnumTool; num: Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "Text", header: "StepData_EnumTool.hxx".}
proc Value*(this: StepData_EnumTool; txt: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "StepData_EnumTool.hxx".}
proc Value*(this: StepData_EnumTool; txt: TCollection_AsciiString): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "StepData_EnumTool.hxx".}
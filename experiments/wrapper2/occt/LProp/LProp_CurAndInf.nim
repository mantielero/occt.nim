##  Created on: 1994-09-02
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfReal,
  LProp_SequenceOfCIType, ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, LProp_CIType

discard "forward decl of Standard_OutOfRange"
type
  LProp_CurAndInf* {.importcpp: "LProp_CurAndInf", header: "LProp_CurAndInf.hxx",
                    bycopy.} = object


proc constructLProp_CurAndInf*(): LProp_CurAndInf {.constructor,
    importcpp: "LProp_CurAndInf(@)", header: "LProp_CurAndInf.hxx".}
proc AddInflection*(this: var LProp_CurAndInf; Param: Standard_Real) {.
    importcpp: "AddInflection", header: "LProp_CurAndInf.hxx".}
proc AddExtCur*(this: var LProp_CurAndInf; Param: Standard_Real;
               IsMin: Standard_Boolean) {.importcpp: "AddExtCur",
                                        header: "LProp_CurAndInf.hxx".}
proc Clear*(this: var LProp_CurAndInf) {.importcpp: "Clear",
                                     header: "LProp_CurAndInf.hxx".}
proc IsEmpty*(this: LProp_CurAndInf): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "LProp_CurAndInf.hxx".}
proc NbPoints*(this: LProp_CurAndInf): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "LProp_CurAndInf.hxx".}
proc Parameter*(this: LProp_CurAndInf; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "LProp_CurAndInf.hxx".}
proc Type*(this: LProp_CurAndInf; N: Standard_Integer): LProp_CIType {.noSideEffect,
    importcpp: "Type", header: "LProp_CurAndInf.hxx".}
##  Created on: 1999-06-30
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../TopTools/TopTools_DataMapOfShapeShape

discard "forward decl of TopoDS_Shape"
type
  TNaming_Translator* {.importcpp: "TNaming_Translator",
                       header: "TNaming_Translator.hxx", bycopy.} = object


proc constructTNaming_Translator*(): TNaming_Translator {.constructor,
    importcpp: "TNaming_Translator(@)", header: "TNaming_Translator.hxx".}
proc Add*(this: var TNaming_Translator; aShape: TopoDS_Shape) {.importcpp: "Add",
    header: "TNaming_Translator.hxx".}
proc Perform*(this: var TNaming_Translator) {.importcpp: "Perform",
    header: "TNaming_Translator.hxx".}
proc IsDone*(this: TNaming_Translator): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TNaming_Translator.hxx".}
proc Copied*(this: TNaming_Translator; aShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Copied", header: "TNaming_Translator.hxx".}
proc Copied*(this: TNaming_Translator): TopTools_DataMapOfShapeShape {.noSideEffect,
    importcpp: "Copied", header: "TNaming_Translator.hxx".}
proc DumpMap*(this: TNaming_Translator; isWrite: Standard_Boolean = Standard_False) {.
    noSideEffect, importcpp: "DumpMap", header: "TNaming_Translator.hxx".}
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

discard "forward decl of TopoDS_Shape"
type
  TNamingTranslator* {.importcpp: "TNaming_Translator",
                      header: "TNaming_Translator.hxx", bycopy.} = object


proc constructTNamingTranslator*(): TNamingTranslator {.constructor,
    importcpp: "TNaming_Translator(@)", header: "TNaming_Translator.hxx".}
proc add*(this: var TNamingTranslator; aShape: TopoDS_Shape) {.importcpp: "Add",
    header: "TNaming_Translator.hxx".}
proc perform*(this: var TNamingTranslator) {.importcpp: "Perform",
    header: "TNaming_Translator.hxx".}
proc isDone*(this: TNamingTranslator): bool {.noSideEffect, importcpp: "IsDone",
    header: "TNaming_Translator.hxx".}
proc copied*(this: TNamingTranslator; aShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "Copied", header: "TNaming_Translator.hxx".}
proc copied*(this: TNamingTranslator): TopToolsDataMapOfShapeShape {.noSideEffect,
    importcpp: "Copied", header: "TNaming_Translator.hxx".}
proc dumpMap*(this: TNamingTranslator; isWrite: bool = false) {.noSideEffect,
    importcpp: "DumpMap", header: "TNaming_Translator.hxx".}


























##  Created on: 1996-12-16
##  Created by: Remi Lequette
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
type
  TNamingBuilder* {.importcpp: "TNaming_Builder", header: "TNaming_Builder.hxx",
                   bycopy.} = object ## ! Create an   Builder.
                                  ## ! Warning:  Before Addition copies the current Value, and clear


proc constructTNamingBuilder*(aLabel: TDF_Label): TNamingBuilder {.constructor,
    importcpp: "TNaming_Builder(@)", header: "TNaming_Builder.hxx".}
proc generated*(this: var TNamingBuilder; newShape: TopoDS_Shape) {.
    importcpp: "Generated", header: "TNaming_Builder.hxx".}
proc generated*(this: var TNamingBuilder; oldShape: TopoDS_Shape;
               newShape: TopoDS_Shape) {.importcpp: "Generated",
                                       header: "TNaming_Builder.hxx".}
proc delete*(this: var TNamingBuilder; oldShape: TopoDS_Shape) {.importcpp: "Delete",
    header: "TNaming_Builder.hxx".}
proc modify*(this: var TNamingBuilder; oldShape: TopoDS_Shape; newShape: TopoDS_Shape) {.
    importcpp: "Modify", header: "TNaming_Builder.hxx".}
proc select*(this: var TNamingBuilder; aShape: TopoDS_Shape; inShape: TopoDS_Shape) {.
    importcpp: "Select", header: "TNaming_Builder.hxx".}
proc namedShape*(this: TNamingBuilder): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "NamedShape", header: "TNaming_Builder.hxx".}

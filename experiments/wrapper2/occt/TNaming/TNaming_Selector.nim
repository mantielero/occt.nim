##  Created on: 1999-09-28
##  Created by: Denis PASCAL
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

discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_NamedShape"
type
  TNamingSelector* {.importcpp: "TNaming_Selector", header: "TNaming_Selector.hxx",
                    bycopy.} = object ## ! To know if a shape is already identified (not selected)
                                   ## !
                                   ## =======================================================
                                   ## !
                                   ## ! The label access defines the point of access to the data framework.
                                   ## ! selection is the shape for which we want to know
                                   ## ! whether it is identified or not.
                                   ## ! If true, NS is returned as the identity of selection.
                                   ## ! If Geometry is true, NS will be the named shape
                                   ## ! containing the first appearance of selection and
                                   ## ! not any other shape. In other words, selection
                                   ## ! must be the only shape stored in NS.


proc isIdentified*(access: TDF_Label; selection: TopoDS_Shape;
                  ns: var Handle[TNamingNamedShape]; geometry: bool = false): bool {.
    importcpp: "TNaming_Selector::IsIdentified(@)", header: "TNaming_Selector.hxx".}
proc constructTNamingSelector*(aLabel: TDF_Label): TNamingSelector {.constructor,
    importcpp: "TNaming_Selector(@)", header: "TNaming_Selector.hxx".}
proc select*(this: TNamingSelector; selection: TopoDS_Shape; context: TopoDS_Shape;
            geometry: bool = false; keepOrientatation: bool = false): bool {.
    noSideEffect, importcpp: "Select", header: "TNaming_Selector.hxx".}
proc select*(this: TNamingSelector; selection: TopoDS_Shape; geometry: bool = false;
            keepOrientatation: bool = false): bool {.noSideEffect,
    importcpp: "Select", header: "TNaming_Selector.hxx".}
proc solve*(this: TNamingSelector; valid: var TDF_LabelMap): bool {.noSideEffect,
    importcpp: "Solve", header: "TNaming_Selector.hxx".}
proc arguments*(this: TNamingSelector; args: var TDF_AttributeMap) {.noSideEffect,
    importcpp: "Arguments", header: "TNaming_Selector.hxx".}
proc namedShape*(this: TNamingSelector): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "NamedShape", header: "TNaming_Selector.hxx".}

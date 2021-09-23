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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_Label, ../Standard/Standard_Boolean,
  ../TDF/TDF_LabelMap, ../TDF/TDF_AttributeMap

discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_NamedShape"
type
  TNaming_Selector* {.importcpp: "TNaming_Selector",
                     header: "TNaming_Selector.hxx", bycopy.} = object ## ! To know if a shape is already identified (not selected)
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


proc IsIdentified*(access: TDF_Label; selection: TopoDS_Shape;
                  NS: var handle[TNaming_NamedShape];
                  Geometry: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "TNaming_Selector::IsIdentified(@)", header: "TNaming_Selector.hxx".}
proc constructTNaming_Selector*(aLabel: TDF_Label): TNaming_Selector {.constructor,
    importcpp: "TNaming_Selector(@)", header: "TNaming_Selector.hxx".}
proc Select*(this: TNaming_Selector; Selection: TopoDS_Shape; Context: TopoDS_Shape;
            Geometry: Standard_Boolean = Standard_False;
            KeepOrientatation: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "TNaming_Selector.hxx".}
proc Select*(this: TNaming_Selector; Selection: TopoDS_Shape;
            Geometry: Standard_Boolean = Standard_False;
            KeepOrientatation: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "Select", header: "TNaming_Selector.hxx".}
proc Solve*(this: TNaming_Selector; Valid: var TDF_LabelMap): Standard_Boolean {.
    noSideEffect, importcpp: "Solve", header: "TNaming_Selector.hxx".}
proc Arguments*(this: TNaming_Selector; args: var TDF_AttributeMap) {.noSideEffect,
    importcpp: "Arguments", header: "TNaming_Selector.hxx".}
proc NamedShape*(this: TNaming_Selector): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "NamedShape", header: "TNaming_Selector.hxx".}
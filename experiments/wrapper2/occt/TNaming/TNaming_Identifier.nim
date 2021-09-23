##  Created on: 1997-03-03
##  Created by: Yves FRICAUD
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TDF/TDF_Label, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, TNaming_NameType, TNaming_ListOfNamedShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_Localizer"
type
  TNaming_Identifier* {.importcpp: "TNaming_Identifier",
                       header: "TNaming_Identifier.hxx", bycopy.} = object


proc constructTNaming_Identifier*(Lab: TDF_Label; S: TopoDS_Shape;
                                 Context: TopoDS_Shape; Geom: Standard_Boolean): TNaming_Identifier {.
    constructor, importcpp: "TNaming_Identifier(@)",
    header: "TNaming_Identifier.hxx".}
proc constructTNaming_Identifier*(Lab: TDF_Label; S: TopoDS_Shape;
                                 ContextNS: handle[TNaming_NamedShape];
                                 Geom: Standard_Boolean): TNaming_Identifier {.
    constructor, importcpp: "TNaming_Identifier(@)",
    header: "TNaming_Identifier.hxx".}
proc IsDone*(this: TNaming_Identifier): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "TNaming_Identifier.hxx".}
proc Type*(this: TNaming_Identifier): TNaming_NameType {.noSideEffect,
    importcpp: "Type", header: "TNaming_Identifier.hxx".}
proc IsFeature*(this: var TNaming_Identifier): Standard_Boolean {.
    importcpp: "IsFeature", header: "TNaming_Identifier.hxx".}
proc Feature*(this: TNaming_Identifier): handle[TNaming_NamedShape] {.noSideEffect,
    importcpp: "Feature", header: "TNaming_Identifier.hxx".}
proc InitArgs*(this: var TNaming_Identifier) {.importcpp: "InitArgs",
    header: "TNaming_Identifier.hxx".}
proc MoreArgs*(this: TNaming_Identifier): Standard_Boolean {.noSideEffect,
    importcpp: "MoreArgs", header: "TNaming_Identifier.hxx".}
proc NextArg*(this: var TNaming_Identifier) {.importcpp: "NextArg",
    header: "TNaming_Identifier.hxx".}
proc ArgIsFeature*(this: TNaming_Identifier): Standard_Boolean {.noSideEffect,
    importcpp: "ArgIsFeature", header: "TNaming_Identifier.hxx".}
proc FeatureArg*(this: var TNaming_Identifier): handle[TNaming_NamedShape] {.
    importcpp: "FeatureArg", header: "TNaming_Identifier.hxx".}
proc ShapeArg*(this: var TNaming_Identifier): TopoDS_Shape {.importcpp: "ShapeArg",
    header: "TNaming_Identifier.hxx".}
proc ShapeContext*(this: TNaming_Identifier): TopoDS_Shape {.noSideEffect,
    importcpp: "ShapeContext", header: "TNaming_Identifier.hxx".}
proc NamedShapeOfGeneration*(this: TNaming_Identifier): handle[TNaming_NamedShape] {.
    noSideEffect, importcpp: "NamedShapeOfGeneration",
    header: "TNaming_Identifier.hxx".}
proc AncestorIdentification*(this: var TNaming_Identifier;
                            Localizer: var TNaming_Localizer; Context: TopoDS_Shape) {.
    importcpp: "AncestorIdentification", header: "TNaming_Identifier.hxx".}
proc PrimitiveIdentification*(this: var TNaming_Identifier;
                             Localizer: var TNaming_Localizer;
                             NS: handle[TNaming_NamedShape]) {.
    importcpp: "PrimitiveIdentification", header: "TNaming_Identifier.hxx".}
proc GeneratedIdentification*(this: var TNaming_Identifier;
                             Localizer: var TNaming_Localizer;
                             NS: handle[TNaming_NamedShape]) {.
    importcpp: "GeneratedIdentification", header: "TNaming_Identifier.hxx".}
proc Identification*(this: var TNaming_Identifier; Localizer: var TNaming_Localizer;
                    NS: handle[TNaming_NamedShape]) {.importcpp: "Identification",
    header: "TNaming_Identifier.hxx".}
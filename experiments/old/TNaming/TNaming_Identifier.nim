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

discard "forward decl of TNaming_NamedShape"
discard "forward decl of TDF_Label"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TNaming_Localizer"
type
  TNamingIdentifier* {.importcpp: "TNaming_Identifier",
                      header: "TNaming_Identifier.hxx", bycopy.} = object


proc constructTNamingIdentifier*(lab: TDF_Label; s: TopoDS_Shape;
                                context: TopoDS_Shape; geom: bool): TNamingIdentifier {.
    constructor, importcpp: "TNaming_Identifier(@)",
    header: "TNaming_Identifier.hxx".}
proc constructTNamingIdentifier*(lab: TDF_Label; s: TopoDS_Shape;
                                contextNS: Handle[TNamingNamedShape]; geom: bool): TNamingIdentifier {.
    constructor, importcpp: "TNaming_Identifier(@)",
    header: "TNaming_Identifier.hxx".}
proc isDone*(this: TNamingIdentifier): bool {.noSideEffect, importcpp: "IsDone",
    header: "TNaming_Identifier.hxx".}
proc `type`*(this: TNamingIdentifier): TNamingNameType {.noSideEffect,
    importcpp: "Type", header: "TNaming_Identifier.hxx".}
proc isFeature*(this: var TNamingIdentifier): bool {.importcpp: "IsFeature",
    header: "TNaming_Identifier.hxx".}
proc feature*(this: TNamingIdentifier): Handle[TNamingNamedShape] {.noSideEffect,
    importcpp: "Feature", header: "TNaming_Identifier.hxx".}
proc initArgs*(this: var TNamingIdentifier) {.importcpp: "InitArgs",
    header: "TNaming_Identifier.hxx".}
proc moreArgs*(this: TNamingIdentifier): bool {.noSideEffect, importcpp: "MoreArgs",
    header: "TNaming_Identifier.hxx".}
proc nextArg*(this: var TNamingIdentifier) {.importcpp: "NextArg",
    header: "TNaming_Identifier.hxx".}
proc argIsFeature*(this: TNamingIdentifier): bool {.noSideEffect,
    importcpp: "ArgIsFeature", header: "TNaming_Identifier.hxx".}
proc featureArg*(this: var TNamingIdentifier): Handle[TNamingNamedShape] {.
    importcpp: "FeatureArg", header: "TNaming_Identifier.hxx".}
proc shapeArg*(this: var TNamingIdentifier): TopoDS_Shape {.importcpp: "ShapeArg",
    header: "TNaming_Identifier.hxx".}
proc shapeContext*(this: TNamingIdentifier): TopoDS_Shape {.noSideEffect,
    importcpp: "ShapeContext", header: "TNaming_Identifier.hxx".}
proc namedShapeOfGeneration*(this: TNamingIdentifier): Handle[TNamingNamedShape] {.
    noSideEffect, importcpp: "NamedShapeOfGeneration",
    header: "TNaming_Identifier.hxx".}
proc ancestorIdentification*(this: var TNamingIdentifier;
                            localizer: var TNamingLocalizer; context: TopoDS_Shape) {.
    importcpp: "AncestorIdentification", header: "TNaming_Identifier.hxx".}
proc primitiveIdentification*(this: var TNamingIdentifier;
                             localizer: var TNamingLocalizer;
                             ns: Handle[TNamingNamedShape]) {.
    importcpp: "PrimitiveIdentification", header: "TNaming_Identifier.hxx".}
proc generatedIdentification*(this: var TNamingIdentifier;
                             localizer: var TNamingLocalizer;
                             ns: Handle[TNamingNamedShape]) {.
    importcpp: "GeneratedIdentification", header: "TNaming_Identifier.hxx".}
proc identification*(this: var TNamingIdentifier; localizer: var TNamingLocalizer;
                    ns: Handle[TNamingNamedShape]) {.importcpp: "Identification",
    header: "TNaming_Identifier.hxx".}


























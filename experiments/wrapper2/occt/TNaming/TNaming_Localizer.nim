##  Created on: 1997-06-10
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

discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
type
  TNamingLocalizer* {.importcpp: "TNaming_Localizer",
                     header: "TNaming_Localizer.hxx", bycopy.} = object


proc constructTNamingLocalizer*(): TNamingLocalizer {.constructor,
    importcpp: "TNaming_Localizer(@)", header: "TNaming_Localizer.hxx".}
proc init*(this: var TNamingLocalizer; us: Handle[TNamingUsedShapes]; curTrans: cint) {.
    importcpp: "Init", header: "TNaming_Localizer.hxx".}
proc subShapes*(this: var TNamingLocalizer; s: TopoDS_Shape; `type`: TopAbsShapeEnum): TopToolsMapOfShape {.
    importcpp: "SubShapes", header: "TNaming_Localizer.hxx".}
proc ancestors*(this: var TNamingLocalizer; s: TopoDS_Shape; `type`: TopAbsShapeEnum): TopToolsIndexedDataMapOfShapeListOfShape {.
    importcpp: "Ancestors", header: "TNaming_Localizer.hxx".}
proc findFeaturesInAncestors*(this: var TNamingLocalizer; s: TopoDS_Shape;
                             `in`: TopoDS_Shape;
                             ancInFeatures: var TopToolsMapOfShape) {.
    importcpp: "FindFeaturesInAncestors", header: "TNaming_Localizer.hxx".}
proc goBack*(this: var TNamingLocalizer; s: TopoDS_Shape; lab: TDF_Label;
            evol: TNamingEvolution; oldS: var TopToolsListOfShape;
            oldLab: var TNamingListOfNamedShape) {.importcpp: "GoBack",
    header: "TNaming_Localizer.hxx".}
proc backward*(this: var TNamingLocalizer; ns: Handle[TNamingNamedShape];
              s: TopoDS_Shape; primitives: var TNamingMapOfNamedShape;
              validShapes: var TopToolsMapOfShape) {.importcpp: "Backward",
    header: "TNaming_Localizer.hxx".}
proc findNeighbourg*(this: var TNamingLocalizer; cont: TopoDS_Shape; s: TopoDS_Shape;
                    neighbourg: var TopToolsMapOfShape) {.
    importcpp: "FindNeighbourg", header: "TNaming_Localizer.hxx".}
proc isNew*(s: TopoDS_Shape; ns: Handle[TNamingNamedShape]): bool {.
    importcpp: "TNaming_Localizer::IsNew(@)", header: "TNaming_Localizer.hxx".}
proc findGenerator*(ns: Handle[TNamingNamedShape]; s: TopoDS_Shape;
                   theListOfGenerators: var TopToolsListOfShape) {.
    importcpp: "TNaming_Localizer::FindGenerator(@)",
    header: "TNaming_Localizer.hxx".}
proc findShapeContext*(ns: Handle[TNamingNamedShape]; theS: TopoDS_Shape;
                      theSC: var TopoDS_Shape) {.
    importcpp: "TNaming_Localizer::FindShapeContext(@)",
    header: "TNaming_Localizer.hxx".}


























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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopTools/TopTools_ListOfShape, TNaming_ListOfMapOfShape,
  TNaming_ListOfIndexedDataMapOfShapeListOfShape,
  ../TopTools/TopTools_MapOfShape, ../TopAbs/TopAbs_ShapeEnum,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, TNaming_Evolution,
  TNaming_ListOfNamedShape, TNaming_MapOfNamedShape, ../Standard/Standard_Boolean

discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_NamedShape"
type
  TNaming_Localizer* {.importcpp: "TNaming_Localizer",
                      header: "TNaming_Localizer.hxx", bycopy.} = object


proc constructTNaming_Localizer*(): TNaming_Localizer {.constructor,
    importcpp: "TNaming_Localizer(@)", header: "TNaming_Localizer.hxx".}
proc Init*(this: var TNaming_Localizer; US: handle[TNaming_UsedShapes];
          CurTrans: Standard_Integer) {.importcpp: "Init",
                                      header: "TNaming_Localizer.hxx".}
proc SubShapes*(this: var TNaming_Localizer; S: TopoDS_Shape; Type: TopAbs_ShapeEnum): TopTools_MapOfShape {.
    importcpp: "SubShapes", header: "TNaming_Localizer.hxx".}
proc Ancestors*(this: var TNaming_Localizer; S: TopoDS_Shape; Type: TopAbs_ShapeEnum): TopTools_IndexedDataMapOfShapeListOfShape {.
    importcpp: "Ancestors", header: "TNaming_Localizer.hxx".}
proc FindFeaturesInAncestors*(this: var TNaming_Localizer; S: TopoDS_Shape;
                             In: TopoDS_Shape;
                             AncInFeatures: var TopTools_MapOfShape) {.
    importcpp: "FindFeaturesInAncestors", header: "TNaming_Localizer.hxx".}
proc GoBack*(this: var TNaming_Localizer; S: TopoDS_Shape; Lab: TDF_Label;
            Evol: TNaming_Evolution; OldS: var TopTools_ListOfShape;
            OldLab: var TNaming_ListOfNamedShape) {.importcpp: "GoBack",
    header: "TNaming_Localizer.hxx".}
proc Backward*(this: var TNaming_Localizer; NS: handle[TNaming_NamedShape];
              S: TopoDS_Shape; Primitives: var TNaming_MapOfNamedShape;
              ValidShapes: var TopTools_MapOfShape) {.importcpp: "Backward",
    header: "TNaming_Localizer.hxx".}
proc FindNeighbourg*(this: var TNaming_Localizer; Cont: TopoDS_Shape; S: TopoDS_Shape;
                    Neighbourg: var TopTools_MapOfShape) {.
    importcpp: "FindNeighbourg", header: "TNaming_Localizer.hxx".}
proc IsNew*(S: TopoDS_Shape; NS: handle[TNaming_NamedShape]): Standard_Boolean {.
    importcpp: "TNaming_Localizer::IsNew(@)", header: "TNaming_Localizer.hxx".}
proc FindGenerator*(NS: handle[TNaming_NamedShape]; S: TopoDS_Shape;
                   theListOfGenerators: var TopTools_ListOfShape) {.
    importcpp: "TNaming_Localizer::FindGenerator(@)",
    header: "TNaming_Localizer.hxx".}
proc FindShapeContext*(NS: handle[TNaming_NamedShape]; theS: TopoDS_Shape;
                      theSC: var TopoDS_Shape) {.
    importcpp: "TNaming_Localizer::FindShapeContext(@)",
    header: "TNaming_Localizer.hxx".}
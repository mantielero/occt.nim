##  Created on: 1997-03-17
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
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_MapOfShape,
  ../TopTools/TopTools_HArray1OfShape, ../TDF/TDF_IDList,
  ../Standard/Standard_OStream, TNaming_Evolution, TNaming_NameType

discard "forward decl of TDF_Label"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Trsf"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TNaming_CopyShape"
discard "forward decl of TNaming_TranslateTool"
discard "forward decl of TNaming_Translator"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_UsedShapes"
discard "forward decl of TNaming_Builder"
discard "forward decl of TNaming_Tool"
discard "forward decl of TNaming_Iterator"
discard "forward decl of TNaming_NewShapeIterator"
discard "forward decl of TNaming_OldShapeIterator"
discard "forward decl of TNaming_SameShapeIterator"
discard "forward decl of TNaming_Name"
discard "forward decl of TNaming_Naming"
discard "forward decl of TNaming_Selector"
discard "forward decl of TNaming_DeltaOnRemoval"
discard "forward decl of TNaming_DeltaOnModification"
discard "forward decl of TNaming_RefShape"
discard "forward decl of TNaming_Scope"
discard "forward decl of TNaming_Identifier"
discard "forward decl of TNaming_Localizer"
discard "forward decl of TNaming_ShapesSet"
discard "forward decl of TNaming_IteratorOnShapesSet"
discard "forward decl of TNaming_NamingTool"
type
  TNaming* {.importcpp: "TNaming", header: "TNaming.hxx", bycopy.} = object ## ! Subtituter les  shapes  sur les structures de   source
                                                                    ## ! vers cible


proc Substitute*(labelsource: TDF_Label; labelcible: TDF_Label;
                mapOldNew: var TopTools_DataMapOfShapeShape) {.
    importcpp: "TNaming::Substitute(@)", header: "TNaming.hxx".}
proc Update*(label: TDF_Label; mapOldNew: var TopTools_DataMapOfShapeShape) {.
    importcpp: "TNaming::Update(@)", header: "TNaming.hxx".}
proc Displace*(label: TDF_Label; aLocation: TopLoc_Location;
              WithOld: Standard_Boolean = Standard_True) {.
    importcpp: "TNaming::Displace(@)", header: "TNaming.hxx".}
proc ChangeShapes*(label: TDF_Label; M: var TopTools_DataMapOfShapeShape) {.
    importcpp: "TNaming::ChangeShapes(@)", header: "TNaming.hxx".}
proc Transform*(label: TDF_Label; aTransformation: gp_Trsf) {.
    importcpp: "TNaming::Transform(@)", header: "TNaming.hxx".}
proc Replicate*(NS: handle[TNaming_NamedShape]; T: gp_Trsf; L: TDF_Label) {.
    importcpp: "TNaming::Replicate(@)", header: "TNaming.hxx".}
proc Replicate*(SH: TopoDS_Shape; T: gp_Trsf; L: TDF_Label) {.
    importcpp: "TNaming::Replicate(@)", header: "TNaming.hxx".}
proc MakeShape*(MS: TopTools_MapOfShape): TopoDS_Shape {.
    importcpp: "TNaming::MakeShape(@)", header: "TNaming.hxx".}
proc FindUniqueContext*(S: TopoDS_Shape; Context: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "TNaming::FindUniqueContext(@)", header: "TNaming.hxx".}
proc FindUniqueContextSet*(S: TopoDS_Shape; Context: TopoDS_Shape;
                          Arr: var handle[TopTools_HArray1OfShape]): TopoDS_Shape {.
    importcpp: "TNaming::FindUniqueContextSet(@)", header: "TNaming.hxx".}
proc SubstituteSShape*(accesslabel: TDF_Label; From: TopoDS_Shape;
                      To: var TopoDS_Shape): Standard_Boolean {.
    importcpp: "TNaming::SubstituteSShape(@)", header: "TNaming.hxx".}
proc OuterWire*(theFace: TopoDS_Face; theWire: var TopoDS_Wire): Standard_Boolean {.
    importcpp: "TNaming::OuterWire(@)", header: "TNaming.hxx".}
proc OuterShell*(theSolid: TopoDS_Solid; theShell: var TopoDS_Shell): Standard_Boolean {.
    importcpp: "TNaming::OuterShell(@)", header: "TNaming.hxx".}
proc IDList*(anIDList: var TDF_IDList) {.importcpp: "TNaming::IDList(@)",
                                     header: "TNaming.hxx".}
proc Print*(EVOL: TNaming_Evolution; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}
proc Print*(NAME: TNaming_NameType; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}
proc Print*(ACCESS: TDF_Label; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}
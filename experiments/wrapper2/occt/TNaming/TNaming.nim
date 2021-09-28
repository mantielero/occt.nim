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


proc substitute*(labelsource: TDF_Label; labelcible: TDF_Label;
                mapOldNew: var TopToolsDataMapOfShapeShape) {.
    importcpp: "TNaming::Substitute(@)", header: "TNaming.hxx".}
proc update*(label: TDF_Label; mapOldNew: var TopToolsDataMapOfShapeShape) {.
    importcpp: "TNaming::Update(@)", header: "TNaming.hxx".}
proc displace*(label: TDF_Label; aLocation: TopLocLocation; withOld: bool = true) {.
    importcpp: "TNaming::Displace(@)", header: "TNaming.hxx".}
proc changeShapes*(label: TDF_Label; m: var TopToolsDataMapOfShapeShape) {.
    importcpp: "TNaming::ChangeShapes(@)", header: "TNaming.hxx".}
proc transform*(label: TDF_Label; aTransformation: Trsf) {.
    importcpp: "TNaming::Transform(@)", header: "TNaming.hxx".}
proc replicate*(ns: Handle[TNamingNamedShape]; t: Trsf; L: TDF_Label) {.
    importcpp: "TNaming::Replicate(@)", header: "TNaming.hxx".}
proc replicate*(sh: TopoDS_Shape; t: Trsf; L: TDF_Label) {.
    importcpp: "TNaming::Replicate(@)", header: "TNaming.hxx".}
proc makeShape*(ms: TopToolsMapOfShape): TopoDS_Shape {.
    importcpp: "TNaming::MakeShape(@)", header: "TNaming.hxx".}
proc findUniqueContext*(s: TopoDS_Shape; context: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "TNaming::FindUniqueContext(@)", header: "TNaming.hxx".}
proc findUniqueContextSet*(s: TopoDS_Shape; context: TopoDS_Shape;
                          arr: var Handle[TopToolsHArray1OfShape]): TopoDS_Shape {.
    importcpp: "TNaming::FindUniqueContextSet(@)", header: "TNaming.hxx".}
proc substituteSShape*(accesslabel: TDF_Label; `from`: TopoDS_Shape;
                      to: var TopoDS_Shape): bool {.
    importcpp: "TNaming::SubstituteSShape(@)", header: "TNaming.hxx".}
proc outerWire*(theFace: TopoDS_Face; theWire: var TopoDS_Wire): bool {.
    importcpp: "TNaming::OuterWire(@)", header: "TNaming.hxx".}
proc outerShell*(theSolid: TopoDS_Solid; theShell: var TopoDS_Shell): bool {.
    importcpp: "TNaming::OuterShell(@)", header: "TNaming.hxx".}
proc iDList*(anIDList: var TDF_IDList) {.importcpp: "TNaming::IDList(@)",
                                     header: "TNaming.hxx".}
proc print*(evol: TNamingEvolution; s: var StandardOStream): var StandardOStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}
proc print*(name: TNamingNameType; s: var StandardOStream): var StandardOStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}
proc print*(access: TDF_Label; s: var StandardOStream): var StandardOStream {.
    importcpp: "TNaming::Print(@)", header: "TNaming.hxx".}


























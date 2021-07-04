##  Created on: 1993-06-17
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeInteger,
  ../TopTools/TopTools_IndexedMapOfOrientedShape,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_OStream,
  TopOpeBRepTool_OutCurveType

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopOpeBRepTool_GeomTool"
discard "forward decl of TopOpeBRepTool_AncestorsTool"
discard "forward decl of TopOpeBRepTool_C2DF"
discard "forward decl of TopOpeBRepTool_SolidClassifier"
discard "forward decl of TopOpeBRepTool_CurveTool"
discard "forward decl of TopOpeBRepTool_HBoxTool"
discard "forward decl of TopOpeBRepTool_BoxSort"
discard "forward decl of TopOpeBRepTool_ShapeExplorer"
discard "forward decl of TopOpeBRepTool_ShapeTool"
discard "forward decl of TopOpeBRepTool_ShapeClassifier"
discard "forward decl of TopOpeBRepTool_connexity"
discard "forward decl of TopOpeBRepTool_face"
discard "forward decl of TopOpeBRepTool_CLASSI"
discard "forward decl of TopOpeBRepTool_TOOL"
discard "forward decl of TopOpeBRepTool_CORRISO"
discard "forward decl of TopOpeBRepTool_REGUW"
discard "forward decl of TopOpeBRepTool_REGUS"
discard "forward decl of TopOpeBRepTool_makeTransition"
discard "forward decl of TopOpeBRepTool_mkTondgE"
discard "forward decl of TopOpeBRepTool_PurgeInternalEdges"
discard "forward decl of TopOpeBRepTool_FuseEdges"
type
  TopOpeBRepTool* {.importcpp: "TopOpeBRepTool", header: "TopOpeBRepTool.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Fuse
                                                                                         ## edges
                                                                                         ## (in
                                                                                         ## a
                                                                                         ## wire)
                                                                                         ## of
                                                                                         ## a
                                                                                         ## shape
                                                                                         ## where
                                                                                         ## we
                                                                                         ## have
                                                                                         ##
                                                                                         ## !
                                                                                         ## useless
                                                                                         ## vertex.
                                                                                         ##
                                                                                         ## !
                                                                                         ## In
                                                                                         ## case
                                                                                         ## face
                                                                                         ## <FF>
                                                                                         ## is
                                                                                         ## built
                                                                                         ## on
                                                                                         ## UV-non-connexed
                                                                                         ## wires
                                                                                         ##
                                                                                         ## !
                                                                                         ## (with
                                                                                         ## the
                                                                                         ## two
                                                                                         ## closing
                                                                                         ## edges
                                                                                         ## FORWARD
                                                                                         ## and
                                                                                         ## REVERSED,
                                                                                         ## in
                                                                                         ##
                                                                                         ## !
                                                                                         ## spite
                                                                                         ## of
                                                                                         ## one
                                                                                         ## only),
                                                                                         ## we
                                                                                         ## find
                                                                                         ## out
                                                                                         ## the
                                                                                         ## faulty
                                                                                         ## edge,
                                                                                         ## add
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## faulty
                                                                                         ## shapes
                                                                                         ## (edge,wire,face)
                                                                                         ## to
                                                                                         ## <MshNOK>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## <FF>
                                                                                         ## is
                                                                                         ## a
                                                                                         ## face
                                                                                         ## descendant
                                                                                         ## of
                                                                                         ## <F>.
                                                                                         ##
                                                                                         ## !
                                                                                         ## <MWisOld>(wire)
                                                                                         ## =
                                                                                         ## 1
                                                                                         ## if
                                                                                         ## wire
                                                                                         ## is
                                                                                         ## wire
                                                                                         ## of
                                                                                         ## <F>
                                                                                         ##
                                                                                         ## !
                                                                                         ## 0
                                                                                         ## wire
                                                                                         ## results
                                                                                         ## from
                                                                                         ## <F>'s
                                                                                         ## wire
                                                                                         ## splitted.
                                                                                         ##
                                                                                         ## !
                                                                                         ## returns
                                                                                         ## false
                                                                                         ## if
                                                                                         ## purge
                                                                                         ## fails


proc PurgeClosingEdges*(F: TopoDS_Face; FF: TopoDS_Face;
                       MWisOld: TopTools_DataMapOfShapeInteger;
                       MshNOK: var TopTools_IndexedMapOfOrientedShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)",
    header: "TopOpeBRepTool.hxx".}
proc PurgeClosingEdges*(F: TopoDS_Face; LOF: TopTools_ListOfShape;
                       MWisOld: TopTools_DataMapOfShapeInteger;
                       MshNOK: var TopTools_IndexedMapOfOrientedShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)",
    header: "TopOpeBRepTool.hxx".}
proc CorrectONUVISO*(F: TopoDS_Face; Fsp: var TopoDS_Face): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::CorrectONUVISO(@)", header: "TopOpeBRepTool.hxx".}
proc MakeFaces*(F: TopoDS_Face; LOF: TopTools_ListOfShape;
               MshNOK: TopTools_IndexedMapOfOrientedShape;
               LOFF: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::MakeFaces(@)", header: "TopOpeBRepTool.hxx".}
proc Regularize*(aFace: TopoDS_Face; aListOfFaces: var TopTools_ListOfShape;
                ESplits: var TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::Regularize(@)", header: "TopOpeBRepTool.hxx".}
proc RegularizeWires*(aFace: TopoDS_Face;
                     OldWiresNewWires: var TopTools_DataMapOfShapeListOfShape;
                     ESplits: var TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::RegularizeWires(@)", header: "TopOpeBRepTool.hxx".}
proc RegularizeFace*(aFace: TopoDS_Face;
                    OldWiresnewWires: TopTools_DataMapOfShapeListOfShape;
                    aListOfFaces: var TopTools_ListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::RegularizeFace(@)", header: "TopOpeBRepTool.hxx".}
proc RegularizeShells*(aSolid: TopoDS_Solid;
                      OldSheNewShe: var TopTools_DataMapOfShapeListOfShape;
                      FSplits: var TopTools_DataMapOfShapeListOfShape): Standard_Boolean {.
    importcpp: "TopOpeBRepTool::RegularizeShells(@)", header: "TopOpeBRepTool.hxx".}
proc Print*(OCT: TopOpeBRepTool_OutCurveType; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TopOpeBRepTool::Print(@)", header: "TopOpeBRepTool.hxx".}
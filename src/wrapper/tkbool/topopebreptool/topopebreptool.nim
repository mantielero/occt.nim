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


proc purgeClosingEdges*(f: TopoDS_Face; ff: TopoDS_Face;
                       mWisOld: TopToolsDataMapOfShapeInteger;
                       mshNOK: var TopToolsIndexedMapOfOrientedShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)", dynlib: tkbool.}
proc purgeClosingEdges*(f: TopoDS_Face; lof: TopToolsListOfShape;
                       mWisOld: TopToolsDataMapOfShapeInteger;
                       mshNOK: var TopToolsIndexedMapOfOrientedShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)", dynlib: tkbool.}
proc correctONUVISO*(f: TopoDS_Face; fsp: var TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool::CorrectONUVISO(@)", dynlib: tkbool.}
proc makeFaces*(f: TopoDS_Face; lof: TopToolsListOfShape;
               mshNOK: TopToolsIndexedMapOfOrientedShape;
               loff: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::MakeFaces(@)", dynlib: tkbool.}
proc regularize*(aFace: TopoDS_Face; aListOfFaces: var TopToolsListOfShape;
                eSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::Regularize(@)", dynlib: tkbool.}
proc regularizeWires*(aFace: TopoDS_Face;
                     oldWiresNewWires: var TopToolsDataMapOfShapeListOfShape;
                     eSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeWires(@)", dynlib: tkbool.}
proc regularizeFace*(aFace: TopoDS_Face;
                    oldWiresnewWires: TopToolsDataMapOfShapeListOfShape;
                    aListOfFaces: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeFace(@)", dynlib: tkbool.}
proc regularizeShells*(aSolid: TopoDS_Solid;
                      oldSheNewShe: var TopToolsDataMapOfShapeListOfShape;
                      fSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeShells(@)", dynlib: tkbool.}
proc print*(oct: TopOpeBRepToolOutCurveType; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopOpeBRepTool::Print(@)", dynlib: tkbool.}
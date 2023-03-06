import topopebreptool_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types





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



proc purgeClosingEdges*(f: TopoDS_Face; ff: TopoDS_Face;
                       mWisOld: TopToolsDataMapOfShapeInteger;
                       mshNOK: var TopToolsIndexedMapOfOrientedShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)", header: "TopOpeBRepTool.hxx".}
proc purgeClosingEdges*(f: TopoDS_Face; lof: TopToolsListOfShape;
                       mWisOld: TopToolsDataMapOfShapeInteger;
                       mshNOK: var TopToolsIndexedMapOfOrientedShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::PurgeClosingEdges(@)", header: "TopOpeBRepTool.hxx".}
proc correctONUVISO*(f: TopoDS_Face; fsp: var TopoDS_Face): bool {.cdecl,
    importcpp: "TopOpeBRepTool::CorrectONUVISO(@)", header: "TopOpeBRepTool.hxx".}
proc makeFaces*(f: TopoDS_Face; lof: TopToolsListOfShape;
               mshNOK: TopToolsIndexedMapOfOrientedShape;
               loff: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::MakeFaces(@)", header: "TopOpeBRepTool.hxx".}
proc regularize*(aFace: TopoDS_Face; aListOfFaces: var TopToolsListOfShape;
                eSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::Regularize(@)", header: "TopOpeBRepTool.hxx".}
proc regularizeWires*(aFace: TopoDS_Face;
                     oldWiresNewWires: var TopToolsDataMapOfShapeListOfShape;
                     eSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeWires(@)", header: "TopOpeBRepTool.hxx".}
proc regularizeFace*(aFace: TopoDS_Face;
                    oldWiresnewWires: TopToolsDataMapOfShapeListOfShape;
                    aListOfFaces: var TopToolsListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeFace(@)", header: "TopOpeBRepTool.hxx".}
proc regularizeShells*(aSolid: TopoDS_Solid;
                      oldSheNewShe: var TopToolsDataMapOfShapeListOfShape;
                      fSplits: var TopToolsDataMapOfShapeListOfShape): bool {.cdecl,
    importcpp: "TopOpeBRepTool::RegularizeShells(@)", header: "TopOpeBRepTool.hxx".}
proc print*(oct: TopOpeBRepToolOutCurveType; s: var StandardOStream): var StandardOStream {.
    cdecl, importcpp: "TopOpeBRepTool::Print(@)", header: "TopOpeBRepTool.hxx".}



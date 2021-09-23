##  Created on: 1998-08-18
##  Created by: Yves FRICAUD
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopOpeBRepDS_ListOfInterference,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_MapOfInteger

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepDS_GapTool"
discard "forward decl of TopOpeBRepDS_Association"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  TopOpeBRepDS_GapFiller* {.importcpp: "TopOpeBRepDS_GapFiller",
                           header: "TopOpeBRepDS_GapFiller.hxx", bycopy.} = object


proc constructTopOpeBRepDS_GapFiller*(HDS: handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_GapFiller {.
    constructor, importcpp: "TopOpeBRepDS_GapFiller(@)",
    header: "TopOpeBRepDS_GapFiller.hxx".}
proc Perform*(this: var TopOpeBRepDS_GapFiller) {.importcpp: "Perform",
    header: "TopOpeBRepDS_GapFiller.hxx".}
proc FindAssociatedPoints*(this: var TopOpeBRepDS_GapFiller;
                          I: handle[TopOpeBRepDS_Interference];
                          LI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FindAssociatedPoints", header: "TopOpeBRepDS_GapFiller.hxx".}
proc CheckConnexity*(this: var TopOpeBRepDS_GapFiller;
                    LI: var TopOpeBRepDS_ListOfInterference): Standard_Boolean {.
    importcpp: "CheckConnexity", header: "TopOpeBRepDS_GapFiller.hxx".}
proc AddPointsOnShape*(this: var TopOpeBRepDS_GapFiller; S: TopoDS_Shape;
                      LI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "AddPointsOnShape", header: "TopOpeBRepDS_GapFiller.hxx".}
proc AddPointsOnConnexShape*(this: var TopOpeBRepDS_GapFiller; F: TopoDS_Shape;
                            LI: TopOpeBRepDS_ListOfInterference) {.
    importcpp: "AddPointsOnConnexShape", header: "TopOpeBRepDS_GapFiller.hxx".}
proc FilterByFace*(this: var TopOpeBRepDS_GapFiller; F: TopoDS_Face;
                  LI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FilterByFace", header: "TopOpeBRepDS_GapFiller.hxx".}
proc FilterByEdge*(this: var TopOpeBRepDS_GapFiller; E: TopoDS_Edge;
                  LI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FilterByEdge", header: "TopOpeBRepDS_GapFiller.hxx".}
proc FilterByIncidentDistance*(this: var TopOpeBRepDS_GapFiller; F: TopoDS_Face;
                              I: handle[TopOpeBRepDS_Interference];
                              LI: var TopOpeBRepDS_ListOfInterference) {.
    importcpp: "FilterByIncidentDistance", header: "TopOpeBRepDS_GapFiller.hxx".}
proc IsOnFace*(this: TopOpeBRepDS_GapFiller; I: handle[TopOpeBRepDS_Interference];
              F: TopoDS_Face): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnFace", header: "TopOpeBRepDS_GapFiller.hxx".}
proc IsOnEdge*(this: TopOpeBRepDS_GapFiller; I: handle[TopOpeBRepDS_Interference];
              E: TopoDS_Edge): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnEdge", header: "TopOpeBRepDS_GapFiller.hxx".}
proc BuildNewGeometries*(this: var TopOpeBRepDS_GapFiller) {.
    importcpp: "BuildNewGeometries", header: "TopOpeBRepDS_GapFiller.hxx".}
proc ReBuildGeom*(this: var TopOpeBRepDS_GapFiller;
                 I1: handle[TopOpeBRepDS_Interference];
                 Done: var TColStd_MapOfInteger) {.importcpp: "ReBuildGeom",
    header: "TopOpeBRepDS_GapFiller.hxx".}
import topopebrepds_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../topods/topods_types





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



proc newTopOpeBRepDS_GapFiller*(hds: Handle[TopOpeBRepDS_HDataStructure]): TopOpeBRepDS_GapFiller {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_GapFiller(@)", header: "TopOpeBRepDS_GapFiller.hxx".}
proc perform*(this: var TopOpeBRepDS_GapFiller) {.cdecl, importcpp: "Perform",
    header: "TopOpeBRepDS_GapFiller.hxx".}
proc findAssociatedPoints*(this: var TopOpeBRepDS_GapFiller;
                          i: Handle[TopOpeBRepDS_Interference];
                          li: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FindAssociatedPoints", header: "TopOpeBRepDS_GapFiller.hxx".}
proc checkConnexity*(this: var TopOpeBRepDS_GapFiller;
                    li: var TopOpeBRepDS_ListOfInterference): bool {.cdecl,
    importcpp: "CheckConnexity", header: "TopOpeBRepDS_GapFiller.hxx".}
proc addPointsOnShape*(this: var TopOpeBRepDS_GapFiller; s: TopoDS_Shape;
                      li: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "AddPointsOnShape", header: "TopOpeBRepDS_GapFiller.hxx".}
proc addPointsOnConnexShape*(this: var TopOpeBRepDS_GapFiller; f: TopoDS_Shape;
                            li: TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "AddPointsOnConnexShape", header: "TopOpeBRepDS_GapFiller.hxx".}
proc filterByFace*(this: var TopOpeBRepDS_GapFiller; f: TopoDS_Face;
                  li: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FilterByFace", header: "TopOpeBRepDS_GapFiller.hxx".}
proc filterByEdge*(this: var TopOpeBRepDS_GapFiller; e: TopoDS_Edge;
                  li: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FilterByEdge", header: "TopOpeBRepDS_GapFiller.hxx".}
proc filterByIncidentDistance*(this: var TopOpeBRepDS_GapFiller; f: TopoDS_Face;
                              i: Handle[TopOpeBRepDS_Interference];
                              li: var TopOpeBRepDS_ListOfInterference) {.cdecl,
    importcpp: "FilterByIncidentDistance", header: "TopOpeBRepDS_GapFiller.hxx".}
proc isOnFace*(this: TopOpeBRepDS_GapFiller; i: Handle[TopOpeBRepDS_Interference];
              f: TopoDS_Face): bool {.noSideEffect, cdecl, importcpp: "IsOnFace",
                                   header: "TopOpeBRepDS_GapFiller.hxx".}
proc isOnEdge*(this: TopOpeBRepDS_GapFiller; i: Handle[TopOpeBRepDS_Interference];
              e: TopoDS_Edge): bool {.noSideEffect, cdecl, importcpp: "IsOnEdge",
                                   header: "TopOpeBRepDS_GapFiller.hxx".}
proc buildNewGeometries*(this: var TopOpeBRepDS_GapFiller) {.cdecl,
    importcpp: "BuildNewGeometries", header: "TopOpeBRepDS_GapFiller.hxx".}
proc reBuildGeom*(this: var TopOpeBRepDS_GapFiller;
                 i1: Handle[TopOpeBRepDS_Interference];
                 done: var TColStdMapOfInteger) {.cdecl, importcpp: "ReBuildGeom",
    header: "TopOpeBRepDS_GapFiller.hxx".}



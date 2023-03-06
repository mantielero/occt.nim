import topopebrepds_types
import ../standard/standard_types





##  Created on: 1994-05-26
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1994-1999 Matra Datavision
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



proc newTopOpeBRepDS_GeometryData*(): TopOpeBRepDS_GeometryData {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_GeometryData(@)", header: "TopOpeBRepDS_GeometryData.hxx".}
proc newTopOpeBRepDS_GeometryData*(other: TopOpeBRepDS_GeometryData): TopOpeBRepDS_GeometryData {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_GeometryData(@)", header: "TopOpeBRepDS_GeometryData.hxx".}
proc assign*(this: var TopOpeBRepDS_GeometryData; other: TopOpeBRepDS_GeometryData) {.
    cdecl, importcpp: "Assign", header: "TopOpeBRepDS_GeometryData.hxx".}
proc interferences*(this: TopOpeBRepDS_GeometryData): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "Interferences", header: "TopOpeBRepDS_GeometryData.hxx".}
proc changeInterferences*(this: var TopOpeBRepDS_GeometryData): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeInterferences", header: "TopOpeBRepDS_GeometryData.hxx".}
proc addInterference*(this: var TopOpeBRepDS_GeometryData;
                     i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "AddInterference", header: "TopOpeBRepDS_GeometryData.hxx".}



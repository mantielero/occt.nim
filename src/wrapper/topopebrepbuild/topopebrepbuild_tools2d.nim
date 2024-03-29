import ../toptools/toptools_types
import ../topods/topods_types
import topopebrepbuild_types





##  Created on: 1999-11-29
##  Created by: Peter KURNEV
##  Copyright (c) 1999 Matra Datavision
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



proc makeMapOfShapeVertexInfo*(aWire: TopoDS_Wire; aMap: var TopOpeBRepBuildIndexedDataMapOfShapeVertexInfo) {.
    cdecl, importcpp: "TopOpeBRepBuild_Tools2d::MakeMapOfShapeVertexInfo(@)",
    header: "TopOpeBRepBuild_Tools2d.hxx".}
proc dumpMapOfShapeVertexInfo*(aMap: TopOpeBRepBuildIndexedDataMapOfShapeVertexInfo) {.
    cdecl, importcpp: "TopOpeBRepBuild_Tools2d::DumpMapOfShapeVertexInfo(@)",
    header: "TopOpeBRepBuild_Tools2d.hxx".}
proc path*(aWire: TopoDS_Wire; aResList: var TopToolsListOfShape) {.cdecl,
    importcpp: "TopOpeBRepBuild_Tools2d::Path(@)", header: "TopOpeBRepBuild_Tools2d.hxx".}



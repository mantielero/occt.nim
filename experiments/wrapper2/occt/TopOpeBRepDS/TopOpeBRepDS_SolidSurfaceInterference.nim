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

discard "forward decl of TopOpeBRepDS_Transition"
discard "forward decl of TopOpeBRepDS_SolidSurfaceInterference"
discard "forward decl of TopOpeBRepDS_SolidSurfaceInterference"
type
  HandleC1C1* = Handle[TopOpeBRepDS_SolidSurfaceInterference]

## ! Interference

type
  TopOpeBRepDS_SolidSurfaceInterference* {.
      importcpp: "TopOpeBRepDS_SolidSurfaceInterference",
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference


proc constructTopOpeBRepDS_SolidSurfaceInterference*(
    transition: TopOpeBRepDS_Transition; supportType: TopOpeBRepDS_Kind;
    support: cint; geometryType: TopOpeBRepDS_Kind; geometry: cint): TopOpeBRepDS_SolidSurfaceInterference {.
    constructor, importcpp: "TopOpeBRepDS_SolidSurfaceInterference(@)",
    header: "TopOpeBRepDS_SolidSurfaceInterference.hxx".}
type
  TopOpeBRepDS_SolidSurfaceInterferencebaseType* = TopOpeBRepDS_Interference

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_SolidSurfaceInterference::get_type_name(@)",
                            header: "TopOpeBRepDS_SolidSurfaceInterference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_SolidSurfaceInterference::get_type_descriptor(@)",
    header: "TopOpeBRepDS_SolidSurfaceInterference.hxx".}
proc dynamicType*(this: TopOpeBRepDS_SolidSurfaceInterference): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_SolidSurfaceInterference.hxx".}


























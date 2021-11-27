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
type
  HandleTopOpeBRepDS_SolidSurfaceInterference* = Handle[
      TopOpeBRepDS_SolidSurfaceInterference]

## ! Interference

type
  TopOpeBRepDS_SolidSurfaceInterference* {.
      importcpp: "TopOpeBRepDS_SolidSurfaceInterference",
      header: "TopOpeBRepDS_SolidSurfaceInterference.hxx", bycopy.} = object of TopOpeBRepDS_Interference


proc newTopOpeBRepDS_SolidSurfaceInterference*(
    transition: TopOpeBRepDS_Transition; supportType: TopOpeBRepDS_Kind;
    support: cint; geometryType: TopOpeBRepDS_Kind; geometry: cint): TopOpeBRepDS_SolidSurfaceInterference {.
    cdecl, constructor, importcpp: "TopOpeBRepDS_SolidSurfaceInterference(@)",
    header: "TopOpeBRepDS_SolidSurfaceInterference.hxx".}
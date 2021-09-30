##  Created on: 1995-03-27
##  Created by: Christophe MARION
##  Copyright (c) 1995-1999 Matra Datavision
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

## ! Contains the  3 ListOfShape of  a Face  ( Internal
## ! OutLines, OutLines on restriction and IsoLines ).

type
  HLRTopoBRepFaceData* {.importcpp: "HLRTopoBRep_FaceData",
                        header: "HLRTopoBRep_FaceData.hxx", bycopy.} = object


proc constructHLRTopoBRepFaceData*(): HLRTopoBRepFaceData {.constructor,
    importcpp: "HLRTopoBRep_FaceData(@)", header: "HLRTopoBRep_FaceData.hxx".}
proc faceIntL*(this: HLRTopoBRepFaceData): TopToolsListOfShape {.noSideEffect,
    importcpp: "FaceIntL", header: "HLRTopoBRep_FaceData.hxx".}
proc faceOutL*(this: HLRTopoBRepFaceData): TopToolsListOfShape {.noSideEffect,
    importcpp: "FaceOutL", header: "HLRTopoBRep_FaceData.hxx".}
proc faceIsoL*(this: HLRTopoBRepFaceData): TopToolsListOfShape {.noSideEffect,
    importcpp: "FaceIsoL", header: "HLRTopoBRep_FaceData.hxx".}
proc addIntL*(this: var HLRTopoBRepFaceData): var TopToolsListOfShape {.
    importcpp: "AddIntL", header: "HLRTopoBRep_FaceData.hxx".}
proc addOutL*(this: var HLRTopoBRepFaceData): var TopToolsListOfShape {.
    importcpp: "AddOutL", header: "HLRTopoBRep_FaceData.hxx".}
proc addIsoL*(this: var HLRTopoBRepFaceData): var TopToolsListOfShape {.
    importcpp: "AddIsoL", header: "HLRTopoBRep_FaceData.hxx".}


























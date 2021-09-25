##  Created on: 1997-04-17
##  Created by: Christophe MARION
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of HLRAlgo_Interference"
discard "forward decl of HLRBRep_EdgeInterferenceTool"
type
  HLRBRepEdgeIList* {.importcpp: "HLRBRep_EdgeIList",
                     header: "HLRBRep_EdgeIList.hxx", bycopy.} = object ## ! Add the interference <I> to the list <IL>.


proc addInterference*(il: var HLRAlgoInterferenceList; i: HLRAlgoInterference;
                     t: HLRBRepEdgeInterferenceTool) {.
    importcpp: "HLRBRep_EdgeIList::AddInterference(@)",
    header: "HLRBRep_EdgeIList.hxx".}
proc processComplex*(il: var HLRAlgoInterferenceList; t: HLRBRepEdgeInterferenceTool) {.
    importcpp: "HLRBRep_EdgeIList::ProcessComplex(@)",
    header: "HLRBRep_EdgeIList.hxx".}

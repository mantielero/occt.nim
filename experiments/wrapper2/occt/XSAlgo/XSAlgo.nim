##  Created on: 2000-01-19
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of XSAlgo_AlgoContainer"
discard "forward decl of XSAlgo_ToolContainer"
discard "forward decl of XSAlgo_AlgoContainer"
type
  XSAlgo* {.importcpp: "XSAlgo", header: "XSAlgo.hxx", bycopy.} = object ## ! Provides initerface to the algorithms from Shape Healing
                                                                 ## ! and others for XSTEP processors.
                                                                 ## ! Creates and initializes default AlgoContainer.


proc init*() {.importcpp: "XSAlgo::Init(@)", header: "XSAlgo.hxx".}
proc setAlgoContainer*(aContainer: Handle[XSAlgoAlgoContainer]) {.
    importcpp: "XSAlgo::SetAlgoContainer(@)", header: "XSAlgo.hxx".}
proc algoContainer*(): Handle[XSAlgoAlgoContainer] {.
    importcpp: "XSAlgo::AlgoContainer(@)", header: "XSAlgo.hxx".}

##  Created on: 1995-03-13
##  Created by: Christian CAILLET
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

discard "forward decl of XSControl_WorkSession"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of XSControl_Vars"
discard "forward decl of XSControl_Controller"
discard "forward decl of XSControl_TransferReader"
discard "forward decl of XSControl_TransferWriter"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of XSControl_SelectForTransfer"
discard "forward decl of XSControl_SignTransferStatus"
discard "forward decl of XSControl_ConnectedShapes"
discard "forward decl of XSControl_Reader"
discard "forward decl of XSControl_Writer"
discard "forward decl of XSControl_Functions"
discard "forward decl of XSControl_FuncShape"
discard "forward decl of XSControl_Utils"
discard "forward decl of XSControl_Vars"
type
  XSControl* {.importcpp: "XSControl", header: "XSControl.hxx", bycopy.} = object ## !
                                                                          ## Returns the
                                                                          ## WorkSession of a
                                                                          ## SessionPilot, but casts it as
                                                                          ## ! from
                                                                          ## XSControl : it then gives access to
                                                                          ## Control &
                                                                          ## Transfers


proc session*(pilot: Handle[IFSelectSessionPilot]): Handle[XSControlWorkSession] {.
    importcpp: "XSControl::Session(@)", header: "XSControl.hxx".}
proc vars*(pilot: Handle[IFSelectSessionPilot]): Handle[XSControlVars] {.
    importcpp: "XSControl::Vars(@)", header: "XSControl.hxx".}

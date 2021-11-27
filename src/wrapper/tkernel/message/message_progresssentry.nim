##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Functionality of this class (Message_ProgressSentry) has been superseded by Message_ProgressScope.
## ! This class is kept just to simplify transition of an old code and will be removed in future.

type
  MessageProgressSentry* {.importcpp: "Message_ProgressSentry",
                          header: "Message_ProgressSentry.hxx", bycopy.} = object of MessageProgressScope ##
                                                                                                   ## !
                                                                                                   ## Deprecated
                                                                                                   ## constructor,
                                                                                                   ## Message_ProgressScope
                                                                                                   ## should
                                                                                                   ## be
                                                                                                   ## created
                                                                                                   ## instead.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Message_ProgressRange
                                                                                                   ## should
                                                                                                   ## be
                                                                                                   ## passed
                                                                                                   ## to
                                                                                                   ## constructor
                                                                                                   ## instead
                                                                                                   ## of
                                                                                                   ## Message_ProgressIndicator.


proc newMessageProgressSentry*(theRange: MessageProgressRange; theName: cstring;
                              theMin: cfloat; theMax: cfloat; theStep: cfloat;
                              theIsInf: bool = false; theNewScopeSpan: cfloat = 0.0): MessageProgressSentry {.
    cdecl, constructor, importcpp: "Message_ProgressSentry(@)", header: "Message_ProgressSentry.hxx".}
proc relieve*(this: var MessageProgressSentry) {.cdecl, importcpp: "Relieve",
    header: "Message_ProgressSentry.hxx".}
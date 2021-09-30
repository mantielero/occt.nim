##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Color definition for console/terminal output (limited palette).

type
  MessageConsoleColor* {.size: sizeof(cint), importcpp: "Message_ConsoleColor",
                        header: "Message_ConsoleColor.hxx".} = enum
    MessageConsoleColorDefault, ## !< default (white) color
    MessageConsoleColorBlack, ## !< black   color
    MessageConsoleColorWhite, ## !< white   color
    MessageConsoleColorRed,   ## !< red     color
    MessageConsoleColorBlue,  ## !< blue    color
    MessageConsoleColorGreen, ## !< green   color
    MessageConsoleColorYellow, ## !< yellow  color
    MessageConsoleColorCyan,  ## !< cyan    color
    MessageConsoleColorMagenta ## !< magenta color




























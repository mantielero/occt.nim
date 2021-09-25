##  Created on: 2001-07-26
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

##   Class LDOM_Text

type
  LDOM_Text* {.importcpp: "LDOM_Text", header: "LDOM_Text.hxx", bycopy.} = object of LDOM_CharacterData ##  ---------- PUBLIC METHODS ----------


proc constructLDOM_Text*(): LDOM_Text {.constructor, importcpp: "LDOM_Text(@)",
                                     header: "LDOM_Text.hxx".}
proc constructLDOM_Text*(anOther: LDOM_Text): LDOM_Text {.constructor,
    importcpp: "LDOM_Text(@)", header: "LDOM_Text.hxx".}

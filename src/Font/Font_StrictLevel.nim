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

## ! Enumeration defining font search restrictions.

type
  FontStrictLevel* {.size: sizeof(cint), importcpp: "Font_StrictLevel",
                    header: "Font_StrictLevel.hxx".} = enum
    FontStrictLevelStrict,    ## !< search only for exact font
    FontStrictLevelAliases,   ## !< search for exact font match and for aliases (ignore global fallback)
    FontStrictLevelAny        ## !< search for any font, including global fallback




























##  Created on: 2017-05-26
##  Created by: Andrey GOLODYAEV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! Enumerates tone mapping methods.

type
  Graphic3d_ToneMappingMethod* {.size: sizeof(cint),
                                importcpp: "Graphic3d_ToneMappingMethod",
                                header: "Graphic3d_ToneMappingMethod.hxx".} = enum
    Graphic3d_ToneMappingMethod_Disabled, ## !< Don't use tone mapping
    Graphic3d_ToneMappingMethod_Filmic ## !< Use filmic tone mapping


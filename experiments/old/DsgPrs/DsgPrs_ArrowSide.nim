##  Created on: 1994-10-03
##  Created by: Arnaud BOUZY
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

## ! Designates how many arrows will be displayed and
## ! where they will be displayed in presenting a length.

type
  DsgPrsArrowSide* {.size: sizeof(cint), importcpp: "DsgPrs_ArrowSide",
                    header: "DsgPrs_ArrowSide.hxx".} = enum
    DsgPrsAS_NONE, DsgPrsAS_FIRSTAR, DsgPrsAS_LASTAR, DsgPrsAS_BOTHAR,
    DsgPrsAS_FIRSTPT, DsgPrsAS_LASTPT, DsgPrsAS_BOTHPT, DsgPrsAS_FIRSTAR_LASTPT,
    DsgPrsAS_FIRSTPT_LASTAR




























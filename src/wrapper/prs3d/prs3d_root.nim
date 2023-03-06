import prs3d_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types





##  Created on: 1992-12-15
##  Created by: Jean Louis FRENKEL
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! A root class for the standard presentation algorithms of the StdPrs package.



proc currentGroup*(thePrs3d: Handle[Prs3dPresentation]): Handle[Graphic3dGroup] {.
    cdecl, importcpp: "Prs3d_Root::CurrentGroup(@)", header: "Prs3d_Root.hxx".}
proc newGroup*(thePrs3d: Handle[Prs3dPresentation]): Handle[Graphic3dGroup] {.cdecl,
    importcpp: "Prs3d_Root::NewGroup(@)", header: "Prs3d_Root.hxx".}



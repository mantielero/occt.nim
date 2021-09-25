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

type
  Prs3dRoot* {.importcpp: "Prs3d_Root", header: "Prs3d_Root.hxx", bycopy.} = object


## !!!Ignored construct:  public : Standard_DEPRECATED ( This method is deprecated - Prs3d_Presentation::CurrentGroup() should be called instead ) static opencascade :: handle < Graphic3d_Group > CurrentGroup ( const opencascade :: handle < Prs3d_Presentation > & thePrs3d ) { return thePrs3d -> CurrentGroup ( ) ; } Standard_DEPRECATED ( This method is deprecated - Prs3d_Presentation::NewGroup() should be called instead ) static opencascade :: handle < Graphic3d_Group > NewGroup ( const opencascade :: handle < Prs3d_Presentation > & thePrs3d ) { return thePrs3d -> NewGroup ( ) ; } }
## Error: identifier expected, but got: This method is deprecated - Prs3d_Presentation::CurrentGroup() should be called instead!!!


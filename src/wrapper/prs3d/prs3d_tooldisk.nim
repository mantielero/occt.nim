import prs3d_types
import ../gp/gp_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types





##  Created on: 2016-02-04
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Standard presentation algorithm that outputs graphical primitives for disk surface.



proc create*(theInnerRadius: cfloat; theOuterRadius: cfloat; theNbSlices: cint;
            theNbStacks: cint; theTrsf: TrsfObj): Handle[Graphic3dArrayOfTriangles] {.
    cdecl, importcpp: "Prs3d_ToolDisk::Create(@)", header: "Prs3d_ToolDisk.hxx".}
proc newPrs3dToolDisk*(theInnerRadius: cfloat; theOuterRadius: cfloat;
                      theNbSlices: cint; theNbStacks: cint): Prs3dToolDisk {.cdecl,
    constructor, importcpp: "Prs3d_ToolDisk(@)", header: "Prs3d_ToolDisk.hxx".}
proc setAngleRange*(this: var Prs3dToolDisk; theStartAngle: cfloat;
                   theEndAngle: cfloat) {.cdecl, importcpp: "SetAngleRange",
                                        header: "Prs3d_ToolDisk.hxx".}



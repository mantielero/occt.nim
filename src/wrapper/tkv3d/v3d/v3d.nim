import v3d_types

##  Created on: 1992-11-13
##  Created by: GG
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

discard "forward decl of Graphic3d_Group"
discard "forward decl of V3d_View"


proc getProjAxis*(theOrientation: V3dTypeOfOrientation): DirObj {.cdecl,
    importcpp: "V3d::GetProjAxis(@)", header: "V3d.hxx".}
proc arrowOfRadius*(garrow: Handle[Graphic3dGroup]; x0: cfloat; y0: cfloat; z0: cfloat;
                   dx: cfloat; dy: cfloat; dz: cfloat; alpha: cfloat; lng: cfloat) {.
    cdecl, importcpp: "V3d::ArrowOfRadius(@)", header: "V3d.hxx".}
proc circleInPlane*(gcircle: Handle[Graphic3dGroup]; x0: cfloat; y0: cfloat;
                   z0: cfloat; vx: cfloat; vy: cfloat; vz: cfloat; radius: cfloat) {.
    cdecl, importcpp: "V3d::CircleInPlane(@)", header: "V3d.hxx".}
proc switchViewsinWindow*(aPreviousView: Handle[V3dView];
                         aNextView: Handle[V3dView]) {.cdecl,
    importcpp: "V3d::SwitchViewsinWindow(@)", header: "V3d.hxx".}
proc typeOfOrientationToString*(theType: V3dTypeOfOrientation): cstring {.cdecl,
    importcpp: "V3d::TypeOfOrientationToString(@)", header: "V3d.hxx".}
proc typeOfOrientationFromString*(theTypeString: cstring): V3dTypeOfOrientation {.
    cdecl, importcpp: "V3d::TypeOfOrientationFromString(@)", header: "V3d.hxx".}
proc typeOfOrientationFromString*(theTypeString: cstring;
                                 theType: var V3dTypeOfOrientation): bool {.cdecl,
    importcpp: "V3d::TypeOfOrientationFromString(@)", header: "V3d.hxx".}

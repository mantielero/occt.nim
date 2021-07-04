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

import
  ../gp/gp_Dir, ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, V3d_TypeOfOrientation

discard "forward decl of Graphic3d_Group"
discard "forward decl of V3d_View"
type
  V3d* {.importcpp: "V3d", header: "V3d.hxx", bycopy.} = object ## ! Determines the orientation vector corresponding to the predefined orientation type.


proc GetProjAxis*(theOrientation: V3d_TypeOfOrientation): gp_Dir {.
    importcpp: "V3d::GetProjAxis(@)", header: "V3d.hxx".}
proc ArrowOfRadius*(garrow: handle[Graphic3d_Group]; X0: Standard_Real;
                   Y0: Standard_Real; Z0: Standard_Real; DX: Standard_Real;
                   DY: Standard_Real; DZ: Standard_Real; Alpha: Standard_Real;
                   Lng: Standard_Real) {.importcpp: "V3d::ArrowOfRadius(@)",
                                       header: "V3d.hxx".}
proc CircleInPlane*(gcircle: handle[Graphic3d_Group]; X0: Standard_Real;
                   Y0: Standard_Real; Z0: Standard_Real; VX: Standard_Real;
                   VY: Standard_Real; VZ: Standard_Real; Radius: Standard_Real) {.
    importcpp: "V3d::CircleInPlane(@)", header: "V3d.hxx".}
proc SwitchViewsinWindow*(aPreviousView: handle[V3d_View];
                         aNextView: handle[V3d_View]) {.
    importcpp: "V3d::SwitchViewsinWindow(@)", header: "V3d.hxx".}
proc TypeOfOrientationToString*(theType: V3d_TypeOfOrientation): Standard_CString {.
    importcpp: "V3d::TypeOfOrientationToString(@)", header: "V3d.hxx".}
proc TypeOfOrientationFromString*(theTypeString: Standard_CString): V3d_TypeOfOrientation {.
    importcpp: "V3d::TypeOfOrientationFromString(@)", header: "V3d.hxx".}
proc TypeOfOrientationFromString*(theTypeString: Standard_CString;
                                 theType: var V3d_TypeOfOrientation): Standard_Boolean {.
    importcpp: "V3d::TypeOfOrientationFromString(@)", header: "V3d.hxx".}
##  Created by: GG
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_ClipPlane, ../Graphic3d/Graphic3d_Structure, V3d_View

discard "forward decl of V3d_Plane"
discard "forward decl of V3d_Plane"
type
  Handle_V3d_Plane* = handle[V3d_Plane]

## ! Obsolete clip plane presentation class.
## ! Ported on new core of Graphic3d_ClipPlane approach.
## ! Please access Graphic3d_ClipPlane via ClipPlane() method
## ! to use it for standard clipping workflow.
## ! Example of use:
## ! @code
## !
## ! Handle(V3d_Plane) aPlane (0, 1, 0, -20);
## ! Handle(V3d_View) aView;
## ! aView->AddClipPlane (aPlane->ClipPlane());
## !
## ! aPlane->Display (aView);
## ! aPlane->SetPlane (0, 1, 0, -30);
## ! aView->RemoveClipPlane (aPlane->ClipPlane());
## !
## ! @endcode
## ! Use interface of this class to modify plane equation synchronously
## ! with clipping equation.

type
  V3d_Plane* {.importcpp: "V3d_Plane", header: "V3d_Plane.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## clipping
                                                                                              ## plane
                                                                                              ## from
                                                                                              ## plane
                                                                                              ## coefficients.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Updates
                                                                                              ## the
                                                                                              ## the
                                                                                              ## plane
                                                                                              ## representation.
    ## !< clip plane implementation.


proc constructV3d_Plane*(theA: Standard_Real = 0.0; theB: Standard_Real = 0.0;
                        theC: Standard_Real = 1.0; theD: Standard_Real = 0.0): V3d_Plane {.
    constructor, importcpp: "V3d_Plane(@)", header: "V3d_Plane.hxx".}
proc SetPlane*(this: var V3d_Plane; theA: Standard_Real; theB: Standard_Real;
              theC: Standard_Real; theD: Standard_Real) {.importcpp: "SetPlane",
    header: "V3d_Plane.hxx".}
proc Display*(this: var V3d_Plane; theView: handle[V3d_View];
             theColor: Quantity_Color = Quantity_NOC_GRAY) {.importcpp: "Display",
    header: "V3d_Plane.hxx".}
proc Erase*(this: var V3d_Plane) {.importcpp: "Erase", header: "V3d_Plane.hxx".}
proc Plane*(this: V3d_Plane; theA: var Standard_Real; theB: var Standard_Real;
           theC: var Standard_Real; theD: var Standard_Real) {.noSideEffect,
    importcpp: "Plane", header: "V3d_Plane.hxx".}
proc IsDisplayed*(this: V3d_Plane): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "V3d_Plane.hxx".}
proc ClipPlane*(this: V3d_Plane): handle[Graphic3d_ClipPlane] {.noSideEffect,
    importcpp: "ClipPlane", header: "V3d_Plane.hxx".}
type
  V3d_Planebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "V3d_Plane::get_type_name(@)",
                              header: "V3d_Plane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_Plane::get_type_descriptor(@)", header: "V3d_Plane.hxx".}
proc DynamicType*(this: V3d_Plane): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Plane.hxx".}
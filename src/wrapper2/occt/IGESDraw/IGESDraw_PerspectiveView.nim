##  Created on: 1993-02-03
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../gp/gp_XYZ, ../gp/gp_XY,
  ../IGESData/IGESData_ViewKindEntity, ../Standard/Standard_Boolean

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_XY"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESData_TransfEntity"
discard "forward decl of IGESDraw_PerspectiveView"
discard "forward decl of IGESDraw_PerspectiveView"
type
  Handle_IGESDraw_PerspectiveView* = handle[IGESDraw_PerspectiveView]

## ! defines IGESPerspectiveView, Type <410> Form <1>
## ! in package IGESDraw
## !
## ! Supports a perspective view.
## ! Any geometric projection is defined by a view plane
## ! and the projectors that pass through the view plane.
## ! Projectors can be visualized as rays of light that
## ! form an image by passing through the viewed object
## ! and striking the view plane.
## ! The projectors are defined via a point called the
## ! Centre-of-Projection or the eye-point.
## ! A perspective view is formed by all projectors that
## ! emanate from the Centre-of-Projection and pass
## ! through the view plane.

type
  IGESDraw_PerspectiveView* {.importcpp: "IGESDraw_PerspectiveView",
                             header: "IGESDraw_PerspectiveView.hxx", bycopy.} = object of IGESData_ViewKindEntity


proc constructIGESDraw_PerspectiveView*(): IGESDraw_PerspectiveView {.constructor,
    importcpp: "IGESDraw_PerspectiveView(@)",
    header: "IGESDraw_PerspectiveView.hxx".}
proc Init*(this: var IGESDraw_PerspectiveView; aViewNumber: Standard_Integer;
          aScaleFactor: Standard_Real; aViewNormalVector: gp_XYZ;
          aViewReferencePoint: gp_XYZ; aCenterOfProjection: gp_XYZ;
          aViewUpVector: gp_XYZ; aViewPlaneDistance: Standard_Real; aTopLeft: gp_XY;
          aBottomRight: gp_XY; aDepthClip: Standard_Integer;
          aBackPlaneDistance: Standard_Real; aFrontPlaneDistance: Standard_Real) {.
    importcpp: "Init", header: "IGESDraw_PerspectiveView.hxx".}
proc IsSingle*(this: IGESDraw_PerspectiveView): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_PerspectiveView.hxx".}
proc NbViews*(this: IGESDraw_PerspectiveView): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_PerspectiveView.hxx".}
proc ViewItem*(this: IGESDraw_PerspectiveView; num: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_PerspectiveView.hxx".}
proc ViewNumber*(this: IGESDraw_PerspectiveView): Standard_Integer {.noSideEffect,
    importcpp: "ViewNumber", header: "IGESDraw_PerspectiveView.hxx".}
proc ScaleFactor*(this: IGESDraw_PerspectiveView): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_PerspectiveView.hxx".}
proc ViewNormalVector*(this: IGESDraw_PerspectiveView): gp_Vec {.noSideEffect,
    importcpp: "ViewNormalVector", header: "IGESDraw_PerspectiveView.hxx".}
proc ViewReferencePoint*(this: IGESDraw_PerspectiveView): gp_Pnt {.noSideEffect,
    importcpp: "ViewReferencePoint", header: "IGESDraw_PerspectiveView.hxx".}
proc CenterOfProjection*(this: IGESDraw_PerspectiveView): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfProjection", header: "IGESDraw_PerspectiveView.hxx".}
proc ViewUpVector*(this: IGESDraw_PerspectiveView): gp_Vec {.noSideEffect,
    importcpp: "ViewUpVector", header: "IGESDraw_PerspectiveView.hxx".}
proc ViewPlaneDistance*(this: IGESDraw_PerspectiveView): Standard_Real {.
    noSideEffect, importcpp: "ViewPlaneDistance",
    header: "IGESDraw_PerspectiveView.hxx".}
proc TopLeft*(this: IGESDraw_PerspectiveView): gp_Pnt2d {.noSideEffect,
    importcpp: "TopLeft", header: "IGESDraw_PerspectiveView.hxx".}
proc BottomRight*(this: IGESDraw_PerspectiveView): gp_Pnt2d {.noSideEffect,
    importcpp: "BottomRight", header: "IGESDraw_PerspectiveView.hxx".}
proc DepthClip*(this: IGESDraw_PerspectiveView): Standard_Integer {.noSideEffect,
    importcpp: "DepthClip", header: "IGESDraw_PerspectiveView.hxx".}
proc BackPlaneDistance*(this: IGESDraw_PerspectiveView): Standard_Real {.
    noSideEffect, importcpp: "BackPlaneDistance",
    header: "IGESDraw_PerspectiveView.hxx".}
proc FrontPlaneDistance*(this: IGESDraw_PerspectiveView): Standard_Real {.
    noSideEffect, importcpp: "FrontPlaneDistance",
    header: "IGESDraw_PerspectiveView.hxx".}
proc ViewMatrix*(this: IGESDraw_PerspectiveView): handle[IGESData_TransfEntity] {.
    noSideEffect, importcpp: "ViewMatrix", header: "IGESDraw_PerspectiveView.hxx".}
proc ModelToView*(this: IGESDraw_PerspectiveView; coords: gp_XYZ): gp_XYZ {.
    noSideEffect, importcpp: "ModelToView", header: "IGESDraw_PerspectiveView.hxx".}
type
  IGESDraw_PerspectiveViewbase_type* = IGESData_ViewKindEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_PerspectiveView::get_type_name(@)",
                              header: "IGESDraw_PerspectiveView.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_PerspectiveView::get_type_descriptor(@)",
    header: "IGESDraw_PerspectiveView.hxx".}
proc DynamicType*(this: IGESDraw_PerspectiveView): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_PerspectiveView.hxx".}
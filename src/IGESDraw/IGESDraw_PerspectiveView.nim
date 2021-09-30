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
  HandleC1C1* = Handle[IGESDrawPerspectiveView]

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
  IGESDrawPerspectiveView* {.importcpp: "IGESDraw_PerspectiveView",
                            header: "IGESDraw_PerspectiveView.hxx", bycopy.} = object of IGESDataViewKindEntity


proc constructIGESDrawPerspectiveView*(): IGESDrawPerspectiveView {.constructor,
    importcpp: "IGESDraw_PerspectiveView(@)",
    header: "IGESDraw_PerspectiveView.hxx".}
proc init*(this: var IGESDrawPerspectiveView; aViewNumber: cint; aScaleFactor: cfloat;
          aViewNormalVector: Xyz; aViewReferencePoint: Xyz;
          aCenterOfProjection: Xyz; aViewUpVector: Xyz; aViewPlaneDistance: cfloat;
          aTopLeft: Xy; aBottomRight: Xy; aDepthClip: cint;
          aBackPlaneDistance: cfloat; aFrontPlaneDistance: cfloat) {.
    importcpp: "Init", header: "IGESDraw_PerspectiveView.hxx".}
proc isSingle*(this: IGESDrawPerspectiveView): bool {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_PerspectiveView.hxx".}
proc nbViews*(this: IGESDrawPerspectiveView): cint {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_PerspectiveView.hxx".}
proc viewItem*(this: IGESDrawPerspectiveView; num: cint): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_PerspectiveView.hxx".}
proc viewNumber*(this: IGESDrawPerspectiveView): cint {.noSideEffect,
    importcpp: "ViewNumber", header: "IGESDraw_PerspectiveView.hxx".}
proc scaleFactor*(this: IGESDrawPerspectiveView): cfloat {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_PerspectiveView.hxx".}
proc viewNormalVector*(this: IGESDrawPerspectiveView): Vec {.noSideEffect,
    importcpp: "ViewNormalVector", header: "IGESDraw_PerspectiveView.hxx".}
proc viewReferencePoint*(this: IGESDrawPerspectiveView): Pnt {.noSideEffect,
    importcpp: "ViewReferencePoint", header: "IGESDraw_PerspectiveView.hxx".}
proc centerOfProjection*(this: IGESDrawPerspectiveView): Pnt {.noSideEffect,
    importcpp: "CenterOfProjection", header: "IGESDraw_PerspectiveView.hxx".}
proc viewUpVector*(this: IGESDrawPerspectiveView): Vec {.noSideEffect,
    importcpp: "ViewUpVector", header: "IGESDraw_PerspectiveView.hxx".}
proc viewPlaneDistance*(this: IGESDrawPerspectiveView): cfloat {.noSideEffect,
    importcpp: "ViewPlaneDistance", header: "IGESDraw_PerspectiveView.hxx".}
proc topLeft*(this: IGESDrawPerspectiveView): Pnt2d {.noSideEffect,
    importcpp: "TopLeft", header: "IGESDraw_PerspectiveView.hxx".}
proc bottomRight*(this: IGESDrawPerspectiveView): Pnt2d {.noSideEffect,
    importcpp: "BottomRight", header: "IGESDraw_PerspectiveView.hxx".}
proc depthClip*(this: IGESDrawPerspectiveView): cint {.noSideEffect,
    importcpp: "DepthClip", header: "IGESDraw_PerspectiveView.hxx".}
proc backPlaneDistance*(this: IGESDrawPerspectiveView): cfloat {.noSideEffect,
    importcpp: "BackPlaneDistance", header: "IGESDraw_PerspectiveView.hxx".}
proc frontPlaneDistance*(this: IGESDrawPerspectiveView): cfloat {.noSideEffect,
    importcpp: "FrontPlaneDistance", header: "IGESDraw_PerspectiveView.hxx".}
proc viewMatrix*(this: IGESDrawPerspectiveView): Handle[IGESDataTransfEntity] {.
    noSideEffect, importcpp: "ViewMatrix", header: "IGESDraw_PerspectiveView.hxx".}
proc modelToView*(this: IGESDrawPerspectiveView; coords: Xyz): Xyz {.noSideEffect,
    importcpp: "ModelToView", header: "IGESDraw_PerspectiveView.hxx".}
type
  IGESDrawPerspectiveViewbaseType* = IGESDataViewKindEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_PerspectiveView::get_type_name(@)",
                            header: "IGESDraw_PerspectiveView.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_PerspectiveView::get_type_descriptor(@)",
    header: "IGESDraw_PerspectiveView.hxx".}
proc dynamicType*(this: IGESDrawPerspectiveView): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_PerspectiveView.hxx".}


























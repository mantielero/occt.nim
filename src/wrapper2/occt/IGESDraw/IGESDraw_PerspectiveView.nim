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
  HandleIGESDrawPerspectiveView* = Handle[IGESDrawPerspectiveView]

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
proc init*(this: var IGESDrawPerspectiveView; aViewNumber: StandardInteger;
          aScaleFactor: StandardReal; aViewNormalVector: GpXYZ;
          aViewReferencePoint: GpXYZ; aCenterOfProjection: GpXYZ;
          aViewUpVector: GpXYZ; aViewPlaneDistance: StandardReal; aTopLeft: GpXY;
          aBottomRight: GpXY; aDepthClip: StandardInteger;
          aBackPlaneDistance: StandardReal; aFrontPlaneDistance: StandardReal) {.
    importcpp: "Init", header: "IGESDraw_PerspectiveView.hxx".}
proc isSingle*(this: IGESDrawPerspectiveView): StandardBoolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_PerspectiveView.hxx".}
proc nbViews*(this: IGESDrawPerspectiveView): StandardInteger {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_PerspectiveView.hxx".}
proc viewItem*(this: IGESDrawPerspectiveView; num: StandardInteger): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_PerspectiveView.hxx".}
proc viewNumber*(this: IGESDrawPerspectiveView): StandardInteger {.noSideEffect,
    importcpp: "ViewNumber", header: "IGESDraw_PerspectiveView.hxx".}
proc scaleFactor*(this: IGESDrawPerspectiveView): StandardReal {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESDraw_PerspectiveView.hxx".}
proc viewNormalVector*(this: IGESDrawPerspectiveView): GpVec {.noSideEffect,
    importcpp: "ViewNormalVector", header: "IGESDraw_PerspectiveView.hxx".}
proc viewReferencePoint*(this: IGESDrawPerspectiveView): GpPnt {.noSideEffect,
    importcpp: "ViewReferencePoint", header: "IGESDraw_PerspectiveView.hxx".}
proc centerOfProjection*(this: IGESDrawPerspectiveView): GpPnt {.noSideEffect,
    importcpp: "CenterOfProjection", header: "IGESDraw_PerspectiveView.hxx".}
proc viewUpVector*(this: IGESDrawPerspectiveView): GpVec {.noSideEffect,
    importcpp: "ViewUpVector", header: "IGESDraw_PerspectiveView.hxx".}
proc viewPlaneDistance*(this: IGESDrawPerspectiveView): StandardReal {.noSideEffect,
    importcpp: "ViewPlaneDistance", header: "IGESDraw_PerspectiveView.hxx".}
proc topLeft*(this: IGESDrawPerspectiveView): GpPnt2d {.noSideEffect,
    importcpp: "TopLeft", header: "IGESDraw_PerspectiveView.hxx".}
proc bottomRight*(this: IGESDrawPerspectiveView): GpPnt2d {.noSideEffect,
    importcpp: "BottomRight", header: "IGESDraw_PerspectiveView.hxx".}
proc depthClip*(this: IGESDrawPerspectiveView): StandardInteger {.noSideEffect,
    importcpp: "DepthClip", header: "IGESDraw_PerspectiveView.hxx".}
proc backPlaneDistance*(this: IGESDrawPerspectiveView): StandardReal {.noSideEffect,
    importcpp: "BackPlaneDistance", header: "IGESDraw_PerspectiveView.hxx".}
proc frontPlaneDistance*(this: IGESDrawPerspectiveView): StandardReal {.
    noSideEffect, importcpp: "FrontPlaneDistance",
    header: "IGESDraw_PerspectiveView.hxx".}
proc viewMatrix*(this: IGESDrawPerspectiveView): Handle[IGESDataTransfEntity] {.
    noSideEffect, importcpp: "ViewMatrix", header: "IGESDraw_PerspectiveView.hxx".}
proc modelToView*(this: IGESDrawPerspectiveView; coords: GpXYZ): GpXYZ {.noSideEffect,
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


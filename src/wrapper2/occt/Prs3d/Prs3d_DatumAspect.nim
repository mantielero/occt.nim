##  Created on: 1993-07-30
##  Created by: Jean-Louis FRENKEL
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

## ! A framework to define the display of datums.

type
  Prs3dDatumAspect* {.importcpp: "Prs3d_DatumAspect",
                     header: "Prs3d_DatumAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## An
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## to
                                                                                     ## define
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## datums.

  Prs3dDatumAspectbaseType* = Prs3dBasicAspect

proc getTypeName*(): cstring {.importcpp: "Prs3d_DatumAspect::get_type_name(@)",
                            header: "Prs3d_DatumAspect.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Prs3d_DatumAspect::get_type_descriptor(@)",
    header: "Prs3d_DatumAspect.hxx".}
proc dynamicType*(this: Prs3dDatumAspect): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_DatumAspect.hxx".}
proc constructPrs3dDatumAspect*(): Prs3dDatumAspect {.constructor,
    importcpp: "Prs3d_DatumAspect(@)", header: "Prs3d_DatumAspect.hxx".}
proc lineAspect*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): Handle[
    Prs3dLineAspect] {.noSideEffect, importcpp: "LineAspect",
                      header: "Prs3d_DatumAspect.hxx".}
proc shadingAspect*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): Handle[
    Prs3dShadingAspect] {.noSideEffect, importcpp: "ShadingAspect",
                         header: "Prs3d_DatumAspect.hxx".}
proc textAspect*(this: Prs3dDatumAspect): Handle[Prs3dTextAspect] {.noSideEffect,
    importcpp: "TextAspect", header: "Prs3d_DatumAspect.hxx".}
proc setTextAspect*(this: var Prs3dDatumAspect;
                   theTextAspect: Handle[Prs3dTextAspect]) {.
    importcpp: "SetTextAspect", header: "Prs3d_DatumAspect.hxx".}
proc pointAspect*(this: Prs3dDatumAspect): Handle[Prs3dPointAspect] {.noSideEffect,
    importcpp: "PointAspect", header: "Prs3d_DatumAspect.hxx".}
proc setPointAspect*(this: var Prs3dDatumAspect; theAspect: Handle[Prs3dPointAspect]) {.
    importcpp: "SetPointAspect", header: "Prs3d_DatumAspect.hxx".}
proc arrowAspect*(this: Prs3dDatumAspect): Handle[Prs3dArrowAspect] {.noSideEffect,
    importcpp: "ArrowAspect", header: "Prs3d_DatumAspect.hxx".}
proc setArrowAspect*(this: var Prs3dDatumAspect; theAspect: Handle[Prs3dArrowAspect]) {.
    importcpp: "SetArrowAspect", header: "Prs3d_DatumAspect.hxx".}
## !!!Ignored construct:  ! Returns the attributes for display of the first axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & FirstAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_XAxis ) ; } ! Returns the attributes for display of the second axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & SecondAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_YAxis ) ; } ! Returns the attributes for display of the third axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & ThirdAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_ZAxis ) ; } ! Sets the DrawFirstAndSecondAxis attributes to active. Standard_DEPRECATED ( This method is deprecated - SetDrawDatumAxes() should be called instead ) void SetDrawFirstAndSecondAxis ( Standard_Boolean theToDraw ) ;
## Error: identifier expected, but got: This method is deprecated - LineAspect() should be called instead!!!

## !!!Ignored construct:  ! Returns true if the first and second axes can be drawn. Standard_DEPRECATED ( This method is deprecated - DatumAxes() should be called instead ) Standard_Boolean DrawFirstAndSecondAxis ( ) const { return ( myAxes & Prs3d_DA_XAxis ) != 0 && ( myAxes & Prs3d_DA_YAxis ) != 0 ; } ! Sets the DrawThirdAxis attributes to active. Standard_DEPRECATED ( This method is deprecated - SetDrawDatumAxes() should be called instead ) void SetDrawThirdAxis ( Standard_Boolean theToDraw ) ;
## Error: identifier expected, but got: This method is deprecated - DatumAxes() should be called instead!!!

## !!!Ignored construct:  ! Returns true if the third axis can be drawn. Standard_DEPRECATED ( This method is deprecated - DatumAxes() should be called instead ) Standard_Boolean DrawThirdAxis ( ) const { return ( myAxes & Prs3d_DA_ZAxis ) != 0 ; } ! Returns true if the given part is used in axes of aspect Standard_Boolean DrawDatumPart ( Prs3d_DatumParts thePart ) const ;
## Error: identifier expected, but got: This method is deprecated - DatumAxes() should be called instead!!!

proc setDrawDatumAxes*(this: var Prs3dDatumAspect; theType: Prs3dDatumAxes) {.
    importcpp: "SetDrawDatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc datumAxes*(this: Prs3dDatumAspect): Prs3dDatumAxes {.noSideEffect,
    importcpp: "DatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc setAttribute*(this: var Prs3dDatumAspect; theType: Prs3dDatumAttribute;
                  theValue: StandardReal) {.importcpp: "SetAttribute",
    header: "Prs3d_DatumAspect.hxx".}
proc attribute*(this: Prs3dDatumAspect; theType: Prs3dDatumAttribute): StandardReal {.
    noSideEffect, importcpp: "Attribute", header: "Prs3d_DatumAspect.hxx".}
proc setAxisLength*(this: var Prs3dDatumAspect; theL1: StandardReal;
                   theL2: StandardReal; theL3: StandardReal) {.
    importcpp: "SetAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc axisLength*(this: Prs3dDatumAspect; thePart: Prs3dDatumParts): StandardReal {.
    noSideEffect, importcpp: "AxisLength", header: "Prs3d_DatumAspect.hxx".}
## !!!Ignored construct:  ! Returns the length of the displayed first axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real FirstAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_XAxisLength ) ; } ! Returns the length of the displayed second axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real SecondAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_YAxisLength ) ; } ! Returns the length of the displayed third axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real ThirdAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_ZAxisLength ) ; } ! @return true if axes labels are drawn; TRUE by default. Standard_Boolean ToDrawLabels ( ) const { return myToDrawLabels ; } ! Sets option to draw or not to draw text labels for axes void SetDrawLabels ( Standard_Boolean theToDraw ) { myToDrawLabels = theToDraw ; } void SetToDrawLabels ( Standard_Boolean theToDraw ) { myToDrawLabels = theToDraw ; } ! @return true if axes arrows are drawn; TRUE by default. Standard_Boolean ToDrawArrows ( ) const { return myToDrawArrows ; } ! Sets option to draw or not arrows for axes void SetDrawArrows ( Standard_Boolean theToDraw ) { myToDrawArrows = theToDraw ; } ! Returns type of arrow for a type of axis Prs3d_DatumParts ArrowPartForAxis ( Prs3d_DatumParts thePart ) const ;
## Error: identifier expected, but got: This method is deprecated - AxisLength() should be called instead!!!

proc dumpJson*(this: Prs3dDatumAspect; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_DatumAspect.hxx".}
discard "forward decl of Prs3d_DatumAspect"
type
  HandlePrs3dDatumAspect* = Handle[Prs3dDatumAspect]



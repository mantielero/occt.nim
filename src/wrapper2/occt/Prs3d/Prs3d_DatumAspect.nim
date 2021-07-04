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

import
  ../NCollection/NCollection_DataMap, Prs3d_ArrowAspect, Prs3d_DatumAttribute,
  Prs3d_DatumAxes, Prs3d_DatumMode, Prs3d_DatumParts, Prs3d_LineAspect,
  Prs3d_PointAspect, Prs3d_ShadingAspect, Prs3d_TextAspect

## ! A framework to define the display of datums.

type
  Prs3d_DatumAspect* {.importcpp: "Prs3d_DatumAspect",
                      header: "Prs3d_DatumAspect.hxx", bycopy.} = object of Prs3d_BasicAspect ##
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

  Prs3d_DatumAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_DatumAspect::get_type_name(@)",
                              header: "Prs3d_DatumAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_DatumAspect::get_type_descriptor(@)",
    header: "Prs3d_DatumAspect.hxx".}
proc DynamicType*(this: Prs3d_DatumAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_DatumAspect.hxx".}
proc constructPrs3d_DatumAspect*(): Prs3d_DatumAspect {.constructor,
    importcpp: "Prs3d_DatumAspect(@)", header: "Prs3d_DatumAspect.hxx".}
proc LineAspect*(this: Prs3d_DatumAspect; thePart: Prs3d_DatumParts): handle[
    Prs3d_LineAspect] {.noSideEffect, importcpp: "LineAspect",
                       header: "Prs3d_DatumAspect.hxx".}
proc ShadingAspect*(this: Prs3d_DatumAspect; thePart: Prs3d_DatumParts): handle[
    Prs3d_ShadingAspect] {.noSideEffect, importcpp: "ShadingAspect",
                          header: "Prs3d_DatumAspect.hxx".}
proc TextAspect*(this: Prs3d_DatumAspect): handle[Prs3d_TextAspect] {.noSideEffect,
    importcpp: "TextAspect", header: "Prs3d_DatumAspect.hxx".}
proc SetTextAspect*(this: var Prs3d_DatumAspect;
                   theTextAspect: handle[Prs3d_TextAspect]) {.
    importcpp: "SetTextAspect", header: "Prs3d_DatumAspect.hxx".}
proc PointAspect*(this: Prs3d_DatumAspect): handle[Prs3d_PointAspect] {.
    noSideEffect, importcpp: "PointAspect", header: "Prs3d_DatumAspect.hxx".}
proc SetPointAspect*(this: var Prs3d_DatumAspect;
                    theAspect: handle[Prs3d_PointAspect]) {.
    importcpp: "SetPointAspect", header: "Prs3d_DatumAspect.hxx".}
proc ArrowAspect*(this: Prs3d_DatumAspect): handle[Prs3d_ArrowAspect] {.
    noSideEffect, importcpp: "ArrowAspect", header: "Prs3d_DatumAspect.hxx".}
proc SetArrowAspect*(this: var Prs3d_DatumAspect;
                    theAspect: handle[Prs3d_ArrowAspect]) {.
    importcpp: "SetArrowAspect", header: "Prs3d_DatumAspect.hxx".}
## !!!Ignored construct:  ! Returns the attributes for display of the first axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & FirstAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_XAxis ) ; } ! Returns the attributes for display of the second axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & SecondAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_YAxis ) ; } ! Returns the attributes for display of the third axis. Standard_DEPRECATED ( This method is deprecated - LineAspect() should be called instead ) const opencascade :: handle < Prs3d_LineAspect > [end of template] & ThirdAxisAspect ( ) const { return myLineAspects . Find ( Prs3d_DP_ZAxis ) ; } ! Sets the DrawFirstAndSecondAxis attributes to active. Standard_DEPRECATED ( This method is deprecated - SetDrawDatumAxes() should be called instead ) void SetDrawFirstAndSecondAxis ( Standard_Boolean theToDraw ) ;
## Error: identifier expected, but got: This method is deprecated - LineAspect() should be called instead!!!

## !!!Ignored construct:  ! Returns true if the first and second axes can be drawn. Standard_DEPRECATED ( This method is deprecated - DatumAxes() should be called instead ) Standard_Boolean DrawFirstAndSecondAxis ( ) const { return ( myAxes & Prs3d_DA_XAxis ) != 0 && ( myAxes & Prs3d_DA_YAxis ) != 0 ; } ! Sets the DrawThirdAxis attributes to active. Standard_DEPRECATED ( This method is deprecated - SetDrawDatumAxes() should be called instead ) void SetDrawThirdAxis ( Standard_Boolean theToDraw ) ;
## Error: identifier expected, but got: This method is deprecated - DatumAxes() should be called instead!!!

## !!!Ignored construct:  ! Returns true if the third axis can be drawn. Standard_DEPRECATED ( This method is deprecated - DatumAxes() should be called instead ) Standard_Boolean DrawThirdAxis ( ) const { return ( myAxes & Prs3d_DA_ZAxis ) != 0 ; } ! Returns true if the given part is used in axes of aspect Standard_Boolean DrawDatumPart ( Prs3d_DatumParts thePart ) const ;
## Error: identifier expected, but got: This method is deprecated - DatumAxes() should be called instead!!!

proc SetDrawDatumAxes*(this: var Prs3d_DatumAspect; theType: Prs3d_DatumAxes) {.
    importcpp: "SetDrawDatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc DatumAxes*(this: Prs3d_DatumAspect): Prs3d_DatumAxes {.noSideEffect,
    importcpp: "DatumAxes", header: "Prs3d_DatumAspect.hxx".}
proc SetAttribute*(this: var Prs3d_DatumAspect; theType: Prs3d_DatumAttribute;
                  theValue: Standard_Real) {.importcpp: "SetAttribute",
    header: "Prs3d_DatumAspect.hxx".}
proc Attribute*(this: Prs3d_DatumAspect; theType: Prs3d_DatumAttribute): Standard_Real {.
    noSideEffect, importcpp: "Attribute", header: "Prs3d_DatumAspect.hxx".}
proc SetAxisLength*(this: var Prs3d_DatumAspect; theL1: Standard_Real;
                   theL2: Standard_Real; theL3: Standard_Real) {.
    importcpp: "SetAxisLength", header: "Prs3d_DatumAspect.hxx".}
proc AxisLength*(this: Prs3d_DatumAspect; thePart: Prs3d_DatumParts): Standard_Real {.
    noSideEffect, importcpp: "AxisLength", header: "Prs3d_DatumAspect.hxx".}
## !!!Ignored construct:  ! Returns the length of the displayed first axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real FirstAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_XAxisLength ) ; } ! Returns the length of the displayed second axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real SecondAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_YAxisLength ) ; } ! Returns the length of the displayed third axis. Standard_DEPRECATED ( This method is deprecated - AxisLength() should be called instead ) Standard_Real ThirdAxisLength ( ) const { return myAttributes . Find ( Prs3d_DA_ZAxisLength ) ; } ! @return true if axes labels are drawn; TRUE by default. Standard_Boolean ToDrawLabels ( ) const { return myToDrawLabels ; } ! Sets option to draw or not to draw text labels for axes void SetDrawLabels ( Standard_Boolean theToDraw ) { myToDrawLabels = theToDraw ; } void SetToDrawLabels ( Standard_Boolean theToDraw ) { myToDrawLabels = theToDraw ; } ! @return true if axes arrows are drawn; TRUE by default. Standard_Boolean ToDrawArrows ( ) const { return myToDrawArrows ; } ! Sets option to draw or not arrows for axes void SetDrawArrows ( Standard_Boolean theToDraw ) { myToDrawArrows = theToDraw ; } ! Returns type of arrow for a type of axis Prs3d_DatumParts ArrowPartForAxis ( Prs3d_DatumParts thePart ) const ;
## Error: identifier expected, but got: This method is deprecated - AxisLength() should be called instead!!!

proc DumpJson*(this: Prs3d_DatumAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_DatumAspect.hxx".}
discard "forward decl of Prs3d_DatumAspect"
type
  Handle_Prs3d_DatumAspect* = handle[Prs3d_DatumAspect]

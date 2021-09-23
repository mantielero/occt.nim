##  Created on: 1991-09-06
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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
  Graphic3d_BndBox4f, Graphic3d_AspectLine3d, Graphic3d_AspectFillArea3d,
  Graphic3d_AspectText3d, Graphic3d_AspectMarker3d,
  Graphic3d_MapOfAspectsToAspects, ../Standard/Standard_CString, Graphic3d_Vertex,
  Graphic3d_TextPath, Graphic3d_HorizontalTextAlignment,
  Graphic3d_VerticalTextAlignment, Graphic3d_TypeOfPrimitiveArray,
  Graphic3d_IndexBuffer, Graphic3d_Buffer, Graphic3d_BoundBuffer, ../gp/gp_Ax2,
  ../TCollection/TCollection_ExtendedString

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_ArrayOfPrimitives"
discard "forward decl of Graphic3d_Text"
type
  Graphic3d_Group* {.importcpp: "Graphic3d_Group", header: "Graphic3d_Group.hxx",
                    bycopy.} = object of Standard_Transient ## ! Supress all primitives and attributes of <me>.
                                                       ## ! To clear group without update in
                                                       ## Graphic3d_StructureManager
                                                       ## ! pass Standard_False as <theUpdateStructureMgr>. This
                                                       ## ! used on context and viewer destruction, when the pointer
                                                       ## ! to structure manager in Graphic3d_Structure could be
                                                       ## ! already released (pointers are used here to avoid handle
                                                       ## ! cross-reference);
                                                       ## ! Return fill area aspect.
                                                       ## ! sets the stencil test to theIsEnabled state;
                                                       ## ! Creates the string <AText> at position <APoint>.
                                                       ## ! The 3D point of attachment is projected. The text is
                                                       ## ! written in the plane of projection.
                                                       ## ! The attributes are given with respect to the plane of
                                                       ## ! projection.
                                                       ## ! AHeight : Height of text.
                                                       ## ! (Relative to the Normalized Projection
                                                       ## ! Coordinates (NPC) Space).
                                                       ## ! AAngle  : Orientation of the text
                                                       ## ! (with respect to the horizontal).
                                                       ## ! Creates a group in the structure <AStructure>.
    ## !< pointer to the parent structure
    ## !< bounding box
    ## !< flag indicating closed volume
    ## !< flag indicating that this group contains face primitives

  Graphic3d_Groupbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Group::get_type_name(@)",
                              header: "Graphic3d_Group.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Group::get_type_descriptor(@)",
    header: "Graphic3d_Group.hxx".}
proc DynamicType*(this: Graphic3d_Group): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Group.hxx".}
proc Clear*(this: var Graphic3d_Group;
           theUpdateStructureMgr: Standard_Boolean = Standard_True) {.
    importcpp: "Clear", header: "Graphic3d_Group.hxx".}
proc destroyGraphic3d_Group*(this: var Graphic3d_Group) {.
    importcpp: "#.~Graphic3d_Group()", header: "Graphic3d_Group.hxx".}
proc Remove*(this: var Graphic3d_Group) {.importcpp: "Remove",
                                      header: "Graphic3d_Group.hxx".}
proc Aspects*(this: Graphic3d_Group): handle[Graphic3d_Aspects] {.noSideEffect,
    importcpp: "Aspects", header: "Graphic3d_Group.hxx".}
proc SetGroupPrimitivesAspect*(this: var Graphic3d_Group;
                              theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "SetGroupPrimitivesAspect", header: "Graphic3d_Group.hxx".}
proc SetPrimitivesAspect*(this: var Graphic3d_Group;
                         theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "SetPrimitivesAspect", header: "Graphic3d_Group.hxx".}
proc SynchronizeAspects*(this: var Graphic3d_Group) {.
    importcpp: "SynchronizeAspects", header: "Graphic3d_Group.hxx".}
proc ReplaceAspects*(this: var Graphic3d_Group;
                    theMap: Graphic3d_MapOfAspectsToAspects) {.
    importcpp: "ReplaceAspects", header: "Graphic3d_Group.hxx".}
proc AddText*(this: var Graphic3d_Group; theTextParams: handle[Graphic3d_Text];
             theToEvalMinMax: Standard_Boolean = Standard_True) {.
    importcpp: "AddText", header: "Graphic3d_Group.hxx".}
proc AddPrimitiveArray*(this: var Graphic3d_Group;
                       theType: Graphic3d_TypeOfPrimitiveArray;
                       theIndices: handle[Graphic3d_IndexBuffer];
                       theAttribs: handle[Graphic3d_Buffer];
                       theBounds: handle[Graphic3d_BoundBuffer];
                       theToEvalMinMax: Standard_Boolean = Standard_True) {.
    importcpp: "AddPrimitiveArray", header: "Graphic3d_Group.hxx".}
proc AddPrimitiveArray*(this: var Graphic3d_Group;
                       thePrim: handle[Graphic3d_ArrayOfPrimitives];
                       theToEvalMinMax: Standard_Boolean = Standard_True) {.
    importcpp: "AddPrimitiveArray", header: "Graphic3d_Group.hxx".}
proc Marker*(this: var Graphic3d_Group; thePoint: Graphic3d_Vertex;
            theToEvalMinMax: Standard_Boolean = Standard_True) {.
    importcpp: "Marker", header: "Graphic3d_Group.hxx".}
proc SetStencilTestOptions*(this: var Graphic3d_Group;
                           theIsEnabled: Standard_Boolean) {.
    importcpp: "SetStencilTestOptions", header: "Graphic3d_Group.hxx".}
proc SetFlippingOptions*(this: var Graphic3d_Group; theIsEnabled: Standard_Boolean;
                        theRefPlane: gp_Ax2) {.importcpp: "SetFlippingOptions",
    header: "Graphic3d_Group.hxx".}
proc ContainsFacet*(this: Graphic3d_Group): bool {.noSideEffect,
    importcpp: "ContainsFacet", header: "Graphic3d_Group.hxx".}
proc IsDeleted*(this: Graphic3d_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsDeleted", header: "Graphic3d_Group.hxx".}
proc IsEmpty*(this: Graphic3d_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_Group.hxx".}
proc MinMaxValues*(this: Graphic3d_Group; theXMin: var Standard_Real;
                  theYMin: var Standard_Real; theZMin: var Standard_Real;
                  theXMax: var Standard_Real; theYMax: var Standard_Real;
                  theZMax: var Standard_Real) {.noSideEffect,
    importcpp: "MinMaxValues", header: "Graphic3d_Group.hxx".}
proc SetMinMaxValues*(this: var Graphic3d_Group; theXMin: Standard_Real;
                     theYMin: Standard_Real; theZMin: Standard_Real;
                     theXMax: Standard_Real; theYMax: Standard_Real;
                     theZMax: Standard_Real) {.importcpp: "SetMinMaxValues",
    header: "Graphic3d_Group.hxx".}
proc BoundingBox*(this: Graphic3d_Group): Graphic3d_BndBox4f {.noSideEffect,
    importcpp: "BoundingBox", header: "Graphic3d_Group.hxx".}
proc ChangeBoundingBox*(this: var Graphic3d_Group): var Graphic3d_BndBox4f {.
    importcpp: "ChangeBoundingBox", header: "Graphic3d_Group.hxx".}
proc Structure*(this: Graphic3d_Group): handle[Graphic3d_Structure] {.noSideEffect,
    importcpp: "Structure", header: "Graphic3d_Group.hxx".}
proc SetClosed*(this: var Graphic3d_Group; theIsClosed: bool) {.
    importcpp: "SetClosed", header: "Graphic3d_Group.hxx".}
proc IsClosed*(this: Graphic3d_Group): bool {.noSideEffect, importcpp: "IsClosed",
    header: "Graphic3d_Group.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! AAngle  : Orientation of the text
## ! (with respect to the horizontal). Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const Standard_CString AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Real AAngle , const Graphic3d_TextPath ATp , const Graphic3d_HorizontalTextAlignment AHta , const Graphic3d_VerticalTextAlignment AVta , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! The other attributes have the following default values:
## ! AAngle  : PI / 2.
## ! ATp     : TP_RIGHT
## ! AHta    : HTA_LEFT
## ! AVta    : VTA_BOTTOM Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const Standard_CString AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! AAngle  : Orientation of the text
## ! (with respect to the horizontal). Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const TCollection_ExtendedString & AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Real AAngle , const Graphic3d_TextPath ATp , const Graphic3d_HorizontalTextAlignment AHta , const Graphic3d_VerticalTextAlignment AVta , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <AText> at position <APoint>.
## ! The 3D point of attachment is projected. The text is
## ! written in the plane of projection.
## ! The attributes are given with respect to the plane of
## ! projection.
## ! AHeight : Height of text.
## ! (Relative to the Normalized Projection
## ! Coordinates (NPC) Space).
## ! The other attributes have the following default values:
## ! AAngle  : PI / 2.
## ! ATp     : TP_RIGHT
## ! AHta    : HTA_LEFT
## ! AVta    : VTA_BOTTOM Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) void Text ( const TCollection_ExtendedString & AText , const Graphic3d_Vertex & APoint , const Standard_Real AHeight , const Standard_Boolean EvalMinMax = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <theText> at orientation <theOrientation> in 3D space. Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const Standard_CString theTextUtf , const gp_Ax2 & theOrientation , const Standard_Real theHeight , const Standard_Real theAngle , const Graphic3d_TextPath theTp , const Graphic3d_HorizontalTextAlignment theHTA , const Graphic3d_VerticalTextAlignment theVTA , const Standard_Boolean theToEvalMinMax = Standard_True , const Standard_Boolean theHasOwnAnchor = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

## !!!Ignored construct:  ! Creates the string <theText> at orientation <theOrientation> in 3D space. Standard_DEPRECATED ( Deprecated method Text() with obsolete arguments, use AddText() instead of it ) virtual void Text ( const TCollection_ExtendedString & theText , const gp_Ax2 & theOrientation , const Standard_Real theHeight , const Standard_Real theAngle , const Graphic3d_TextPath theTp , const Graphic3d_HorizontalTextAlignment theHTA , const Graphic3d_VerticalTextAlignment theVTA , const Standard_Boolean theToEvalMinMax = Standard_True , const Standard_Boolean theHasOwnAnchor = Standard_True ) ;
## Error: identifier expected, but got: Deprecated method Text() with obsolete arguments, use AddText() instead of it!!!

proc DumpJson*(this: Graphic3d_Group; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Group.hxx".}
discard "forward decl of Graphic3d_Group"
type
  Handle_Graphic3d_Group* = handle[Graphic3d_Group]

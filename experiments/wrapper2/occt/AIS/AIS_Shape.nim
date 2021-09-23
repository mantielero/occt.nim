##  Created on: 1996-12-20
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
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
  AIS_InteractiveObject, ../Bnd/Bnd_Box, ../TopoDS/TopoDS_Shape,
  ../Prs3d/Prs3d_Drawer, ../Prs3d/Prs3d_TypeOfHLR

## ! A framework to manage presentation and selection of shapes.
## ! AIS_Shape is the interactive object which is used the
## ! most by   applications. There are standard functions
## ! available which allow you to prepare selection
## ! operations on the constituent elements of shapes -
## ! vertices, edges, faces etc - in an open local context.
## ! The selection modes specific to "Shape" type objects
## ! are referred to as Standard Activation Mode. These
## ! modes are only taken into account in open local
## ! context and only act on Interactive Objects which
## ! have redefined the virtual method
## ! AcceptShapeDecomposition so that it returns true.
## ! Several advanced functions are also available. These
## ! include functions to manage deviation angle and
## ! deviation coefficient - both HLR and non-HLR - of
## ! an inheriting shape class. These services allow you to
## ! select one type of shape interactive object for higher
## ! precision drawing. When you do this, the
## ! Prs3d_Drawer::IsOwn... functions corresponding to the
## ! above deviation angle and coefficient functions return
## ! true indicating that there is a local setting available
## ! for the specific object.
## !
## ! This class allows to map textures on shapes using native UV parametric space of underlying surface of each Face
## ! (this means that texture will be visually duplicated on all Faces).
## ! To generate texture coordinates, appropriate shading attribute should be set before computing presentation in AIS_Shaded display mode:
## ! @code
## !   Handle(AIS_Shape) aPrs = new AIS_Shape();
## !   aPrs->Attributes()->SetupOwnShadingAspect();
## !   aPrs->Attributes()->ShadingAspect()->Aspect()->SetTextureMapOn();
## !   aPrs->Attributes()->ShadingAspect()->Aspect()->SetTextureMap (new Graphic3d_Texture2Dmanual (Graphic3d_NOT_2D_ALUMINUM));
## ! @endcode
## ! The texture itself is parametrized in (0,1)x(0,1).

type
  AIS_Shape* {.importcpp: "AIS_Shape", header: "AIS_Shape.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## construction
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## shape
                                                                                                 ## shap
                                                                                                 ## from
                                                                                                 ## wires,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## edges
                                                                                                 ## and
                                                                                                 ## vertices.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## methods
                                                                                                 ## to
                                                                                                 ## alter
                                                                                                 ## texture
                                                                                                 ## mapping
                                                                                                 ## properties
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Return
                                                                                                 ## texture
                                                                                                 ## repeat
                                                                                                 ## UV
                                                                                                 ## values;
                                                                                                 ## (1,
                                                                                                 ## 1)
                                                                                                 ## by
                                                                                                 ## default.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Compute
                                                                                                 ## normal
                                                                                                 ## presentation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Compute
                                                                                                 ## HLR
                                                                                                 ## presentation
                                                                                                 ## for
                                                                                                 ## specified
                                                                                                 ## shape.
    ## !< shape to display
    ## !< cached bounding box of the shape
    ## !< UV origin vector for generating texture coordinates
    ## !< UV repeat vector for generating texture coordinates
    ## !< UV scale  vector for generating texture coordinates
    ## !< if TRUE, then bounding box should be recomputed

  AIS_Shapebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Shape::get_type_name(@)",
                              header: "AIS_Shape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Shape::get_type_descriptor(@)", header: "AIS_Shape.hxx".}
proc DynamicType*(this: AIS_Shape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Shape.hxx".}
proc constructAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.constructor,
    importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}
proc Signature*(this: AIS_Shape): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Shape.hxx".}
proc Type*(this: AIS_Shape): AIS_KindOfInteractive {.noSideEffect, importcpp: "Type",
    header: "AIS_Shape.hxx".}
proc AcceptShapeDecomposition*(this: AIS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "AcceptShapeDecomposition", header: "AIS_Shape.hxx".}
proc AcceptDisplayMode*(this: AIS_Shape; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_Shape.hxx".}
proc Shape*(this: AIS_Shape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "AIS_Shape.hxx".}
proc SetShape*(this: var AIS_Shape; theShape: TopoDS_Shape) {.importcpp: "SetShape",
    header: "AIS_Shape.hxx".}
proc Set*(this: var AIS_Shape; theShape: TopoDS_Shape) {.importcpp: "Set",
    header: "AIS_Shape.hxx".}
proc SetOwnDeviationCoefficient*(this: var AIS_Shape): Standard_Boolean {.
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc SetOwnDeviationAngle*(this: var AIS_Shape): Standard_Boolean {.
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc SetOwnDeviationCoefficient*(this: var AIS_Shape; aCoefficient: Standard_Real) {.
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc SetAngleAndDeviation*(this: var AIS_Shape; anAngle: Standard_Real) {.
    importcpp: "SetAngleAndDeviation", header: "AIS_Shape.hxx".}
proc UserAngle*(this: AIS_Shape): Standard_Real {.noSideEffect,
    importcpp: "UserAngle", header: "AIS_Shape.hxx".}
proc SetOwnDeviationAngle*(this: var AIS_Shape; anAngle: Standard_Real) {.
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc OwnDeviationCoefficient*(this: AIS_Shape; aCoefficient: var Standard_Real;
                             aPreviousCoefficient: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "OwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc OwnDeviationAngle*(this: AIS_Shape; anAngle: var Standard_Real;
                       aPreviousAngle: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "OwnDeviationAngle", header: "AIS_Shape.hxx".}
proc SetTypeOfHLR*(this: var AIS_Shape; theTypeOfHLR: Prs3d_TypeOfHLR) {.
    importcpp: "SetTypeOfHLR", header: "AIS_Shape.hxx".}
proc TypeOfHLR*(this: AIS_Shape): Prs3d_TypeOfHLR {.noSideEffect,
    importcpp: "TypeOfHLR", header: "AIS_Shape.hxx".}
proc SetColor*(this: var AIS_Shape; theColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Shape.hxx".}
proc UnsetColor*(this: var AIS_Shape) {.importcpp: "UnsetColor",
                                    header: "AIS_Shape.hxx".}
proc SetWidth*(this: var AIS_Shape; aValue: Standard_Real) {.importcpp: "SetWidth",
    header: "AIS_Shape.hxx".}
proc UnsetWidth*(this: var AIS_Shape) {.importcpp: "UnsetWidth",
                                    header: "AIS_Shape.hxx".}
proc SetMaterial*(this: var AIS_Shape; aName: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_Shape.hxx".}
proc UnsetMaterial*(this: var AIS_Shape) {.importcpp: "UnsetMaterial",
                                       header: "AIS_Shape.hxx".}
proc SetTransparency*(this: var AIS_Shape; aValue: Standard_Real = 0.6) {.
    importcpp: "SetTransparency", header: "AIS_Shape.hxx".}
proc UnsetTransparency*(this: var AIS_Shape) {.importcpp: "UnsetTransparency",
    header: "AIS_Shape.hxx".}
proc BoundingBox*(this: var AIS_Shape): Bnd_Box {.importcpp: "BoundingBox",
    header: "AIS_Shape.hxx".}
## using statement

proc Color*(this: AIS_Shape; aColor: var Quantity_Color) {.noSideEffect,
    importcpp: "Color", header: "AIS_Shape.hxx".}
proc Material*(this: AIS_Shape): Graphic3d_NameOfMaterial {.noSideEffect,
    importcpp: "Material", header: "AIS_Shape.hxx".}
proc Transparency*(this: AIS_Shape): Standard_Real {.noSideEffect,
    importcpp: "Transparency", header: "AIS_Shape.hxx".}
proc SelectionType*(theSelMode: Standard_Integer): TopAbs_ShapeEnum {.
    importcpp: "AIS_Shape::SelectionType(@)", header: "AIS_Shape.hxx".}
proc SelectionMode*(theShapeType: TopAbs_ShapeEnum): Standard_Integer {.
    importcpp: "AIS_Shape::SelectionMode(@)", header: "AIS_Shape.hxx".}
proc TextureRepeatUV*(this: AIS_Shape): gp_Pnt2d {.noSideEffect,
    importcpp: "TextureRepeatUV", header: "AIS_Shape.hxx".}
proc SetTextureRepeatUV*(this: var AIS_Shape; theRepeatUV: gp_Pnt2d) {.
    importcpp: "SetTextureRepeatUV", header: "AIS_Shape.hxx".}
proc TextureOriginUV*(this: AIS_Shape): gp_Pnt2d {.noSideEffect,
    importcpp: "TextureOriginUV", header: "AIS_Shape.hxx".}
proc SetTextureOriginUV*(this: var AIS_Shape; theOriginUV: gp_Pnt2d) {.
    importcpp: "SetTextureOriginUV", header: "AIS_Shape.hxx".}
proc TextureScaleUV*(this: AIS_Shape): gp_Pnt2d {.noSideEffect,
    importcpp: "TextureScaleUV", header: "AIS_Shape.hxx".}
proc SetTextureScaleUV*(this: var AIS_Shape; theScaleUV: gp_Pnt2d) {.
    importcpp: "SetTextureScaleUV", header: "AIS_Shape.hxx".}
proc computeHlrPresentation*(theProjector: handle[Graphic3d_Camera];
                            thePrs: handle[Prs3d_Presentation];
                            theShape: TopoDS_Shape;
                            theDrawer: handle[Prs3d_Drawer]) {.
    importcpp: "AIS_Shape::computeHlrPresentation(@)", header: "AIS_Shape.hxx".}
proc DumpJson*(this: AIS_Shape; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AIS_Shape.hxx".}
discard "forward decl of AIS_Shape"
type
  Handle_AIS_Shape* = handle[AIS_Shape]

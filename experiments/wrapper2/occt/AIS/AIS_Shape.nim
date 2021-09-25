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

  AIS_ShapebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Shape::get_type_name(@)",
                            header: "AIS_Shape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Shape::get_type_descriptor(@)", header: "AIS_Shape.hxx".}
proc dynamicType*(this: AIS_Shape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Shape.hxx".}
proc constructAIS_Shape*(shap: TopoDS_Shape): AIS_Shape {.constructor,
    importcpp: "AIS_Shape(@)", header: "AIS_Shape.hxx".}
proc signature*(this: AIS_Shape): int {.noSideEffect, importcpp: "Signature",
                                    header: "AIS_Shape.hxx".}
proc `type`*(this: AIS_Shape): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Shape.hxx".}
proc acceptShapeDecomposition*(this: AIS_Shape): bool {.noSideEffect,
    importcpp: "AcceptShapeDecomposition", header: "AIS_Shape.hxx".}
proc acceptDisplayMode*(this: AIS_Shape; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_Shape.hxx".}
proc shape*(this: AIS_Shape): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "AIS_Shape.hxx".}
proc setShape*(this: var AIS_Shape; theShape: TopoDS_Shape) {.importcpp: "SetShape",
    header: "AIS_Shape.hxx".}
proc set*(this: var AIS_Shape; theShape: TopoDS_Shape) {.importcpp: "Set",
    header: "AIS_Shape.hxx".}
proc setOwnDeviationCoefficient*(this: var AIS_Shape): bool {.
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc setOwnDeviationAngle*(this: var AIS_Shape): bool {.
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc setOwnDeviationCoefficient*(this: var AIS_Shape; aCoefficient: float) {.
    importcpp: "SetOwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc setAngleAndDeviation*(this: var AIS_Shape; anAngle: float) {.
    importcpp: "SetAngleAndDeviation", header: "AIS_Shape.hxx".}
proc userAngle*(this: AIS_Shape): float {.noSideEffect, importcpp: "UserAngle",
                                      header: "AIS_Shape.hxx".}
proc setOwnDeviationAngle*(this: var AIS_Shape; anAngle: float) {.
    importcpp: "SetOwnDeviationAngle", header: "AIS_Shape.hxx".}
proc ownDeviationCoefficient*(this: AIS_Shape; aCoefficient: var float;
                             aPreviousCoefficient: var float): bool {.noSideEffect,
    importcpp: "OwnDeviationCoefficient", header: "AIS_Shape.hxx".}
proc ownDeviationAngle*(this: AIS_Shape; anAngle: var float; aPreviousAngle: var float): bool {.
    noSideEffect, importcpp: "OwnDeviationAngle", header: "AIS_Shape.hxx".}
proc setTypeOfHLR*(this: var AIS_Shape; theTypeOfHLR: Prs3dTypeOfHLR) {.
    importcpp: "SetTypeOfHLR", header: "AIS_Shape.hxx".}
proc typeOfHLR*(this: AIS_Shape): Prs3dTypeOfHLR {.noSideEffect,
    importcpp: "TypeOfHLR", header: "AIS_Shape.hxx".}
proc setColor*(this: var AIS_Shape; theColor: QuantityColor) {.importcpp: "SetColor",
    header: "AIS_Shape.hxx".}
proc unsetColor*(this: var AIS_Shape) {.importcpp: "UnsetColor",
                                    header: "AIS_Shape.hxx".}
proc setWidth*(this: var AIS_Shape; aValue: float) {.importcpp: "SetWidth",
    header: "AIS_Shape.hxx".}
proc unsetWidth*(this: var AIS_Shape) {.importcpp: "UnsetWidth",
                                    header: "AIS_Shape.hxx".}
proc setMaterial*(this: var AIS_Shape; aName: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_Shape.hxx".}
proc unsetMaterial*(this: var AIS_Shape) {.importcpp: "UnsetMaterial",
                                       header: "AIS_Shape.hxx".}
proc setTransparency*(this: var AIS_Shape; aValue: float = 0.6) {.
    importcpp: "SetTransparency", header: "AIS_Shape.hxx".}
proc unsetTransparency*(this: var AIS_Shape) {.importcpp: "UnsetTransparency",
    header: "AIS_Shape.hxx".}
proc boundingBox*(this: var AIS_Shape): BndBox {.importcpp: "BoundingBox",
    header: "AIS_Shape.hxx".}
## using statement

proc color*(this: AIS_Shape; aColor: var QuantityColor) {.noSideEffect,
    importcpp: "Color", header: "AIS_Shape.hxx".}
proc material*(this: AIS_Shape): Graphic3dNameOfMaterial {.noSideEffect,
    importcpp: "Material", header: "AIS_Shape.hxx".}
proc transparency*(this: AIS_Shape): float {.noSideEffect, importcpp: "Transparency",
    header: "AIS_Shape.hxx".}
proc selectionType*(theSelMode: int): TopAbsShapeEnum {.
    importcpp: "AIS_Shape::SelectionType(@)", header: "AIS_Shape.hxx".}
proc selectionMode*(theShapeType: TopAbsShapeEnum): int {.
    importcpp: "AIS_Shape::SelectionMode(@)", header: "AIS_Shape.hxx".}
proc textureRepeatUV*(this: AIS_Shape): Pnt2d {.noSideEffect,
    importcpp: "TextureRepeatUV", header: "AIS_Shape.hxx".}
proc setTextureRepeatUV*(this: var AIS_Shape; theRepeatUV: Pnt2d) {.
    importcpp: "SetTextureRepeatUV", header: "AIS_Shape.hxx".}
proc textureOriginUV*(this: AIS_Shape): Pnt2d {.noSideEffect,
    importcpp: "TextureOriginUV", header: "AIS_Shape.hxx".}
proc setTextureOriginUV*(this: var AIS_Shape; theOriginUV: Pnt2d) {.
    importcpp: "SetTextureOriginUV", header: "AIS_Shape.hxx".}
proc textureScaleUV*(this: AIS_Shape): Pnt2d {.noSideEffect,
    importcpp: "TextureScaleUV", header: "AIS_Shape.hxx".}
proc setTextureScaleUV*(this: var AIS_Shape; theScaleUV: Pnt2d) {.
    importcpp: "SetTextureScaleUV", header: "AIS_Shape.hxx".}
proc computeHlrPresentation*(theProjector: Handle[Graphic3dCamera];
                            thePrs: Handle[Prs3dPresentation];
                            theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "AIS_Shape::computeHlrPresentation(@)", header: "AIS_Shape.hxx".}
proc dumpJson*(this: AIS_Shape; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "AIS_Shape.hxx".}
discard "forward decl of AIS_Shape"
type
  HandleAIS_Shape* = Handle[AIS_Shape]


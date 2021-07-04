##  Created by: Anastasia BORISOVA
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  AIS_Animation, AIS_InteractiveContext, ../gp/gp_TrsfNLerp

## ! Animation defining object transformation.

type
  AIS_AnimationObject* {.importcpp: "AIS_AnimationObject",
                        header: "AIS_AnimationObject.hxx", bycopy.} = object of AIS_Animation ##
                                                                                       ## !
                                                                                       ## Constructor
                                                                                       ## with
                                                                                       ## initialization.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Note
                                                                                       ## that
                                                                                       ## start/end
                                                                                       ## transformations
                                                                                       ## specify
                                                                                       ## exactly
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## of
                                                                                       ## the
                                                                                       ## object,
                                                                                       ##
                                                                                       ## !
                                                                                       ## not
                                                                                       ## the
                                                                                       ## transformation
                                                                                       ## to
                                                                                       ## be
                                                                                       ## applied
                                                                                       ## to
                                                                                       ## existing
                                                                                       ## local
                                                                                       ## transformation.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theAnimationName
                                                                                       ## animation
                                                                                       ## identifier
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theContext
                                                                                       ## interactive
                                                                                       ## context
                                                                                       ## where
                                                                                       ## object
                                                                                       ## have
                                                                                       ## been
                                                                                       ## displayed
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theObject
                                                                                       ## object
                                                                                       ## to
                                                                                       ## apply
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTrsfStart
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## at
                                                                                       ## the
                                                                                       ## start
                                                                                       ## of
                                                                                       ## animation
                                                                                       ## (e.g.
                                                                                       ## theObject->LocalTransformation())
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTrsfEnd
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## at
                                                                                       ## the
                                                                                       ## end
                                                                                       ## of
                                                                                       ## animation
                                                                                       ##
                                                                                       ## !
                                                                                       ## Update
                                                                                       ## the
                                                                                       ## progress.
    ## !< context where object is displayed
    ## !< presentation object to set location
    ## !< interpolation tool

  AIS_AnimationObjectbase_type* = AIS_Animation

proc get_type_name*(): cstring {.importcpp: "AIS_AnimationObject::get_type_name(@)",
                              header: "AIS_AnimationObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_AnimationObject::get_type_descriptor(@)",
    header: "AIS_AnimationObject.hxx".}
proc DynamicType*(this: AIS_AnimationObject): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_AnimationObject.hxx".}
proc constructAIS_AnimationObject*(theAnimationName: TCollection_AsciiString;
                                  theContext: handle[AIS_InteractiveContext];
                                  theObject: handle[AIS_InteractiveObject];
                                  theTrsfStart: gp_Trsf; theTrsfEnd: gp_Trsf): AIS_AnimationObject {.
    constructor, importcpp: "AIS_AnimationObject(@)",
    header: "AIS_AnimationObject.hxx".}
discard "forward decl of AIS_AnimationObject"
type
  Handle_AIS_AnimationObject* = handle[AIS_AnimationObject]

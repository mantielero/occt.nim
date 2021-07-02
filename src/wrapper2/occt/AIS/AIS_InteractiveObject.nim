##  Created on: 1996-12-11
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

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of Prs3d_BasicAspect"
discard "forward decl of Bnd_Box"
discard "forward decl of V3d_View"
type
  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                          header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgrSelectableObject ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## kind
                                                                                                       ## of
                                                                                                       ## Interactive
                                                                                                       ## Object;
                                                                                                       ## AIS_KOI_None
                                                                                                       ## by
                                                                                                       ## default.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## context
                                                                                                       ## pointer
                                                                                                       ## to
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## context.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## The
                                                                                                       ## TypeOfPresention3d
                                                                                                       ## means
                                                                                                       ## that
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## object
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## may
                                                                                                       ## have
                                                                                                       ## a
                                                                                                       ## presentation
                                                                                                       ## dependant
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## view
                                                                                                       ## of
                                                                                                       ## Display.
    ## !< pointer to Interactive Context, where object is currently displayed; @sa SetContext()
    ## !< application-specific owner object

  AIS_InteractiveObjectbaseType* = SelectMgrSelectableObject

proc getTypeName*(): cstring {.importcpp: "AIS_InteractiveObject::get_type_name(@)",
                            header: "AIS_InteractiveObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_InteractiveObject::get_type_descriptor(@)",
    header: "AIS_InteractiveObject.hxx".}
proc dynamicType*(this: AIS_InteractiveObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_InteractiveObject.hxx".}
proc `type`*(this: AIS_InteractiveObject): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_InteractiveObject.hxx".}
proc signature*(this: AIS_InteractiveObject): StandardInteger {.noSideEffect,
    importcpp: "Signature", header: "AIS_InteractiveObject.hxx".}
proc redisplay*(this: var AIS_InteractiveObject;
               allModes: StandardBoolean = standardFalse) {.importcpp: "Redisplay",
    header: "AIS_InteractiveObject.hxx".}
proc hasInteractiveContext*(this: AIS_InteractiveObject): StandardBoolean {.
    noSideEffect, importcpp: "HasInteractiveContext",
    header: "AIS_InteractiveObject.hxx".}
proc interactiveContext*(this: AIS_InteractiveObject): ptr AIS_InteractiveContext {.
    noSideEffect, importcpp: "InteractiveContext",
    header: "AIS_InteractiveObject.hxx".}
proc setContext*(this: var AIS_InteractiveObject;
                aCtx: Handle[AIS_InteractiveContext]) {.importcpp: "SetContext",
    header: "AIS_InteractiveObject.hxx".}
proc hasOwner*(this: AIS_InteractiveObject): StandardBoolean {.noSideEffect,
    importcpp: "HasOwner", header: "AIS_InteractiveObject.hxx".}
proc getOwner*(this: AIS_InteractiveObject): Handle[StandardTransient] {.
    noSideEffect, importcpp: "GetOwner", header: "AIS_InteractiveObject.hxx".}
proc setOwner*(this: var AIS_InteractiveObject;
              theApplicativeEntity: Handle[StandardTransient]) {.
    importcpp: "SetOwner", header: "AIS_InteractiveObject.hxx".}
proc clearOwner*(this: var AIS_InteractiveObject) {.importcpp: "ClearOwner",
    header: "AIS_InteractiveObject.hxx".}
proc processDragging*(this: var AIS_InteractiveObject;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView];
                     theOwner: Handle[SelectMgrEntityOwner];
                     theDragFrom: Graphic3dVec2i; theDragTo: Graphic3dVec2i;
                     theAction: AIS_DragAction): StandardBoolean {.
    importcpp: "ProcessDragging", header: "AIS_InteractiveObject.hxx".}
proc getContext*(this: AIS_InteractiveObject): Handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "GetContext", header: "AIS_InteractiveObject.hxx".}
proc hasPresentation*(this: AIS_InteractiveObject): StandardBoolean {.noSideEffect,
    importcpp: "HasPresentation", header: "AIS_InteractiveObject.hxx".}
proc presentation*(this: AIS_InteractiveObject): Handle[Prs3dPresentation] {.
    noSideEffect, importcpp: "Presentation", header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  ! Sets the graphic basic aspect to the current presentation. Standard_DEPRECATED ( Deprecated method, results might be undefined ) void SetAspect ( const opencascade :: handle < Prs3d_BasicAspect > [end of template] & anAspect ) ;
## Error: identifier expected, but got: Deprecated method, results might be undefined!!!

proc dumpJson*(this: AIS_InteractiveObject; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AIS_InteractiveObject.hxx".}
discard "forward decl of AIS_InteractiveObject"
type
  HandleAIS_InteractiveObject* = Handle[AIS_InteractiveObject]



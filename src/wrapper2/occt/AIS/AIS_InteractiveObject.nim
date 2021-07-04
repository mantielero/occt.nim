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

import
  AIS_KindOfInteractive, AIS_DragAction, ../SelectMgr/SelectMgr_SelectableObject

discard "forward decl of AIS_InteractiveContext"
discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of Prs3d_BasicAspect"
discard "forward decl of Bnd_Box"
discard "forward decl of V3d_View"
type
  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                          header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgr_SelectableObject ##
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

  AIS_InteractiveObjectbase_type* = SelectMgr_SelectableObject

proc get_type_name*(): cstring {.importcpp: "AIS_InteractiveObject::get_type_name(@)",
                              header: "AIS_InteractiveObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_InteractiveObject::get_type_descriptor(@)",
    header: "AIS_InteractiveObject.hxx".}
proc DynamicType*(this: AIS_InteractiveObject): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "AIS_InteractiveObject.hxx".}
proc Type*(this: AIS_InteractiveObject): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_InteractiveObject.hxx".}
proc Signature*(this: AIS_InteractiveObject): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_InteractiveObject.hxx".}
proc Redisplay*(this: var AIS_InteractiveObject;
               AllModes: Standard_Boolean = Standard_False) {.
    importcpp: "Redisplay", header: "AIS_InteractiveObject.hxx".}
proc HasInteractiveContext*(this: AIS_InteractiveObject): Standard_Boolean {.
    noSideEffect, importcpp: "HasInteractiveContext",
    header: "AIS_InteractiveObject.hxx".}
proc InteractiveContext*(this: AIS_InteractiveObject): ptr AIS_InteractiveContext {.
    noSideEffect, importcpp: "InteractiveContext",
    header: "AIS_InteractiveObject.hxx".}
proc SetContext*(this: var AIS_InteractiveObject;
                aCtx: handle[AIS_InteractiveContext]) {.importcpp: "SetContext",
    header: "AIS_InteractiveObject.hxx".}
proc HasOwner*(this: AIS_InteractiveObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasOwner", header: "AIS_InteractiveObject.hxx".}
proc GetOwner*(this: AIS_InteractiveObject): handle[Standard_Transient] {.
    noSideEffect, importcpp: "GetOwner", header: "AIS_InteractiveObject.hxx".}
proc SetOwner*(this: var AIS_InteractiveObject;
              theApplicativeEntity: handle[Standard_Transient]) {.
    importcpp: "SetOwner", header: "AIS_InteractiveObject.hxx".}
proc ClearOwner*(this: var AIS_InteractiveObject) {.importcpp: "ClearOwner",
    header: "AIS_InteractiveObject.hxx".}
proc ProcessDragging*(this: var AIS_InteractiveObject;
                     theCtx: handle[AIS_InteractiveContext];
                     theView: handle[V3d_View];
                     theOwner: handle[SelectMgr_EntityOwner];
                     theDragFrom: Graphic3d_Vec2i; theDragTo: Graphic3d_Vec2i;
                     theAction: AIS_DragAction): Standard_Boolean {.
    importcpp: "ProcessDragging", header: "AIS_InteractiveObject.hxx".}
proc GetContext*(this: AIS_InteractiveObject): handle[AIS_InteractiveContext] {.
    noSideEffect, importcpp: "GetContext", header: "AIS_InteractiveObject.hxx".}
proc HasPresentation*(this: AIS_InteractiveObject): Standard_Boolean {.noSideEffect,
    importcpp: "HasPresentation", header: "AIS_InteractiveObject.hxx".}
proc Presentation*(this: AIS_InteractiveObject): handle[Prs3d_Presentation] {.
    noSideEffect, importcpp: "Presentation", header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  ! Sets the graphic basic aspect to the current presentation. Standard_DEPRECATED ( Deprecated method, results might be undefined ) void SetAspect ( const opencascade :: handle < Prs3d_BasicAspect > [end of template] & anAspect ) ;
## Error: identifier expected, but got: Deprecated method, results might be undefined!!!

proc DumpJson*(this: AIS_InteractiveObject; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "AIS_InteractiveObject.hxx".}
discard "forward decl of AIS_InteractiveObject"
type
  Handle_AIS_InteractiveObject* = handle[AIS_InteractiveObject]

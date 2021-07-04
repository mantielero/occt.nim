##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  ../TDocStd/TDocStd_Application, TObj_Common, ../Message/Message_Gravity,
  ../Message/Message_Messenger, ../TColStd/TColStd_SequenceOfExtendedString

## !
## ! This is a base class for OCAF based TObj models
## !  with declared virtual methods
## !

type
  TObj_Application* {.importcpp: "TObj_Application",
                     header: "TObj_Application.hxx", bycopy.} = object of TDocStd_Application ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## static
                                                                                       ## instance
                                                                                       ## of
                                                                                       ## the
                                                                                       ## application
                                                                                       ##
                                                                                       ## *
                                                                                       ##
                                                                                       ## Load/Save
                                                                                       ## support
                                                                                       ##
                                                                                       ##
                                                                                       ## !
                                                                                       ## Saving
                                                                                       ## the
                                                                                       ## OCAF
                                                                                       ## document
                                                                                       ## to
                                                                                       ## a
                                                                                       ## file
                                                                                       ##
                                                                                       ## *
                                                                                       ##
                                                                                       ## Redefined
                                                                                       ## OCAF
                                                                                       ## methods
                                                                                       ##
                                                                                       ##
                                                                                       ## !
                                                                                       ## Return
                                                                                       ## name
                                                                                       ## of
                                                                                       ## resource
                                                                                       ## (i.e.
                                                                                       ## "TObj")
                                                                                       ##
                                                                                       ## *
                                                                                       ##
                                                                                       ## Constructor
                                                                                       ##
                                                                                       ##
                                                                                       ## !
                                                                                       ## Constructor
                                                                                       ## is
                                                                                       ## protected.
                                                                                       ## Use
                                                                                       ## method
                                                                                       ## GetInstance()
                                                                                       ## method
                                                                                       ## to
                                                                                       ## obtain
                                                                                       ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## static
                                                                                       ## instance
                                                                                       ## of
                                                                                       ## the
                                                                                       ## object
                                                                                       ## (or
                                                                                       ## derive
                                                                                       ## your
                                                                                       ## own
                                                                                       ## application)
                                                                                       ##
                                                                                       ## *
                                                                                       ##
                                                                                       ## Fields
                                                                                       ##
                                                                                       ##
                                                                                       ## !
                                                                                       ## CASCADE
                                                                                       ## RTTI
    ## !< error flag
    ## !< verbose flag
    ## !< messenger


proc GetInstance*(): handle[TObj_Application] {.
    importcpp: "TObj_Application::GetInstance(@)", header: "TObj_Application.hxx".}
proc Messenger*(this: var TObj_Application): var handle[Message_Messenger] {.
    importcpp: "Messenger", header: "TObj_Application.hxx".}
proc SaveDocument*(this: var TObj_Application;
                  theSourceDoc: handle[TDocStd_Document];
                  theTargetFile: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "SaveDocument", header: "TObj_Application.hxx".}
proc LoadDocument*(this: var TObj_Application;
                  theSourceFile: TCollection_ExtendedString;
                  theTargetDoc: var handle[TDocStd_Document]): Standard_Boolean {.
    importcpp: "LoadDocument", header: "TObj_Application.hxx".}
proc CreateNewDocument*(this: var TObj_Application;
                       theDoc: var handle[TDocStd_Document];
                       theFormat: TCollection_ExtendedString): Standard_Boolean {.
    importcpp: "CreateNewDocument", header: "TObj_Application.hxx".}
proc ErrorMessage*(this: var TObj_Application; theMsg: TCollection_ExtendedString;
                  theLevel: Message_Gravity) {.importcpp: "ErrorMessage",
    header: "TObj_Application.hxx".}
proc ErrorMessage*(this: var TObj_Application; theMsg: TCollection_ExtendedString) {.
    importcpp: "ErrorMessage", header: "TObj_Application.hxx".}
proc SetVerbose*(this: var TObj_Application; isVerbose: Standard_Boolean) {.
    importcpp: "SetVerbose", header: "TObj_Application.hxx".}
proc IsVerbose*(this: TObj_Application): Standard_Boolean {.noSideEffect,
    importcpp: "IsVerbose", header: "TObj_Application.hxx".}
proc DumpJson*(this: TObj_Application; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TObj_Application.hxx".}
proc ResourcesName*(this: var TObj_Application): Standard_CString {.
    importcpp: "ResourcesName", header: "TObj_Application.hxx".}
type
  TObj_Applicationbase_type* = TDocStd_Application

proc get_type_name*(): cstring {.importcpp: "TObj_Application::get_type_name(@)",
                              header: "TObj_Application.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_Application::get_type_descriptor(@)",
    header: "TObj_Application.hxx".}
proc DynamicType*(this: TObj_Application): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_Application.hxx".}
## ! Define handle class

discard "forward decl of TObj_Application"
type
  Handle_TObj_Application* = handle[TObj_Application]

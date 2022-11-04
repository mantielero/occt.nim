##  Created on: 2011-03-18
##  Created by: Anton POLETAEV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_Transient"
discard "forward decl of OpenGl_Context"
type
  OpenGlResource* {.importcpp: "OpenGl_Resource", header: "OpenGl_Resource.hxx",
                   bycopy.} = object of StandardTransient ## ! Empty constructor
                                                     ## ! Copy should be performed only within Handles!
                                                     ##  Type definition


proc newOpenGlResource*(): OpenGlResource {.cdecl, constructor,
    importcpp: "OpenGl_Resource(@)", dynlib: tkkxbase.}
proc destroyOpenGlResource*(this: var OpenGlResource) {.cdecl,
    importcpp: "#.~OpenGl_Resource()", dynlib: tkkxbase.}
proc release*(this: var OpenGlResource; theGlCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlResource): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlResource; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}
type
  HandleOpenGlResource* = Handle[OpenGlResource]

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

## ! Diagnostic info categories bit flags.

type
  Graphic3dDiagnosticInfo* {.size: sizeof(cint),
                            importcpp: "Graphic3d_DiagnosticInfo",
                            header: "Graphic3d_DiagnosticInfo.hxx".} = enum
    Graphic3dDiagnosticInfoDevice = 0x001, ## !< device / vendor / version information
    Graphic3dDiagnosticInfoFrameBuffer = 0x002, ## !< framebuffer information
    Graphic3dDiagnosticInfoLimits = 0x004, ## !< hardware limits
    Graphic3dDiagnosticInfoMemory = 0x008, ## !< memory counters
    Graphic3dDiagnosticInfoNativePlatform = 0x010, ## !< native platform API information (e.g. WGL / GLX / EGL)
    Graphic3dDiagnosticInfoExtensions = 0x020, ## !< vendor extension list (usually very long)
                                            ##  groups
    Graphic3dDiagnosticInfoShort = graphic3dDiagnosticInfoDevice or
        graphic3dDiagnosticInfoFrameBuffer or graphic3dDiagnosticInfoLimits, ## !< minimal information
    Graphic3dDiagnosticInfoBasic = graphic3dDiagnosticInfoShort or
        graphic3dDiagnosticInfoNativePlatform or graphic3dDiagnosticInfoMemory, ## !< basic information, without extension list
    Graphic3dDiagnosticInfoComplete = graphic3dDiagnosticInfoBasic or
        graphic3dDiagnosticInfoExtensions



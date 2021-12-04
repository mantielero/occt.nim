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
    graphic3dDiagnosticInfoDevice = 0x001, ## !< device / vendor / version information
    graphic3dDiagnosticInfoFrameBuffer = 0x002, ## !< framebuffer information
    graphic3dDiagnosticInfoLimits = 0x004, ## !< hardware limits
    graphic3dDiagnosticInfoMemory = 0x008, ## !< memory counters
    graphic3dDiagnosticInfoNativePlatform = 0x010, ## !< native platform API information (e.g. WGL / GLX / EGL)
    graphic3dDiagnosticInfoExtensions = 0x020 ## !< vendor extension list (usually very long)
                                            ##  groups
const
  graphic3dDiagnosticInfoShort = (graphic3dDiagnosticInfoDevice.int or
        graphic3dDiagnosticInfoFrameBuffer.int or graphic3dDiagnosticInfoLimits.int).Graphic3dDiagnosticInfo ## !< minimal information
  graphic3dDiagnosticInfoBasic = (graphic3dDiagnosticInfoShort.int or
        graphic3dDiagnosticInfoNativePlatform.int or graphic3dDiagnosticInfoMemory.int).Graphic3dDiagnosticInfo ## !< basic information, without extension list
  graphic3dDiagnosticInfoComplete = (graphic3dDiagnosticInfoBasic.int or
        graphic3dDiagnosticInfoExtensions.int).Graphic3dDiagnosticInfo


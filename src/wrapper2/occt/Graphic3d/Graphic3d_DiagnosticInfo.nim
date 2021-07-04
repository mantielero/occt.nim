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
  Graphic3d_DiagnosticInfo* {.size: sizeof(cint),
                             importcpp: "Graphic3d_DiagnosticInfo",
                             header: "Graphic3d_DiagnosticInfo.hxx".} = enum
    Graphic3d_DiagnosticInfo_Device = 0x001, ## !< device / vendor / version information
    Graphic3d_DiagnosticInfo_FrameBuffer = 0x002, ## !< framebuffer information
    Graphic3d_DiagnosticInfo_Limits = 0x004, ## !< hardware limits
    Graphic3d_DiagnosticInfo_Memory = 0x008, ## !< memory counters
    Graphic3d_DiagnosticInfo_NativePlatform = 0x010, ## !< native platform API information (e.g. WGL / GLX / EGL)
    Graphic3d_DiagnosticInfo_Extensions = 0x020, ## !< vendor extension list (usually very long)
                                              ##  groups
    Graphic3d_DiagnosticInfo_Short = Graphic3d_DiagnosticInfo_Device or
        Graphic3d_DiagnosticInfo_FrameBuffer or Graphic3d_DiagnosticInfo_Limits, ## !< minimal information
    Graphic3d_DiagnosticInfo_Basic = Graphic3d_DiagnosticInfo_Short or
        Graphic3d_DiagnosticInfo_NativePlatform or
        Graphic3d_DiagnosticInfo_Memory, ## !< basic information, without extension list
    Graphic3d_DiagnosticInfo_Complete = Graphic3d_DiagnosticInfo_Basic or
        Graphic3d_DiagnosticInfo_Extensions


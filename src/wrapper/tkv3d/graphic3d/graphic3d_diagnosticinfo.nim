{.hints:off.}
import graphic3d_types




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

const
  graphic3dDiagnosticInfoShort = (graphic3dDiagnosticInfoDevice.int or
        graphic3dDiagnosticInfoFrameBuffer.int or graphic3dDiagnosticInfoLimits.int).Graphic3dDiagnosticInfo ## !< minimal information
  graphic3dDiagnosticInfoBasic = (graphic3dDiagnosticInfoShort.int or
        graphic3dDiagnosticInfoNativePlatform.int or graphic3dDiagnosticInfoMemory.int).Graphic3dDiagnosticInfo ## !< basic information, without extension list
  graphic3dDiagnosticInfoComplete = (graphic3dDiagnosticInfoBasic.int or
        graphic3dDiagnosticInfoExtensions.int).Graphic3dDiagnosticInfo





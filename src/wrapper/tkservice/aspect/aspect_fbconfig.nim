##  Copyright (c) 2015 OPEN CASCADE SAS
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

when not defined(win32) and (not defined(apple) or defined(macosx_Use_Glx)) and
    not defined(android) and not defined(qnx) and not defined(emscripten):
  type
    GLXFBConfig* = ptr gLXFBConfigRec
    AspectFBConfig* = GLXFBConfig
  ##  GLXFBConfig* under UNIX
else:
  type
    AspectFBConfig* = pointer
  ##  unused on other systems
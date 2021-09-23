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

when not defined(_WIN32) and (not defined(__APPLE__) or defined(MACOSX_USE_GLX)) and
    not defined(__ANDROID__) and not defined(__QNX__) and
    not defined(__EMSCRIPTEN__):
  type
    GLXFBConfig* = ptr __GLXFBConfigRec
    Aspect_FBConfig* = GLXFBConfig
  ##  GLXFBConfig* under UNIX
else:
  type
    Aspect_FBConfig* = pointer
  ##  unused on other systems
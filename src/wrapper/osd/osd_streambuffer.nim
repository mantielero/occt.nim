import ../standard/standard_types
import osd_types



##  Copyright (c) 2021 OPEN CASCADE SAS
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

## ! A file stream implementation initialized from std::shared_ptr<std::streambuf>.



proc newOSD_StreamBuffer*[T](theUrl: string; theBuffer: SharedPtr[Streambuf]): OSD_StreamBuffer[
    T] {.cdecl, constructor, importcpp: "OSD_StreamBuffer<\'*0>(@)",
        header: "OSD_StreamBuffer.hxx".}
proc url*[T](this: OSD_StreamBuffer[T]): string {.noSideEffect, cdecl,
    importcpp: "Url", header: "OSD_StreamBuffer.hxx".}



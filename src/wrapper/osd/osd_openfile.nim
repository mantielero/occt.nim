

##  Copyright (c) 2014 OPEN CASCADE SAS
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
## ! Auxiulary file to provide Unicode compatibility for file open functionality
## ! Names of files are encoded as UTF-16 strings

when defined(cplusplus):
  when defined(win32) and defined(glibcxx):
    discard
  ## ! Function opens the file.
  ## ! @param theName name of file encoded in UTF-16
  ## ! @param theMode opening mode
  ## ! @return file handle of opened file
  proc oSD_OpenFile*(theName: TCollectionExtendedString; theMode: cstring): ptr File {.
      cdecl, importcpp: "OSD_OpenFile(@)", header: "OSD_OpenFile.hxx".}
  ## ! Function retrieves file timestamp.
  ## ! @param theName name of file encoded in UTF-8
  ## ! @return stat.st_ctime value
  proc oSD_FileStatCTime*(theName: cstring): StandardTime {.cdecl,
      importcpp: "OSD_FileStatCTime(@)", header: "OSD_OpenFile.hxx".}
  ## ! Open file descriptor for specified UTF-16 file path.
  ## ! @param theName name of file encoded in UTF-16
  ## ! @param theMode opening mode
  ## ! @return file descriptor on success or -1 on error
  proc oSD_OpenFileDescriptor*(theName: TCollectionExtendedString;
                              theMode: OSD_OpenMode): cint {.cdecl,
      importcpp: "OSD_OpenFileDescriptor(@)", header: "OSD_OpenFile.hxx".}
  ## ! Function opens the file buffer.
  ## ! @param theFileBuf file buffer to open
  ## ! @param theName name of file encoded in UTF-16
  ## ! @param theMode opening mode
  ## ! @return true if success, false otherwise
  proc oSD_OpenStream*(theFileBuf: var Filebuf; theName: TCollectionExtendedString;
                      theMode: OSD_OpenMode): bool {.cdecl.} =
    discard

  ## ! Function opens the file stream.
  ## ! @param theStream stream to open
  ## ! @param theName name of file encoded in UTF-16
  ## ! @param theMode opening mode
  proc oSD_OpenStream*[T](theStream: var T; theName: TCollectionExtendedString;
                         theMode: OSD_OpenMode) {.cdecl.} =
    discard

  ## ! Function opens the file stream.
  ## ! @param theStream stream to open
  ## ! @param theName name of file encoded in UTF-8
  ## ! @param theMode opening mode
  proc oSD_OpenStream*[T](theStream: var T; theName: cstring; theMode: OSD_OpenMode) {.cdecl.} =
    discard

  ##  extern "C" {
  ##  #endif // __cplusplus
  ##
  ##  //! Function opens the file.
  ##  //! @param theName name of file encoded in UTF-8
  ##  //! @param theMode opening mode
  ##  //! @return file handle of opened file
  ##  Standard_EXPORT FILE* OSD_OpenFile (const char* theName, const char* theMode);
  ##
  ##  #if defined(__cplusplus)
  ##  }

##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when not defined(_INC_WINDOWS):
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   discard
type
  Dir_Response* {.size: sizeof(cint), importcpp: "DIR_RESPONSE",
                 header: "OSD_WNT.hxx".} = enum
    DIR_ABORT, DIR_RETRY, DIR_IGNORE


const
  FLAG_READ_PIPE* = 0x00000001
  FLAG_EOF* = 0x00000002
  FLAG_FILE* = 0x00000004
  FLAG_DIRECTORY* = 0x00000008
  FLAG_PIPE* = 0x00000010
  FLAG_SOCKET* = 0x00000020
  FLAG_NAMED_PIPE* = 0x00000040
  FLAG_DEVICE* = 0x00000080
  FLAG_TYPE* = 0x0000007C

##  2 macros modified for VisualAge
## #define LODWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) & 0x00000000FFFFFFFF   )
## #define HIDWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) >> 32                  )

template lodword*(a: untyped): untyped =
  (dword)(((int64)(a)) and 0x00000000FFFFFFFF'i64)

template hidword*(a: untyped): untyped =
  (dword)(((int64)(a)) shr 32)

type
  File_Ace* {.importcpp: "FILE_ACE", header: "OSD_WNT.hxx", bycopy.} = object
    header* {.importc: "header".}: Ace_Header
    dwMask* {.importc: "dwMask".}: Dword
    pSID* {.importc: "pSID".}: Psid

  Pfile_Ace* = ptr File_Ace
  Move_Dir_Proc* = proc (a1: Lpcwstr; a2: Lpcwstr)
  Copy_Dir_Proc* = proc (a1: Lpcwstr; a2: Lpcwstr)
  Delete_Dir_Proc* = proc (a1: Lpcwstr)
  Response_Dir_Proc* = proc (a1: Lpcwstr): Dir_Response

template get_Sid*(pACE: untyped): untyped =
  ((psid)((cast[Pbyte](pACE)) + sizeof((ace_Header)) + sizeof((dword))))

template get_Msk*(pACE: untyped): untyped =
  ((pdword)((cast[Pbyte](pACE)) + sizeof((ace_Header))))

proc allocSD*(): Psecurity_Descriptor {.importcpp: "AllocSD(@)",
                                     header: "OSD_WNT.hxx".}
proc freeSD*(a1: Psecurity_Descriptor) {.importcpp: "FreeSD(@)",
                                      header: "OSD_WNT.hxx".}
proc getTokenInformationEx*(a1: Handle; a2: Token_Information_Class): Lpvoid {.
    importcpp: "GetTokenInformationEx(@)", header: "OSD_WNT.hxx".}
proc freeTokenInformation*(a1: Lpvoid) {.importcpp: "FreeTokenInformation(@)",
                                      header: "OSD_WNT.hxx".}
proc getFileSecurityEx*(a1: Lpcwstr; a2: Security_Information): Psecurity_Descriptor {.
    importcpp: "GetFileSecurityEx(@)", header: "OSD_WNT.hxx".}
proc freeFileSecurity*(a1: Psecurity_Descriptor) {.
    importcpp: "FreeFileSecurity(@)", header: "OSD_WNT.hxx".}
proc createAcl*(a1: Dword): Pacl {.importcpp: "CreateAcl(@)", header: "OSD_WNT.hxx".}
proc freeAcl*(a1: Pacl) {.importcpp: "FreeAcl(@)", header: "OSD_WNT.hxx".}
proc predefinedSid*(a1: Psid): Bool {.importcpp: "PredefinedSid(@)",
                                  header: "OSD_WNT.hxx".}
proc ntPredefinedSid*(a1: Psid): Bool {.importcpp: "NtPredefinedSid(@)",
                                    header: "OSD_WNT.hxx".}
proc adminSid*(): Psid {.importcpp: "AdminSid(@)", header: "OSD_WNT.hxx".}
proc worldSid*(): Psid {.importcpp: "WorldSid(@)", header: "OSD_WNT.hxx".}
proc interactiveSid*(): Psid {.importcpp: "InteractiveSid(@)", header: "OSD_WNT.hxx".}
proc networkSid*(): Psid {.importcpp: "NetworkSid(@)", header: "OSD_WNT.hxx".}
proc localSid*(): Psid {.importcpp: "LocalSid(@)", header: "OSD_WNT.hxx".}
proc dialupSid*(): Psid {.importcpp: "DialupSid(@)", header: "OSD_WNT.hxx".}
proc batchSid*(): Psid {.importcpp: "BatchSid(@)", header: "OSD_WNT.hxx".}
proc creatorOwnerSid*(): Psid {.importcpp: "CreatorOwnerSid(@)",
                             header: "OSD_WNT.hxx".}
proc nullSid*(): Psid {.importcpp: "NullSid(@)", header: "OSD_WNT.hxx".}
proc ntSid*(): Psid {.importcpp: "NtSid(@)", header: "OSD_WNT.hxx".}
proc allocAccessAllowedAce*(a1: Dword; a2: Byte; a3: Psid): Pvoid {.
    importcpp: "AllocAccessAllowedAce(@)", header: "OSD_WNT.hxx".}
proc freeAce*(a1: Pvoid) {.importcpp: "FreeAce(@)", header: "OSD_WNT.hxx".}
proc moveDirectory*(a1: Lpcwstr; a2: Lpcwstr): Bool {.importcpp: "MoveDirectory(@)",
    header: "OSD_WNT.hxx".}
proc copyDirectory*(a1: Lpcwstr; a2: Lpcwstr): Bool {.importcpp: "CopyDirectory(@)",
    header: "OSD_WNT.hxx".}
proc setMoveDirectoryProc*(a1: Move_Dir_Proc) {.
    importcpp: "SetMoveDirectoryProc(@)", header: "OSD_WNT.hxx".}
proc setCopyDirectoryProc*(a1: Copy_Dir_Proc) {.
    importcpp: "SetCopyDirectoryProc(@)", header: "OSD_WNT.hxx".}
proc setResponseDirectoryProc*(a1: Response_Dir_Proc) {.
    importcpp: "SetResponseDirectoryProc(@)", header: "OSD_WNT.hxx".}



























































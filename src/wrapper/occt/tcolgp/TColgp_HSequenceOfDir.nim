# /usr/include/opencascade/TColgp_HSequenceOfDir.hxx --> occt/tcolgp/TColgp_HSequenceOfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofdir = "/usr/include/opencascade/TColgp_HSequenceOfDir.hxx"
type
  TColgpHSequenceOfDir* {.importcpp: "TColgp_HSequenceOfDir",
                         header: headerTcolgphsequenceofdir, bycopy.} = object of TColgpSequenceOfDir


proc `new`*(this: var TColgpHSequenceOfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfDir::operator new",
    header: headerTcolgphsequenceofdir.}
proc `delete`*(this: var TColgpHSequenceOfDir; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfDir::operator delete",
    header: headerTcolgphsequenceofdir.}
proc `new[]`*(this: var TColgpHSequenceOfDir; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfDir::operator new[]",
    header: headerTcolgphsequenceofdir.}
proc `delete[]`*(this: var TColgpHSequenceOfDir; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfDir::operator delete[]",
    header: headerTcolgphsequenceofdir.}
proc `new`*(this: var TColgpHSequenceOfDir; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfDir::operator new",
    header: headerTcolgphsequenceofdir.}
proc `delete`*(this: var TColgpHSequenceOfDir; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfDir::operator delete",
    header: headerTcolgphsequenceofdir.}
proc `new`*(this: var TColgpHSequenceOfDir; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfDir::operator new",
    header: headerTcolgphsequenceofdir.}
proc `delete`*(this: var TColgpHSequenceOfDir; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfDir::operator delete",
    header: headerTcolgphsequenceofdir.}
proc constructTColgpHSequenceOfDir*(): TColgpHSequenceOfDir {.constructor,
    importcpp: "TColgp_HSequenceOfDir(@)", header: headerTcolgphsequenceofdir.}
proc constructTColgpHSequenceOfDir*(theOther: TColgpSequenceOfDir): TColgpHSequenceOfDir {.
    constructor, importcpp: "TColgp_HSequenceOfDir(@)",
    header: headerTcolgphsequenceofdir.}
proc sequence*(this: TColgpHSequenceOfDir): TColgpSequenceOfDir {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofdir.}
proc append*(this: var TColgpHSequenceOfDir; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofdir.}
proc append*(this: var TColgpHSequenceOfDir; theSequence: var TColgpSequenceOfDir) {.
    importcpp: "Append", header: headerTcolgphsequenceofdir.}
proc changeSequence*(this: var TColgpHSequenceOfDir): var TColgpSequenceOfDir {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofdir.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfDir , T > :: value > :: type * = 0 ) { TColgp_SequenceOfDir :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfDir::get_type_name(@)",
                            header: headerTcolgphsequenceofdir.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfDir::get_type_descriptor(@)",
    header: headerTcolgphsequenceofdir.}
proc dynamicType*(this: TColgpHSequenceOfDir): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgphsequenceofdir.}
discard "forward decl of TColgp_HSequenceOfDir"
type
  HandleTColgpHSequenceOfDir* = Handle[TColgpHSequenceOfDir]

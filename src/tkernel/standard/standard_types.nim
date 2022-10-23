{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}

type
  Handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object 
    ## ! STL-compliant typedef of contained type
    ## ! Empty constructor

  HandleelementType*[T] = T
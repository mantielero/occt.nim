# Based on...
https://techoverflow.net/2019/06/14/how-to-export-colored-step-files-in-opencascade/

https://github.com/ulikoehler/OCCUtils/blob/master/src/STEPExport.cxx

https://github.com/ulikoehler/OCCUtils/blob/master/src/ExtendedSTEP.cxx


# Example
[OCCTutils - make box and export it to STEP](https://techoverflow.net/2022/11/25/occutils-full-example-make-box-and-export-it-to-step/)

With Nim, see [step01.nim](https://github.com/mantielero/occt.nim/blob/main/examples/09%20Step%20Translator/step01.nim):
```nim
import occt

proc main =
  box(1.0, 2.0, 3.0).shape.toStep("step01.stp")

main()
```


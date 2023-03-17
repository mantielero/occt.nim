# https://replicad.xyz/docs/tutorial-overview/using-the-workbench
import occt

proc main =
    let aCylinder  = circle(20).extrude(50)
    let aBox = start(5,10).vline(15).hline(20).vline(-15).hline(-20)
               .extrude(25)

#   let aBox = rectangle(60,90).extrude(25)
    (aCylinder + aBox).toStep("replicad_02.stp")


main()

#[
  const box = drawRoundedRectangle(60, 90).sketchOnPlane().extrude(25);
  return box.fuse(cylinder);
]#
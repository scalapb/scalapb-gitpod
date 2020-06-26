PB.targets in Compile := Seq(
  scalapb.gen() -> (sourceManaged in Compile).value / "scalapb"
)

libraryDependencies += "com.thesamet.scalapb" %% "scalapb-runtime" %
scalapb.compiler.Version.scalapbVersion % "protobuf"

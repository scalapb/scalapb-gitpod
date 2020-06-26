METALS_DIR="$GITPOD_REPO_ROOT/.metals"

echo "-Dsbt.coursier.home=$METALS_DIR/coursier" >> .jvmopts
echo "-Dcoursier.cache=$METALS_DIR/coursier" >> .jvmopts
echo "-Dsbt-dir=$METALS_DIR/sbt" >> .jvmopts
echo "-Dsbt-boot=$METALS_DIR/sbt/boot" >> .jvmopts
echo "-Divy=$METALS_DIR/.ivy2" >> .jvmopts

sbt bloopInstall compile

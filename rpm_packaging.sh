
echo 'prepare tmp dir'
mkdir -p tmp/dist/

# diff
echo 'generating patch diff'
tar -xvf spice-html5-0.1.6.tar.gz -C tmp/
diff -urN tmp/spice-html5-0.1.6/ spice-html5 > tmp/change.diff 2>&1

set -e

# source
echo 'compress source'
tar cvf tmp/spice-html5.tar.gz  spice-html5

# spec
echo 'copy spec file'
cp spice-html5.spec tmp/

# build
echo 'make sure rpmbuild exists'
mkdir -p ~/rpmbuild/BUILD  ~/rpmbuild/BUILDROOT  ~/rpmbuild/RPMS  ~/rpmbuild/SOURCES  ~/rpmbuild/SPECS  ~/rpmbuild/SRPMS

cp tmp/change.diff tmp/spice-html5.tar.gz ~/rpmbuild/SOURCES/
cp tmp/spice-html5.spec ~/rpmbuild/SPECS/

echo 'building...'
rpmbuild -bb ~/rpmbuild/SPECS/spice-html5.spec
#mv ~/rpmbuild/RPMS/noarch/


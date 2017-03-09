
echo 'prepare tmp dir'
mkdir -p tmp/dist/

# diff
echo 'generating patch diff'
tar -xvf spice-html5-0.1.6.tar.gz -C tmp/
diff -urN tmp/spice-html5-0.1.6/ spice-html5 > tmp/change.diff 2>&1

set -e

# spec
echo 'copy spec file'
cp spice-html5.spec tmp/

# source
echo 'compress source'
mv tmp/spice-html5-0.1.6/ tmp/spice-html5/
cd tmp/
tar cvf spice-html5.tar.gz  spice-html5/


# build
echo 'make sure rpmbuild exists'
mkdir -p ~/rpmbuild/BUILD  ~/rpmbuild/BUILDROOT  ~/rpmbuild/RPMS  ~/rpmbuild/SOURCES  ~/rpmbuild/SPECS  ~/rpmbuild/SRPMS

cp change.diff spice-html5.tar.gz ~/rpmbuild/SOURCES/
cp spice-html5.spec ~/rpmbuild/SPECS/

echo 'building...'
rpmbuild -bb ~/rpmbuild/SPECS/spice-html5.spec


mv ~/rpmbuild/RPMS/noarch/spice-html5-custom-0.1.6-1.noarch.rpm dist/
echo 'tmp/dist/spice-html5-custom-0.1.6-1.noarch.rpm'
cd ..


Name:           spice-html5-custom
Version:        0.1.6
Release:        1
Summary:        Pure Javascript SPICE client

License:        LGPLv3
URL:            http://www.spice-space.org
# changed
Source0:        spice-html5.tar.gz
# added
Patch0:         change.diff

BuildArch:      noarch

%description
spice-html5 is a Javascript SPICE client.  This includes a simple HTML
page to initiate a session, and the client itself.  It includes a configuration
file for Apache, but should work with any web server.

%prep
%setup -q -n spice-html5
# added
%patch0 -p0


%build

%install
    find . \( -iname '*.html' -or -iname '*.js' -or -iname '*.css' \) -exec install --mode=644 -D {} %{buildroot}/%{_datadir}/novnc/spice/{} \;


%files
# changed from %{_datadir}/%{name}
%{_datadir}/novnc/spice




